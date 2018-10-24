{$A-,B-,D-,F-,G+,I-,K+,L-,N+,P+,Q-,R-,S-,T-,V+,W-,X+,Y-}
unit Enter;


interface

uses
  Messages, WinTypes, WinProcs, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, stdCtrls;

//{$R Enter.res}

type

  TMREnter = class(TComponent)
  private
    { Private declarations }
    FAbout            : string;

    FEnterEnabled     : Boolean;

    FFocusColor       : TColor;
    FFocusEnabled     : Boolean;

    FHintEnabled      : Boolean;
    FHintColor        : TColor;

    FAutoSkip         : Boolean;
    FKeyBoardArrows   : Boolean;
    FOnMessage        : TMessageEvent;
    FOnMessageRescue  : TMessageEvent;

    FOnIdle           : TIdleEvent;
    FOnIdleRescue     : TIdleEvent;

    FOnHint           : TNotifyEvent;
    FOnHintRescue     : TNotifyEvent;

    FOnHelp           : THelpEvent;
    FOnHelpRescue     : THelpEvent;

    FClassList        : TStringList;
    procedure SetClassList( AClassList: TStringList );
  protected
    { Protected declarations }
    procedure DoShowHint( Control: TWinControl );
    procedure LocalOnMessage(var Msg: TMsg; var Handled: Boolean);
    procedure LocalOnIdle(Sender: TObject; var Done: Boolean);
    procedure LocalOnHint(Sender: TObject);
    function  LocalOnHelp(Command: word; Data: Longint; var CallHelp: Boolean):Boolean;

    function CheckClassList( AClassName: string ): Boolean;
  public
    { Public declarations }
    constructor Create(AOwner:TComponent); override;
    destructor  Destroy; override;
  published
    { Published declarations }
    property About  : string          read FAbout           write FAbout stored False;
    property AutoSkip: Boolean        read FAutoSkip        write FAutoSkip;
    property EnterEnabled: Boolean    read FEnterEnabled    write FEnterEnabled;
    property ClassList: TStringList   read FClassList       write SetClassList;
    property KeyBoardArrows : Boolean read FKeyBoardArrows  write FKeyBoardArrows;
    property FocusColor : TColor      read FFocusColor      write FFocusColor;
    property FocusEnabled : Boolean   read FFocusEnabled    write FFocusEnabled;
    property HintColor : TColor       read FHintColor       write FHintColor;
    property HintEnabled : Boolean    read FHintEnabled     write FHintEnabled;

    property OnMessage: TMessageEvent read FOnMessage       write FOnMessage;
    property OnIdle:    TIdleEvent    read FOnIdle          write FOnIdle;
    property OnHint:    TNotifyEvent  read FOnHint          write FOnHint;
    property OnHelp:    THelpEvent    read FOnHelp          write FOnHelp;
  end;

implementation

uses
  ShellAPI,
  dbctrls,
  TypInfo,
{  enterreg,}
  Grids,
  DBGrids;

Var
  FHintWindow       : THintWindow;
  FFocusControl     : TWinControl;
  FActiveControl    : TWinControl;
  FFocusColorReturn : TColor;

{ GetHintWindow}

function HintWindow: THintWindow;
begin

  if FHintWindow = nil then
  begin
    FHintWindow := THintWindow.Create(Application);
    FHintWindow.Visible := False;
  end;

  Result := FHintWindow;

end;

{ Create }
constructor TMREnter.Create(AOwner:TComponent);
begin
  inherited Create(AOwner);
  FAutoSkip       := True;
  FFocusEnabled   := true;
  FKeyBoardArrows := true;
  FClassList      := TStringList.create;
  FEnterEnabled   := true;
  FFocusColor     := clYellow;
  FHintColor      := Application.HintColor;
  with FClassList do
  begin
    Add('TMaskEdit');
    Add('TEdit');
    Add('TDateEdit');
    Add('TDBEdit');
    Add('TDBCheckBox');
    Add('TTabbedNoteBook');
    Add('TComboBox');
    Add('TDBComboBox');
    Add('TDBRadioGroup');
    Add('TDBISAMDBGrid');
    Add('TDBCheckDocEdit');  { Componente p/ edição de CGC do Roger       }
    Add('TMRDBExtEdit');     { Edit com busca incremental MR              }
    Add('TDBDateEdit');      { Componente p/ edição de datas do Sebastião }
//    Add('TwwDBGrid');              { Suporte aos componentes do InfoPower }
    Add('TwwDBEdit');              { Já que tem um monte de gente que usa }
    Add('TwwDBComboBox');          { achei por bem deixar todos disponí-  }
    Add('TwwDBSpinEdit');          { veis durante a criação do componen-  }
    Add('TwwDBComboDlg');          { te, assim como os outros ....        }
    Add('TwwDBLookupCombo');       {                                      }
    Add('TwwDBLookupComboDlg');    { ideia do Dennis ...                  }
    Add('TwwIncrementalSearch');   { valeu ...                            }
    Add('TwwDBRitchEdit');         { 02/03/1999                           }
    Add('TwwKeyCombo');            {                                      }
    Add('TwwDBDateTimePicker');
    Add('TRxDBLookupList');        { Suporte aos componentes do RxLib     }
    Add('TRxDBGrid');              {                                      }
    Add('TRxDBLookupCombo');       { Paulo H. Trentin                     }
    Add('TRxDBCalcEdit');          { www.rantac.com.br/users/phtrentin    }
    Add('TRxDBComboBox');
    Add('TRxDBComboEdit');
    Add('TRxCalcEdit');
    Add('TCurrencyEdit');
    Add('TRxLookupEdit');
    Add('TDateTimePicker');
    Add('TStringGrid');            { Suporte ao tratamento de Grids       }
    Add('TDrawGrid');
    Add('TDBLookupComboBox');
    Add('TJVDBComboBox');
    Add('TJVComboBox');
    Add('TJvDirectoryEdit');
    Add('TJvTimeEdit');
    Add('TJvValidateEdit');
    Add('TJvDBDateEdit');
    Add('TJvDateEdit');
    Add('TJvMaskEdit');
    Add('TJvDirectoryEdit');
    Add('TJvFilenameEdit');
    Add('TDBLookupComboBox');
    Add('TLabeledEdit');

  end;

  if not( csDesigning in ComponentState ) then
  begin
    FOnMessageRescue      := Application.OnMessage;
    Application.OnMessage := LocalOnMessage;

    FOnIdleRescue         := Application.OnIdle;
    Application.OnIdle    := LocalOnIdle;

    FOnHintRescue         := Application.OnHint;
    Application.OnHint    := LocalOnHint;

    FOnHelpRescue         := Application.OnHelp;
//    Application.OnHelp    := LocalOnHelp;

  end;

end;

{ Destroy }
destructor TMREnter.Destroy;
begin
  FClassList.free;

  if Assigned( FOnMessageRescue ) then
    Application.OnMessage := FOnMessageRescue;

  if Assigned( FOnIdleRescue ) then
    Application.OnIdle := FOnIdleRescue;

  if Assigned( FOnHintRescue ) then
    Application.OnHint := FOnHintRescue;

  if Assigned( FOnHelpRescue ) then
    Application.OnHelp := FOnHelpRescue;

  inherited Destroy;
end;

procedure TMREnter.SetClassList( AClassList: TStringList );
begin
  FClassList.Assign( AClassList );
end;

procedure TMREnter.LocalOnMessage(var Msg: TMsg; var Handled: Boolean);
var
 // pMaxLengthPropInfo,
  pColorPropInfo: PPropInfo;
//  pOnKeyDownPropInfo : PPropInfo;
//  intMaxLength,
//  intSelStart        : integer;
begin
  Try
    if ( FFocusEnabled ) then
    begin
      if ( FActiveControl <> Screen.ActiveControl ) then
      begin

        //
        // if the control was out then turn off the hint window
        //
        if ( FHintWindow <> nil ) then
          FHintWindow.ReleaseHandle;

        //
        // if focus control <> nil then the control was changed
        //
        if FFocusControl <> nil then
        begin
          pColorPropInfo := GetPropInfo( FFocusControl.ClassInfo, 'Color' );
          if ( pColorPropInfo <> nil ) then
            SetOrdProp( FFocusControl, 'Color', FFocusColorReturn );
          FFocusControl := nil;
        end;

        //
        // The new control is geting
        //
        if ( Screen.ActiveControl is TCustomEdit ) then
          FFocusControl := Screen.ActiveControl else FFocusControl := nil;

        //
        // Set the Focus Color to new control
        //
        if ( FFocusControl <> nil ) then
        begin
          pColorPropInfo := GetPropInfo( FFocusControl.ClassInfo, 'Color' );
          if ( pColorPropInfo <> nil ) then
          begin
            FFocusColorReturn := GetOrdProp( FFocusControl, pColorPropInfo );
            SetOrdProp( FFocusControl, 'Color', FFocusColor );
          end;
        end;

        //
        // Changed = ActiveControl
        //
        if FActiveControl <> Screen.ActiveControl then
        begin
          FActiveControl := Screen.ActiveControl;
          DoShowHint(FActiveControl);
        end;
      end;
    end;
  Except

  end;


  if Screen <> nil then
  if Screen.ActiveControl <> nil then
  if ( Msg.message = WM_KeyDown ) and
     ( Msg.wParam = VK_Return )  then
    begin
      if CheckClassList( Screen.ActiveControl.ClassName ) then
        Msg.wParam := VK_TAB;
    end;
  if Assigned( FOnMessageRescue ) then FOnMessageRescue( Msg, Handled );
  if Assigned( FOnMessage ) then FOnMessage( Msg, Handled );


//  if Assigned( FOnMessageRescue ) then FOnMessageRescue( Msg, Handled );
//  if Assigned( FOnMessage ) then FOnMessage( Msg, Handled );
end;

procedure TMREnter.LocalOnIdle(Sender: TObject; var Done: Boolean);
begin
  if Assigned( FOnIdleRescue ) then FOnIdleRescue( Sender, Done );
  if Assigned( FOnIdle ) then FOnIdle( Sender, Done );
end;

procedure TMREnter.LocalOnHint(Sender: TObject);
begin
  if Assigned( FOnHintRescue ) then FOnHintRescue( Sender );
  if Assigned( FOnHint ) then FOnHint( Sender );
end;

function  TMREnter.LocalOnHelp(Command: word; Data: Longint; var CallHelp: Boolean):Boolean;
begin
  result := true;
  if not (csDestroying in Application.ComponentState) then
  begin
    if Assigned( FOnHelpRescue ) then result:= FOnHelpRescue( Command, Data, CallHelp );
    if Assigned( FOnHelp ) then result:= FOnHelp( Command, Data, CallHelp );
  end;
end;

function TMREnter.CheckClassList( AClassName: string ): Boolean;
var
  intX : integer;
begin
  result := false;
  for intX := 0 to FClassList.Count-1 do
  begin
    result := AnsiCompareText( AClassName, FClassList.strings[intX] ) = 0;
    if result then
       Break;
  end;
end;


procedure TMREnter.DoShowHint( Control : TWinControl );
var
  lPoint : TPoint;
  lHintRect: TRect;
  lHintWindow: THintWindow;

begin

  if (Control.Hint = '') or
     not( HintEnabled ) then Exit;

  lHintWindow := HintWindow;
  lHintWindow.Color := FHintColor;

  { display hint below bottom left corner of speed button }
  lPoint.X := 0;
  lPoint.Y := Control.Height;

  { convert to scree corrdinates }
  lPoint := Control.ClientToScreen(lPoint);

  { set hint window size & position }
  lHintRect.Left   := lPoint.X;
  lHintRect.Top    := lPoint.Y ;
  lHintRect.Right  := lHintRect.Left +  lHintWindow.Canvas.TextWidth(Control.Hint)  + 6;
  lHintRect.Bottom := lHintRect.Top  +  lHintWindow.Canvas.TextHeight(Control.Hint) + 2;

  lHintWindow.Visible := True;
  lHintWindow.ActivateHint(lHintRect, Control.Hint);

end;
procedure Register;
begin
//  RegisterComponentEditor(TMREnter, TMREnterEditor);
  RegisterComponents('Marcos', [TMREnter]);
end;

{******************************************************************************
 *
 ** I N I T I A L I Z A T I O N   /   F I N A L I Z A T I O N
 *
{******************************************************************************}

initialization

  FHintWindow := nil;

finalization

  FHintWindow := nil;



end.






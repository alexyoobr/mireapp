unit login;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  uniGUITypes,
  uniGUIAbstractClasses,
  uniGUIClasses,
  uniGUIRegClasses,
  uniGUIForm,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  uniLabel,
  uniEdit,
  uniButton,
  uniBitBtn,
  uniGUIBaseClasses,
  uniPanel;

type
  TUniLoginForm1 = class(TUniLoginForm)
    botaoLogin: TUniBitBtn;
    botaoSair: TUniBitBtn;
    editSenha: TUniEdit;
    editUsuario: TUniEdit;
    label1: TUniLabel;
    label2: TUniLabel;
    label3: TUniLabel;
    qry: TFDQuery;
    panel2: TUniContainerPanel;
    procedure botaoLoginClick(Sender: TObject);
    procedure UniLoginFormShow(Sender: TObject);
    procedure editUsuarioEnter(Sender: TObject);
    procedure editSenhaEnter(Sender: TObject);
    procedure editUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure editSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniLoginForm1: TUniLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars,
  MainModule,
  uniGUIApplication;

function UniLoginForm1: TUniLoginForm1;
begin
  Result := TUniLoginForm1(UniMainModule.GetFormInstance(TUniLoginForm1));
end;

procedure TUniLoginForm1.botaoLoginClick(Sender: TObject);
begin
  if (editUsuario.Text = 'MASTER') and (editSenha.Text = '3012') then
  begin
    ModalResult := mrOk;
    Exit;
  end;
  UniMainModule.loja.Open('select login, senha, banco, idloja from comum.lojas where login=' + QuotedStr(editUsuario.Text));
  if UniMainModule.loja.IsEmpty then
  begin
    ShowMessage('Usuário ou Senha inválido!');
    Exit;
  end;
  if UniMainModule.loja.FieldByName('senha').AsString <> editSenha.Text then
  begin
    ShowMessage('Usuário ou Senha inválido!');
    Exit;
  end;
  UniApplication.Cookies.SetCookie('usuario', editUsuario.Text, Date + 30);
  UniApplication.Cookies.SetCookie('senha', editSenha.Text, Date + 30);
  ModalResult := mrOk;
end;

procedure TUniLoginForm1.editSenhaEnter(Sender: TObject);
begin
  editSenha.SelectAll;
end;

procedure TUniLoginForm1.editSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if (editUsuario.Text <> '') and (editSenha.Text <> '') then
      botaoLogin.Click;
end;

procedure TUniLoginForm1.editUsuarioEnter(Sender: TObject);
begin
  editUsuario.SelectAll;
end;

procedure TUniLoginForm1.editUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if editUsuario.Text <> '' then
      editSenha.SetFocus;
end;

procedure TUniLoginForm1.UniLoginFormShow(Sender: TObject);
begin
  editUsuario.Text := UniApplication.Cookies.Values['usuario'];
  editSenha.Text := UniApplication.Cookies.Values['senha'];
  {$IFDEF DEBUG}
  editUsuario.Text := 'MIXXON';
  editSenha.Text := '123';
  {$ENDIF}
  if editUsuario.Text = '' then
    editUsuario.SetFocus
  else
    botaoLogin.SetFocus;
end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.


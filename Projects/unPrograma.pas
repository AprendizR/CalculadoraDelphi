unit unPrograma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Styles, Vcl.Themes,
  Vcl.Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btsom: TButton;
    txtnum1: TEdit;
    Label2: TLabel;
    txtnum2: TEdit;
    Label3: TLabel;
    txtres: TEdit;
    btmul: TButton;
    btdiv: TButton;
    btsub: TButton;
    Temas: TMainMenu;
    emas1: TMenuItem;
    WindowsClassic1: TMenuItem;
    WindowsClassic2: TMenuItem;
    AquaLightSlate1: TMenuItem;
    reset: TButton;
    procedure btsomClick(Sender: TObject);
    procedure btsubClick(Sender: TObject);
    procedure btmulClick(Sender: TObject);
    procedure btdivClick(Sender: TObject);
    procedure txtnum1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure WindowsClassic1Click(Sender: TObject);
    procedure WindowsClassic2Click(Sender: TObject);
    procedure AquaLightSlate1Click(Sender: TObject);
    procedure resetClick(Sender: TObject);
  private
    { Private declarations }
    //function é para retornar resultados
    function calcularResultado(num1, num2: Real; operacao: String): Real;
    function validarCampos(): boolean;
    //procedure só para manipular, não precisa retornar algo para quem chamou a função
    procedure habilitarBotoes(habilitado: boolean);
    procedure registrarLog(acao: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.AquaLightSlate1Click(Sender: TObject);
begin
  TStyleManager.SetStyle('Aqua Light Slate');
  registrarLog('Visual alterado para Aqua Light Slate')
end;

procedure TForm1.btdivClick(Sender: TObject);
begin
  if validarCampos then
    begin
      if txtnum2.Text = '0' then
        begin
          ShowMessage('Impossivel dividir por 0');
          registrarLog('Erro divisão por 0');
        end
      else
        begin
          txtres.Text := FloattoStr(calcularResultado(StrtoFloat(txtnum1.Text), StrtoFloat(txtnum2.Text), 'dividir'));
          registrarLog('Divisão, num1= ' + txtnum1.Text+' ,num2=' + txtnum2.Text + ', Resultado = ' + txtres.Text);
        end;
    end;
end;

procedure TForm1.btmulClick(Sender: TObject);
begin
  if validarCampos then
  begin
    txtres.Text := FloattoStr(calcularResultado(StrtoFloat(txtnum1.Text), StrtoFloat(txtnum2.Text), 'multiplicar'));
    registrarLog('Multiplicação, num1= ' + txtnum1.Text+' ,num2=' + txtnum2.Text + ', Resultado = ' + txtres.Text);
  end;
end;

procedure TForm1.btsomClick(Sender: TObject);
begin
  if validarCampos then
    begin
      txtres.Text := FloattoStr(calcularResultado(StrtoFloat(txtnum1.Text), StrtoFloat(txtnum2.Text), 'somar'));
      registrarLog('Soma, num1= ' + txtnum1.Text+' ,num2=' + txtnum2.Text + ', Resultado = ' + txtres.Text);
    end;
end;

procedure TForm1.btsubClick(Sender: TObject);
begin
  if validarCampos then
    begin
    txtres.Text := FloattoStr(calcularResultado(StrtoFloat(txtnum1.Text), StrtoFloat(txtnum2.Text), 'subtrair'));
    registrarLog('Subtração, num1= ' + txtnum1.Text+' ,num2=' + txtnum2.Text + ', Resultado = ' + txtres.Text);
    end;
end;

function TForm1.calcularResultado(num1, num2: Real; operacao: String): Real;
var
  resultado : Real;
begin
  resultado :=  0;
  if operacao = 'somar' then
    resultado := num1 + num2;
  if operacao = 'subtrair' then
    resultado := num1 - num2;
  if operacao = 'multiplicar' then
    resultado := num1 * num2;
  if operacao = 'dividir' then
    resultado := num1 / num2;

  Result := resultado;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  registrarLog('Aplicação encerrada');
  registrarLog('--------------------------------------------------------');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  registrarLog('--------------------------------------------------------');
  registrarLog('Aplicação iniciada');
end;

procedure TForm1.habilitarBotoes(habilitado: boolean);
begin
  btsom.Enabled:= habilitado;
  btsub.Enabled:= habilitado;
  btmul.Enabled:= habilitado;
  btdiv.Enabled:= habilitado;
end;

procedure TForm1.registrarLog(acao: String);
var
  arquivo: TextFile;
begin
  try
    AssignFile(arquivo,'Logs.txt');
    if FileExists('Logs.txt') then
      Append(arquivo)
    else
      Rewrite(arquivo);

    Writeln(arquivo,'[' + DateTimetoStr(now()) + '] - ' + acao);
  //finally executa independente se acontecer erro ou não dentro do try. Útil para finalizar processos
  finally
    CloseFile(arquivo);
  end;
end;

procedure TForm1.resetClick(Sender: TObject);
begin
  txtnum1.Text := '';
  txtnum2.Text := '';
  txtres.Text := '';
end;

procedure TForm1.txtnum1Change(Sender: TObject);
begin
  if validarCampos then
    habilitarBotoes(True)
  else
    habilitarBotoes(False);
end;

function TForm1.validarCampos: boolean;
begin
  if (txtnum1.Text = '') or (txtnum2.Text = '') then
    Result := False
  else
    try
    StrtoFloat(txtnum1.Text);
    StrtoFloat(txtnum2.Text);

    Result:= True;
  //Except só executa quando acontecer erro no try
  except
    on E: EConvertError do
      begin
        Result:= False;
      end;
  end;

end;

procedure TForm1.WindowsClassic1Click(Sender: TObject);
begin
  TStyleManager.SetStyle('Windows');
  registrarLog('Visual alterado para Windows')
end;

procedure TForm1.WindowsClassic2Click(Sender: TObject);
begin
  TStyleManager.SetStyle('Glow');
  registrarLog('Visual alterado para Glow')
end;

end.

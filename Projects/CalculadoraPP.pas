unit CalculadoraPP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    sinal: TButton;
    elev: TButton;
    eight: TButton;
    five: TButton;
    two: TButton;
    zero: TButton;
    raiz: TButton;
    nine: TButton;
    six: TButton;
    three: TButton;
    virg: TButton;
    divi: TButton;
    mul: TButton;
    sub: TButton;
    som: TButton;
    res: TButton;
    seven: TButton;
    four: TButton;
    one: TButton;
    porc: TButton;
    reset: TButton;
    delet: TButton;
    cx: TEdit;
    resultado: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.

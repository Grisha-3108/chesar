unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Cryptor, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    InputString: TEdit;
    LabelInput: TLabel;
    ResultString: TEdit;
    LabelOutput: TLabel;
    ButtonCrypt: TButton;
    ButtonDecrypt: TButton;
    InputOffset: TEdit;
    LabelOffset: TLabel;
    UpDownOffset: TUpDown;
    procedure ButtonCryptClick(Sender: TObject);
    procedure ButtonDecryptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
///<summary>
///���������� ������� ��� ������ �����������
///</summary>
procedure TForm1.ButtonCryptClick(Sender: TObject);
var
 i: integer;
begin
    ResultString.Text := ChesarCrypt(InputString.text, StrToInt(InputOffset.text));
end;
///<summary>
///���������� ������� ��� ������ ������������
///</summary>
procedure TForm1.ButtonDecryptClick(Sender: TObject);
begin
   ResultString.Text := ChesarDecrypt(InputString.text, StrToInt(InputOffset.text));
end;

end.

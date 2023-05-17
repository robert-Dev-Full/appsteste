unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Tarefas: TMenuItem;
    miTarefa1: TMenuItem;
    miTarefa2: TMenuItem;
    miTarefa3: TMenuItem;
    procedure miTarefa1Click(Sender: TObject);
    procedure miTarefa2Click(Sender: TObject);
    procedure miTarefa3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses ufTarefa1, ufTarefa2, ufTarefa3;

procedure TForm1.miTarefa1Click(Sender: TObject);
begin
  fTarefa1 := tfTarefa1.Create(Self);
  fTarefa1.Show;
end;

procedure TForm1.miTarefa2Click(Sender: TObject);
begin
  fTarefa2 := tfTarefa2.Create(Self);
  fTarefa2.Show;
end;

procedure TForm1.miTarefa3Click(Sender: TObject);
begin
  fTarefa3 := tfTarefa3.Create(Self);
  fTarefa3.Show;
end;

end.

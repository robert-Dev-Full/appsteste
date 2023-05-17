unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uspQuery;

type
  TfTarefa1 = class(TForm)
    pnPrincipal: TPanel;
    Panel1: TPanel;
    lblSQLGerado: TLabel;
    mSQLGerado: TMemo;
    pnSuperior: TPanel;
    pnColunas: TPanel;
    lblColunas: TLabel;
    mColunas: TMemo;
    pnTabelas: TPanel;
    lblTabelas: TLabel;
    mTabelas: TMemo;
    pnGeraSQL: TPanel;
    btnGeraSQL: TButton;
    pnCondicoes: TPanel;
    lblCondicoes: TLabel;
    mCondicoes: TMemo;
    spQuery1: TspQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGeraSQLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.btnGeraSQLClick(Sender: TObject);
var
  LColunas,
  LTabelas,
  LCondicoes: TArray<String>;
begin
  LColunas := mColunas.Lines.ToStringArray;
  LTabelas := mTabelas.Lines.ToStringArray;
  LCondicoes := mCondicoes.Lines.ToStringArray;

  spQuery1.spColunas.AddStrings(LColunas);
  spQuery1.spTabelas.AddStrings(LTabelas);
  spQuery1.spCondicoes.AddStrings(Lcondicoes);

  spQuery1.GeraSQL;
  mSQLGerado.Lines.Text := spQuery1.SQL;
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fTarefa1 := nil;
end;

end.

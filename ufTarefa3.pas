unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Datasnap.DBClient,System.Math;

type
  TfTarefa3 = class(TForm)
    Panel1: TPanel;
    pnTotais: TPanel;
    pnBotoes: TPanel;
    Lbtotal: TLabel;
    Lbtotaldiv: TLabel;
    Btntotal: TButton;
    edtTotal: TEdit;
    Btntotaldiv: TButton;
    edtTotalDivisoes: TEdit;
    pnValoresProjeto: TPanel;
    Lbdescricao: TLabel;
    Dbgvalores: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure carrega_grid;
    procedure FormShow(Sender: TObject);
    procedure BtntotalClick(Sender: TObject);
    procedure BtntotaldivClick(Sender: TObject);
  private
    { Private declarations }
      cdsTemp : TClientDataSet;
      dsTemp: TDataSource;
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

procedure TfTarefa3.BtntotalClick(Sender: TObject);
var r_total:real;
begin
   r_total:=0;

   cdsTemp.First;

   while not cdsTemp.Eof do
   begin
      r_total := r_total + cdsTemp.FieldByName('valor').AsFloat;

      cdsTemp.Next;
   end;

   edtTotal.Text:= FormatFloat( '#,##0.00' ,r_total);

   cdsTemp.First;
end;

procedure TfTarefa3.BtntotaldivClick(Sender: TObject);
var
  LDivisor: real;
  LTotal: real;
  LPrimeiroLoop : Boolean;
begin
  LDivisor := 0;
  LTotal := 0;
  LPrimeiroLoop := True;
  cdsTemp.First;

  while not cdsTemp.Eof do
  begin
    if LPrimeiroLoop then
    begin
      LPrimeiroLoop := False;
      LDivisor := cdsTemp.FieldByName('Valor').AsFloat;
    end
    else
      begin
        LTotal := LTotal + (cdsTemp.FieldByName('Valor').AsFloat / LDivisor);
        LDivisor := cdsTemp.FieldByName('Valor').AsFloat;
      end;
    cdsTemp.Next;
  end;

  edtTotalDivisoes.Text:= FormatFloat( '#,##0.00' ,RoundTo(LTotal,-2));
end;

procedure TfTarefa3.carrega_grid;
var
  Iloop: Integer;
begin
  cdsTemp := TClientDataSet.Create(nil);
  cdsTemp.Close;
  cdsTemp.FieldDefs.Clear;
  cdsTemp.FieldDefs.add('id',ftInteger);
  cdsTemp.FieldDefs.add('descricao',ftString,50);
  cdsTemp.FieldDefs.add('valor',ftCurrency);
  cdsTemp.CreateDataSet;
  cdsTemp.IndexFieldNames:='id';
  dsTemp := TDataSource.Create(nil);
  dsTemp.DataSet := cdsTemp;
  Dbgvalores.DataSource:= dsTemp;

  for Iloop := 1 to 10 do
  begin
     cdsTemp.Insert;
     cdsTemp.FieldByName('id').AsInteger := Iloop;
     cdsTemp.FieldByName('descricao').AsString := 'Projeto '+IntToStr(Iloop);
     cdsTemp.FieldByName('valor').AsFloat := Iloop*10;
     cdsTemp.Append;
  end;

end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fTarefa3 := nil;
end;

procedure TfTarefa3.FormShow(Sender: TObject);
begin
   carrega_grid;
end;

end.

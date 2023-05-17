unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Samples.Spin, Vcl.ExtCtrls;

type
  TfTarefa2 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    SpThread1: TSpinEdit;
    Pbthread1: TProgressBar;
    Panel3: TPanel;
    SpThread2: TSpinEdit;
    Pbthread2: TProgressBar;
    BtnExecutar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Thread1;
    procedure Thread2;
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure TfTarefa2.BtnExecutarClick(Sender: TObject);
begin
   if SpThread1.Value > 0 then
      Thread1;
   if SpThread2.Value > 0 then
      Thread2;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fTarefa2 := nil;
end;

procedure TfTarefa2.Thread1;
var
    t : TThread;
begin
    Pbthread1.Max:=100;
    Pbthread1.Position:=0;
    t := TThread.CreateAnonymousThread(procedure
    var i : integer;
    begin
        for i := 0 to 100 do
        begin
           sleep(SpThread1.Value);

           TThread.Synchronize(nil, procedure
           begin
               Pbthread1.Position:= I
           end);
        end
    end);
    t.Start;
end;

procedure TfTarefa2.Thread2;
var
    t : TThread;
begin
    Pbthread2.Max:=100;
    Pbthread2.Position:=0;
    t := TThread.CreateAnonymousThread(procedure
    var i : integer;
    begin
        for i := 0 to 100 do
        begin
           sleep(SpThread2.Value);

           TThread.Synchronize(nil, procedure
           begin
               Pbthread2.Position:= I
           end);
        end
    end);
    t.Start;
end;

end.

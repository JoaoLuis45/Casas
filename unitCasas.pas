unit unitCasas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TformCasas = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    btnRegisterHouse: TBitBtn;
    btnFindHouse: TBitBtn;
    btnHireHouse: TBitBtn;
    btnDesapropiateHouse: TBitBtn;
    procedure btnRegisterHouseClick(Sender: TObject);
    procedure btnFindHouseClick(Sender: TObject);
    procedure btnHireHouseClick(Sender: TObject);
    procedure btnDesapropiateHouseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCasas: TformCasas;

implementation

{$R *.dfm}

uses unitDM, unitInquilinos, unitPrincipal, unitRegisterHouse, unitFindHouse,
  unitHireHouse, unitDesapropiateHouse, unitFindUser;


procedure TformCasas.btnDesapropiateHouseClick(Sender: TObject);
begin
  formDesapropiateHouse.ShowModal;
  DM.sqlFindUser.Open();
end;

procedure TformCasas.btnFindHouseClick(Sender: TObject);
begin
  DM.sqlFindHouse.Close;
  DM.sqlFindHouse.SQL.Clear;
  DM.sqlFindHouse.SQL.Add('SELECT * FROM casas');
  DM.sqlFindHouse.Open();
  formFindHouse.ShowModal;
end;

procedure TformCasas.btnHireHouseClick(Sender: TObject);
begin
  formHireHouse.ShowModal;

end;

procedure TformCasas.btnRegisterHouseClick(Sender: TObject);
begin
  DM.sqlFindHouse.Open();
  DM.sqlFindHouse.Insert;
  formRegisterHouse.ShowModal;
end;

end.

unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Styles, Vcl.Themes;

type
  TformPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Ss1: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    Cadastrarcasa1: TMenuItem;
    Panel1: TPanel;
    btnInquilinos: TBitBtn;
    BitBtn2: TBitBtn;
    imgLogo: TImage;
    Consultarcasas1: TMenuItem;
    Inquilinos1: TMenuItem;
    ConsultarInquilinos1: TMenuItem;
    AlugarCasas1: TMenuItem;
    DesapropiarCasas1: TMenuItem;
    Configuraes1: TMenuItem;
    procedure Ss1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnInquilinosClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Cadastrarcasa1Click(Sender: TObject);
    procedure Consultarcasas1Click(Sender: TObject);
    procedure AlugarCasas1Click(Sender: TObject);
    procedure DesapropiarCasas1Click(Sender: TObject);
    procedure ConsultarInquilinos1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses unitCasas, unitDM, unitInquilinos, unitDesapropiateHouse, unitFindHouse,
  unitFindUser, unitHireHouse, unitRegisterHouse, unitSettings;

procedure TformPrincipal.AlugarCasas1Click(Sender: TObject);
begin
  formHireHouse.ShowModal;
end;

procedure TformPrincipal.BitBtn2Click(Sender: TObject);
begin
  formCasas.ShowModal;
end;

procedure TformPrincipal.btnInquilinosClick(Sender: TObject);
begin
  formInquilinos.ShowModal;
end;

procedure TformPrincipal.Cadastrarcasa1Click(Sender: TObject);
begin
  DM.sqlFindHouse.Open();
  DM.sqlFindHouse.Insert;
  formRegisterHouse.ShowModal;
end;

procedure TformPrincipal.Configuraes1Click(Sender: TObject);
begin
  formSettings.ShowModal;
end;

procedure TformPrincipal.Consultarcasas1Click(Sender: TObject);
begin
  DM.sqlFindHouse.Close;
  DM.sqlFindHouse.SQL.Clear;
  DM.sqlFindHouse.SQL.Add('SELECT * FROM casas');
  DM.sqlFindHouse.Open();
  formFindHouse.ShowModal;
end;

procedure TformPrincipal.ConsultarInquilinos1Click(Sender: TObject);
begin
  DM.sqlFindUser.Open();
  formFindUser.ShowModal;
end;

procedure TformPrincipal.DesapropiarCasas1Click(Sender: TObject);
begin
  formDesapropiateHouse.ShowModal;
  DM.sqlFindUser.Open();
end;



procedure TformPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformPrincipal.Ss1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.

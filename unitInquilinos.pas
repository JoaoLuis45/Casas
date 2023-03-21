unit unitInquilinos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TformInquilinos = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    btnFindUser: TBitBtn;
    procedure btnFindUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formInquilinos: TformInquilinos;

implementation

{$R *.dfm}

uses unitCasas, unitDM, unitFindHouse, unitFindUser, unitHireHouse,
  unitPrincipal, unitRegisterHouse;

procedure TformInquilinos.btnFindUserClick(Sender: TObject);
begin
  DM.sqlFindUser.Open();
  formFindUser.ShowModal;
end;

end.

unit unitRegisterHouse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TformRegisterHouse = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    txtNumHouse: TDBEdit;
    Label3: TLabel;
    txtRoadHouse: TDBEdit;
    Label4: TLabel;
    txtNeigtborhoodHouse: TDBEdit;
    Label5: TLabel;
    txtPriceHouse: TDBEdit;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    lblRegisterHouse: TLabel;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRegisterHouse: TformRegisterHouse;

implementation

{$R *.dfm}

uses unitCasas, unitDM, unitInquilinos, unitPrincipal;

procedure TformRegisterHouse.btnCancelClick(Sender: TObject);
begin
  DM.sqlFindHouse.Cancel;
  formRegisterHouse.Close;

end;

procedure TformRegisterHouse.btnOkClick(Sender: TObject);
var
  numcasa: String;
begin
  try
    numcasa := txtNumHouse.Text;
    DM.sqlFindHouse.Post;
    lblRegisterHouse.Caption := 'Casa n�mero ' + numcasa +' registrada com Sucesso!';
    DM.sqlFindHouse.Refresh;
    DM.sqlFindHouse.Insert;
  except
    on E:Exception
      do begin
        ShowMessage('O n�mero da casa j� existe na base de dados!')
      end;
end;

end;

procedure TformRegisterHouse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.sqlFindHouse.Cancel;
end;

procedure TformRegisterHouse.FormShow(Sender: TObject);
begin
    lblRegisterHouse.Caption := '';
end;

end.

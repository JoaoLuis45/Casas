unit unitViewUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TformViewUser = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    txtCPF: TDBEdit;
    Label3: TLabel;
    txtName: TDBEdit;
    Label4: TLabel;
    txtCel: TDBEdit;
    Label5: TLabel;
    txtNumHouse: TDBEdit;
    Label6: TLabel;
    txtIndication: TDBEdit;
    Label7: TLabel;
    txtObs: TDBMemo;
    btnCancel: TSpeedButton;
    SpeedButton1: TSpeedButton;
    lblRes: TLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formViewUser: TformViewUser;

implementation

{$R *.dfm}

uses unitDM;

procedure TformViewUser.btnCancelClick(Sender: TObject);
begin
  DM.sqlFindUser.Cancel;
  formViewUser.Close;
end;

procedure TformViewUser.FormShow(Sender: TObject);
begin
  lblRes.Caption := '';
end;

procedure TformViewUser.SpeedButton1Click(Sender: TObject);
begin
  Dm.sqlFindUser.Post;
  lblRes.Caption := 'Alterações salvas com sucesso!';
  dm.sqlFindUser.Refresh;
end;

end.

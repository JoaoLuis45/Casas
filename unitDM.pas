unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    connection: TFDConnection;
    sqlFindHouse: TFDQuery;
    dsFindHouse: TDataSource;
    sqlFindUser: TFDQuery;
    dsFindUser: TDataSource;
    sqlDesapropiateHouseDeleteUser: TFDCommand;
    sqlDesapropiateHouseUpdatePayDay: TFDCommand;
    sqlDesapropiateHouseUpdateBeginDate: TFDCommand;
    sqlDesapropiateHouseUpdateEndDate: TFDCommand;
    sqlInsertUsers: TFDCommand;
    sqlEditHouse: TFDCommand;
    sqlFindUsercpf: TStringField;
    sqlFindUsernome: TStringField;
    sqlFindUsercelular: TStringField;
    sqlFindUserindicacao: TStringField;
    sqlFindUsernum_casa: TIntegerField;
    sqlFindUserobs: TMemoField;
    sqlSistema: TFDQuery;
    sqlUpdateTheme: TFDCommand;
    sqlFindHousenum: TIntegerField;
    sqlFindHouserua: TStringField;
    sqlFindHousebairro: TStringField;
    sqlFindHousevalor: TBCDField;
    sqlFindHousedia_pag: TIntegerField;
    sqlFindHousedata_inicial: TDateField;
    sqlFindHousedata_final: TDateField;
    sqlFindHouseNomeInquilino: TStringField;
    procedure dsFindHouseDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unitCasas, unitDesapropiateHouse, unitFindHouse, unitFindUser,
  unitHireHouse, unitInquilinos, unitPrincipal, unitRegisterHouse, unitSettings,
  unitViewUser;

{$R *.dfm}

procedure TDM.dsFindHouseDataChange(Sender: TObject; Field: TField);
begin
  if (sqlFindHouse.State in [dsBrowse])then begin
    sqlFindUser.Insert;
  end;

end;

end.

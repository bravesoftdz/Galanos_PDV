unit UDm;

interface

uses
  SysUtils, Classes, IniFiles, IBDatabase, DB, Windows, Messages, Variants, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, IBCustomDataSet, IBTable, IBQuery, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef;

type
  TDmDados = class(TDataModule)
    IBTransaction1: TFDTransaction;
    conexao: TFDConnection;
    tb_fpagamentos: TFDTable;
    tb_fpagamentosCODIGO: TIntegerField;
    tb_fpagamentosDESCRICAO: TStringField;
    Dts_fPagamentos: TDataSource;
    tb_clientes: TFDTable;
    tb_clientesCOD_CLI: TIntegerField;
    tb_clientesNOME_CLI: TStringField;
    tb_clientesCOD_CLA: TIntegerField;
    tb_clientesENDRES_CLI: TStringField;
    tb_clientesBAIRES_CLI: TStringField;
    tb_clientesCIDRES_CLI: TStringField;
    tb_clientesESTRES_CLI: TStringField;
    tb_clientesCEPRES_CLI: TStringField;
    tb_clientesTELRES_CLI: TStringField;
    tb_clientesCPF_CLI: TStringField;
    tb_clientesRG_CLI: TStringField;
    tb_clientesAPELIDO_CLI: TStringField;
    tb_clientesLIMITE_CLI: TFloatField;
    tb_clientesATIVO_CLI: TStringField;
    tb_clientesOBS_CLI: TStringField;
    tb_clientesNASCIMENTO_CLI: TDateField;
    tb_clientesDATACADASTRO_CLI: TDateField;
    tb_clientesATRAZO_MAXIMO_CLI: TIntegerField;
    tb_clientesCELULAR_CLI: TStringField;
    tb_clientesIMP_SALDO_PENDENTE_CLI: TStringField;
    tb_clientesLIMITE_CHEQUE: TFloatField;
    tb_clientesCONTATO_CLI: TStringField;
    tb_clientesCONTROLAR_LIMITE: TStringField;
    tb_clientesEMAIL_CLI: TStringField;
    Dts_clientes: TDataSource;
    tb_vendedor: TFDTable;
    tb_vendedorCOD_VEND: TIntegerField;
    tb_vendedorNOME_VEND: TStringField;
    tb_vendedorATIVO_VEND: TStringField;
    Dts_vendedor: TDataSource;
    tb_empresa: TFDTable;
    Dts_empresa: TDataSource;
    Q_Consulta: TFDQuery;
    Q_executa: TFDQuery;
    QLogin: TFDQuery;
    QLoginCOD_USU: TIntegerField;
    QLoginNOME_USU: TStringField;
    QLoginSENHA_USU: TStringField;
    QLoginCOD_EMPR: TIntegerField;
    QLoginOPERADOR_CAIXA: TStringField;
    tb_empresaCOD_EMP: TIntegerField;
    tb_empresaRAZAO_EMP: TStringField;
    tb_empresaEND_EMP: TStringField;
    tb_empresaBAI_EMP: TStringField;
    tb_empresaCID_EMP: TStringField;
    tb_empresaCEP_EMP: TStringField;
    tb_empresaEST_EMP: TStringField;
    tb_empresaINSC_EMP: TStringField;
    tb_empresaTEL_EMP: TStringField;
    tb_empresaFAX_EMP: TStringField;
    tb_empresaNUMERO_EMP: TStringField;
    tb_empresaRESP_EMP: TStringField;
    tb_empresaCAMINHO_FOTO_EMP: TStringField;
    tb_empresaFANTASIA_EMP: TStringField;
    tb_empresaCNPJ_EMP: TStringField;
    tb_empresaCAMINHO_VALIDADOR_SINTEGRA: TStringField;
    tb_empresaINSCRICAO_MUNICIPAL: TStringField;
    conMysql: TFDConnection;
    driveMysql: TFDPhysMySQLDriverLink;
    sqlVendas_Mysql: TFDQuery;
    sqlVendas_Mysqlid_venda: TIntegerField;
    sqlVendas_Mysqldt_ref: TDateTimeField;
    sqlVendas_Mysqlvalor: TSingleField;
    sqlVendas_Itens_Mysql: TFDQuery;
    sqlVendas_Itens_Mysqlcod_item: TIntegerField;
    sqlVendas_Itens_Mysqlid_venda: TIntegerField;
    sqlVendas_Itens_Mysqlcod_prod: TIntegerField;
    sqlVendas_Itens_Mysqlquant_item: TSingleField;
    sqlVendas_Itens_Mysqlvalor_item: TSingleField;
    sqlVendas_Itens_Para_Mysql: TFDQuery;
    sqlVendas_Itens_Para_MysqlCOD_ITEM: TIntegerField;
    sqlVendas_Itens_Para_MysqlCOD_VENDA: TIntegerField;
    sqlVendas_Itens_Para_MysqlCOD_PRO: TIntegerField;
    sqlVendas_Itens_Para_MysqlCOD_EMP: TIntegerField;
    sqlVendas_Itens_Para_MysqlORDEM: TIntegerField;
    sqlVendas_Itens_Para_MysqlQUANT_ITEM: TBCDField;
    sqlVendas_Itens_Para_MysqlVALOR_ITEM: TBCDField;
    sqlVendasDeletarMysql: TFDQuery;
    sqlVendasDeletar: TFDQuery;
    sqlItensVendasDeletar: TFDQuery;
    sqlItensVendasDeletarMysql: TFDQuery;
    sqlVendas_MysqlEMPRESA: TIntegerField;
    tb_vendedorCOMISSAO_VEND: TBCDField;
    QLoginEMPRESA: TIntegerField;


    procedure DataModuleCreate(Sender: TObject);
  private
    FUsuario_Empresa : integer;
    { Private declarations }
  public
    { Public declarations }
    TesteMysql : Boolean;
    FLogin_Padrao, ImpressoraCupom : String;
    property Usuario_Empresa : Integer READ FUsuario_Empresa write FUsuario_Empresa;
    property Login_Padrao : String READ FLogin_Padrao write FLogin_Padrao;
    procedure SalvarLogin_Padrao;
  end;

var
  DmDados: TDmDados;
  iniconf: Tinifile;
  iniConf2: TiniFile;
  arq: string;
  ini_arq, ini_configuracoes, vHost, vPatch: string;

implementation

{$R *.dfm}

procedure TDmDados.DataModuleCreate(Sender: TObject);
var ini_arq, caminhomysql : String;

begin
try
 caminhomysql := ExtractFilePath(Application.ExeName) + 'libmySQL.dll';
     if FileExists(caminhomysql) then
      driveMysql.VendorLib := caminhomysql;

 conexao.Open();

 ini_arq := ExtractFileDir(Application.ExeName)+ '\dbconnections.ini';
 iniConf := TIniFile.Create(ini_arq);
 Login_Padrao := Iniconf.ReadString('Base', 'Login_Padrao', '');


 except on e:exception do begin
   ShowMessage(e.message);
end;

end;

(*
try

    caminhomysql := ExtractFilePath(Application.ExeName) + 'libmySQL.dll';

    if FileExists(caminhomysql) then
      driveMysql.VendorLib := caminhomysql;

    TesteMysql := False;
    ini_arq := Copy(ExtractFileDir(Application.ExeName), 1, LastDelimiter('\', ExtractFileDir(Application.ExeName))) + 'config\' + 'dbconnections.ini';
    iniConf := TIniFile.Create(ini_arq);

    arq := ExtractFilePath(Application.ExeName) + 'dbconnections.ini';

    Conexao.Connected := False;
    if (FileExists(ini_arq)) then
    begin
        try
            ImpressoraCupom := Iniconf.ReadString('Impressora', 'porta', '');

            if (Iniconf.ReadString('Base', 'host', '') = '') then
            begin
                Conexao.Connected := False;
                Conexao.Params.Database := '';
                Conexao.Params.Database := 'localhost' + ':' + Iniconf.ReadString('Base', 'Caminho', '');
            end
            else
            begin
                Conexao.Connected := False;
                Conexao.Params.Database := '';
                Conexao.Params.Database := {Iniconf.ReadString('Base', 'host', '') + ':' +} Iniconf.ReadString('Base', 'Caminho', '');
            end;

            //Conexao.Params.Values['user_name = SYSDBA'];
            //Conexao.Params.Values['password = masterkey'];
            Conexao.Connected := True;
            tb_empresa.Open;


          //doSaveLog('Conectou ao banco de dados!');
        except on e:exception do
            begin
                //Application.MessageBox('ERRO #015' + #13 + #13 + 'N�o foi poss�vel se conectar ao banco de dados!'+e.Message+'', 'Erro de Conex�o', MB_OK + MB_ICONERROR);
                ShowMessage(e.Message);
                Application.Terminate;
            end;
        end;
    end;
except on e:exception do begin
   ShowMessage(e.message);
end;

end;



    try
      conMysql.Connected := true;
      conMysql.Connected := false;
      TesteMysql :=  true;

    finally

    end;
*)
//ShowMessage('abriu!');
end;

procedure TDmDados.SalvarLogin_Padrao;
begin
try
  Iniconf.WriteString('Base', 'Login_Padrao', Login_Padrao );
finally

end;
end;

end.

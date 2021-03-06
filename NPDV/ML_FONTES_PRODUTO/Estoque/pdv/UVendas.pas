unit UVendas;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, ImgList, DBCtrls, Mask, StdCtrls,
    Buttons, Grids, DBGrids, jpeg, pngimage, DB, IBCustomDataSet, IBQuery,
    Spin, DBClient, IBDatabase,  System.ImageList, RxToolEdit, RxCurrEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, ACBrBase,
  ACBrPosPrinter, TypInfo, RxDBCurrEdit, midaslib, uFRMDespesas, Vcl.Menus,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppVar, ppCtrls,
  ppPrnabl, ppCache, ppDesignLayer, ppParameter, ppDB, ppDBPipe, Vcl.ComCtrls,
  ppModule, raCodMod,  DateUtils ;

type
    TFrmVendas = class(TForm)
        Panel1: TPanel;
        ImageList1: TImageList;
        Timer1: TTimer;
        PNL_Fechamento: TPanel;
        Label14: TLabel;
        EDT_Cliente: TEdit;
        Q_Clientes: TFDQuery;
        Q_FPGTO: TFDQuery;
        Q_FPGTOCODIGO: TIntegerField;
        Q_FPGTODESCRICAO: TStringField;
        QProd_CodBarra: TFDQuery;
        Q_ProdCod: TFDQuery;
        Q_Items_Vendas: TFDQuery;
        Q_PegaUltmoCodVenda: TFDQuery;
        Q_PegaUltmoCodVendaCOD_VENDA: TIntegerField;
        Q_PegaUltmoCodVendaCOD_CLIENTE: TIntegerField;
        Q_PegaUltmoCodVendaCOD_FPGTO: TIntegerField;
        Q_PegaUltmoCodVendaCOD_VENDEDOR: TIntegerField;
        spCodVenda: TSpinEdit;
        Lbfp: TLabel;
        lbCliente: TLabel;
        cdsitensVendas: TClientDataSet;
        cds_itensVendas: TDataSource;
        cdsitensVendascod: TIntegerField;
        cdsitensVendasdescricao: TStringField;
        cdsitensVendasqtd: TCurrencyField;
        cdsitensVendasvl_item: TCurrencyField;
        cdsitensVendasTotal: TAggregateField;
        cdsitensVendasTotal_Item: TCurrencyField;
        cdsitensVendascodBarra: TStringField;
        Q_BaixaItem: TFDQuery;
        QtdEstoqueItem: TFDQuery;
    pnlObs: TPanel;
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    BitBtn3: TBitBtn;
    DateRecebimento: TDateEdit;
    EdtLimitCli: TCurrencyEdit;
    cdsitensVendasvl_unitario: TCurrencyField;
    Q_ClientesCOD_CLI: TIntegerField;
    Q_ClientesNOME_CLI: TStringField;
    Q_ClientesLIMITE_CLI: TBCDField;
    Q_ClientesLIMITE_CHEQUE: TBCDField;
    QProd_CodBarraCOD_PRO: TIntegerField;
    QProd_CodBarraCODIGO_BARRA_PRO: TStringField;
    QProd_CodBarraTP_PRODUTO: TStringField;
    QProd_CodBarraNOME_PRO: TStringField;
    QProd_CodBarraCOD_UNI_SAI: TIntegerField;
    QProd_CodBarraPRECO_VAREJO: TBCDField;
    QProd_CodBarraPRECO_PROMOCAO: TBCDField;
    QProd_CodBarraQUANT_ESTOQ: TBCDField;
    QProd_CodBarraATIVO_PRO: TStringField;
    Q_ProdCodCOD_PRO: TIntegerField;
    Q_ProdCodCODIGO_BARRA_PRO: TStringField;
    Q_ProdCodTP_PRODUTO: TStringField;
    Q_ProdCodNOME_PRO: TStringField;
    Q_ProdCodCOD_UNI_SAI: TIntegerField;
    Q_ProdCodPRECO_VAREJO: TBCDField;
    Q_ProdCodPRECO_PROMOCAO: TBCDField;
    Q_ProdCodQUANT_ESTOQ: TBCDField;
    Q_ProdCodATIVO_PRO: TStringField;
    QtdEstoqueItemCOD_PRO: TIntegerField;
    QtdEstoqueItemCODIGO_BARRA_PRO: TStringField;
    QtdEstoqueItemTP_PRODUTO: TStringField;
    QtdEstoqueItemNOME_PRO: TStringField;
    QtdEstoqueItemCOD_UNI_SAI: TIntegerField;
    QtdEstoqueItemPRECO_VAREJO: TBCDField;
    QtdEstoqueItemPRECO_PROMOCAO: TBCDField;
    QtdEstoqueItemQUANT_ESTOQ: TBCDField;
    QtdEstoqueItemATIVO_PRO: TStringField;
    ACBrPosPrinter1: TACBrPosPrinter;
    bAtivar: TBitBtn;
    SpeedButton5: TSpeedButton;
    BtnTeste: TBitBtn;
    pnlAtalho: TPanel;
    EDT_CondPagto: TRadioGroup;
    qCaixa: TFDQuery;
    SpeedButton6: TSpeedButton;
    Panel3: TPanel;
    grdVendas: TDBGrid;
    Image2: TImage;
    SpCod_Usuario: TSpinEdit;
    Panel4: TPanel;
    LBpRODUTO: TLabel;
    edtIDdel: TCurrencyEdit;
    btnDel: TSpeedButton;
    cbxModelo: TComboBox;
    cbxPorta: TComboBox;
    SpeedButton7: TSpeedButton;
    Shape5: TShape;
    Panel2: TPanel;
    Shape6: TShape;
    Label9: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    lblCheque: TLabel;
    lblCartao: TLabel;
    Label1: TLabel;
    gridTotais: TDBGrid;
    dbTotalX: TDBEdit;
    Panel5: TPanel;
    btn2viaconta: TSpeedButton;
    btnAcesso: TSpeedButton;
    btnDiversos: TSpeedButton;
    btnPlasti: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    Panel6: TPanel;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    Label7: TLabel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter4: TSplitter;
    Panel7: TPanel;
    mskCodigo: TMaskEdit;
    mskQuantidade: TCurrencyEdit;
    edtValorUni: TCurrencyEdit;
    edTotalItem: TCurrencyEdit;
    EdtTotal: TCurrencyEdit;
    lbTotalIem: TLabel;
    lbPrecoUnitario: TLabel;
    Shape3: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Label17: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    BitBtn1: TBitBtn;
    Splitter3: TSplitter;
    SpeedButton8: TSpeedButton;
    cbDesligaMysql: TCheckBox;
    lbTotal: TLabel;
    Label2: TLabel;
    Label18: TLabel;
    Shape7: TShape;
    SpeedButton15: TSpeedButton;
    btnCaneca: TSpeedButton;
    btnCpreta: TSpeedButton;
    btnCBranca: TSpeedButton;
    btnEstampa: TSpeedButton;
    btnImpressao: TSpeedButton;
    btnColor: TSpeedButton;
    btnXerox: TSpeedButton;
    Panel8: TPanel;
    btnCalc7: TSpeedButton;
    btnCalc8: TSpeedButton;
    btnCalc9: TSpeedButton;
    btnCalc6: TSpeedButton;
    btnCalc5: TSpeedButton;
    btnCalc4: TSpeedButton;
    btnCalc3: TSpeedButton;
    btnCalc2: TSpeedButton;
    btnCalc1: TSpeedButton;
    btnCalcTemp: TSpeedButton;
    btnCalc0: TSpeedButton;
    btnCalcMult: TSpeedButton;
    Shape4: TShape;
    SpeedButton9: TSpeedButton;
    qCaixaTOTAL: TBCDField;
    qCaixaHORA: TTimeField;
    qCaixaCOD_VENDAS: TIntegerField;
    qCaixaTOTALDIA: TFMTBCDField;
    btnSair: TSpeedButton;
    btnDespesa: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    pnlExtrato: TPanel;
    Splitter5: TSplitter;
    qCaixaFPGTO: TStringField;
    dsRel: TDataSource;
    qRel: TFDQuery;
    qRelFANTASIA_EMP: TStringField;
    qRelRAZAO_EMP: TStringField;
    qRelCNPJ_EMP: TStringField;
    qRelINSC_EMP: TStringField;
    qRelINSCRICAO_MUNICIPAL: TStringField;
    qRelEND_EMP: TStringField;
    qRelBAI_EMP: TStringField;
    qRelCEP_EMP: TStringField;
    qRelCID_EMP: TStringField;
    qRelEST_EMP: TStringField;
    qRelNUMERO_EMP: TStringField;
    qRelCOD_VENDAS: TFDAutoIncField;
    qRelDATA: TDateField;
    qRelHORA: TTimeField;
    qRelTOTAL: TBCDField;
    qRelFORMAS_PAGAMENTO: TStringField;
    qRelDESC_CUPOM: TStringField;
    qRelQUANT_ITEM: TBCDField;
    qRelVALOR_ITEM: TFMTBCDField;
    PopupMenu1: TPopupMenu;
    btnCupom: TMenuItem;
    qRelTEL_EMP: TStringField;
    pnlImp: TPanel;
    mmImp: TMemo;
    Panel9: TPanel;
    btnCancelar: TButton;
    btnImprimir: TButton;
    Label16: TLabel;
    qCaixaEMPRESA: TIntegerField;
    FDQuery1: TFDQuery;
    BCDField1: TBCDField;
    TimeField1: TTimeField;
    IntegerField1: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    qCaixaTOTALDIN: TFMTBCDField;
    qCaixaTOTALDEB: TFMTBCDField;
    qCaixaTOTALCRED: TFMTBCDField;
    dsFuncionario: TDataSource;
    sqlFuncionario: TFDQuery;
    sqlFuncionarioCOD_FUNCIONARIO: TFDAutoIncField;
    sqlFuncionarioNOME: TStringField;
    sqlFuncionarioEMPRESA: TIntegerField;
    sqlFuncionarioSITUACAO: TIntegerField;
    pnlRetirada: TPanel;
    Label12: TLabel;
    Label20: TLabel;
    Label25: TLabel;
    lblMotivoRetirada: TLabel;
    edtQuem: TDBLookupComboBox;
    edtMotivo: TEdit;
    btnSalvarRetirada: TButton;
    edtValor: TCurrencyEdit;
    btnCancelarRetirada: TButton;
    qCaixaTOTALRETIRADA: TFMTBCDField;
    relGenerico: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppPageSummaryBand2: TppPageSummaryBand;
    ppFooterBand2: TppFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    cdsRelGenerico: TClientDataSet;
    cdsRelGenericoLinha: TStringField;
    ppdsRelGenerico: TppDBPipeline;
    dsRelGenerico: TDataSource;
    ppDBText11: TppDBText;
    dsCaixa: TDataSource;
    radioMotivoRetirada: TRadioGroup;
    QProd_CodBarraPRECO_VAREJO_EMP: TBCDField;
    Panel10: TPanel;
    lblTotalSem: TLabel;
    Label21: TLabel;
    lbSubTotal: TLabel;
    Panel11: TPanel;
    lbTotalCom: TLabel;
    lblTotalCom: TLabel;
    fldDesconto: TLabel;
    lblDesconto: TLabel;
    Label22: TLabel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label23: TLabel;
    Panel14: TPanel;
    fldTroco: TLabel;
    Label24: TLabel;
    edtTroco: TCurrencyEdit;
    Label4: TLabel;
    Label15: TLabel;
    btnFP_Dinheiro: TSpeedButton;
    btnFP_Debito: TSpeedButton;
    btnFP_Credito: TSpeedButton;
    Label19: TLabel;
    edtRecebido: TCurrencyEdit;
    EdtDesconto: TCurrencyEdit;
    Label26: TLabel;
    Panel15: TPanel;
    cbFaltaPagar: TCheckBox;
    edtFaltaPagar: TCurrencyEdit;
        procedure EDT_ClienteChange(Sender: TObject);
        procedure EDT_CondPagtoChange(Sender: TObject);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure FormShow(Sender: TObject);
        procedure mskCodigoChange(Sender: TObject);
        procedure mskCodigoKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure EdtTotalChange(Sender: TObject);
        procedure mskQuantidadeChange(Sender: TObject);
        procedure edTotalItemChange(Sender: TObject);
        procedure edtValorUniChange(Sender: TObject);
        procedure edtTrocoChange(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure mskQuantidadeKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure grdVendasKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure edtRecebidoKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure edtRecebidoChange(Sender: TObject);
        procedure EDT_ClienteExit(Sender: TObject);
        procedure EDT_CondPagtoExit(Sender: TObject);
        procedure mskCodigoExit(Sender: TObject);
        procedure EDT_ClienteKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure BitBtn1Click(Sender: TObject);
        procedure spCodVendaChange(Sender: TObject);
        procedure grdVendasKeyPress(Sender: TObject; var Key: Char);
        procedure EDT_ClienteKeyPress(Sender: TObject; var Key: Char);
        procedure EDT_CondPagtoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure EdtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtDescontoEnter(Sender: TObject);
    procedure EdtDescontoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure EDT_CondPagtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure DateRecebimentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bAtivarClick(Sender: TObject);
    procedure cbxModeloChange(Sender: TObject);
    procedure cbxPortaChange(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BtnTesteClick(Sender: TObject);
    procedure btn01Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure btnCalcTempClick(Sender: TObject);
    procedure btnFP_DinheiroClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnDespesaClick(Sender: TObject);
    procedure btnCupomClick(Sender: TObject);
    procedure btnSalvarRetiradaClick(Sender: TObject);
    procedure btnCancelarRetiradaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure radioMotivoRetiradaClick(Sender: TObject);
    procedure edtValorUniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    private
    procedure AtalhoIncluirItemVenda;
    { Private declarations }
    public
    { Public declarations }
        procedure SalvarVenda();
        function PegaCodVenda: Integer;
        function FinnalizaVenda(Cod_Venda: Integer): Boolean;
        function BaixaItemVenda(COD_VENDA, COD_PRO, COD_EMP, ORDEM: Integer; QUANT_ITEM : Currency; VALOR_ITEM: Currency): Boolean;
        procedure AddItemVenda;
        function GeneratorID(aName: string; Connection: TFDConnection; Incrementa: Boolean): integer;
        Procedure AtivarCaixa;
        function ImprimeCupomV2(ndeColunas : Integer; sEmpNome, sTel, sEmpCNPJ, sEmpEnde, sCodVenda, sCliente, sFPGTO, subTotal, Desconto, Total, Troco : String) : Boolean;
        Procedure AtualizarMysql;
        Procedure AtualizarCaixa;
    end;

var
    FrmVendas: TFrmVendas;
    VendaAberta: Boolean;

    //procedure SQL atualiza_estoque

implementation

{$R *.dfm}

uses Udm, UFrmConsCliente, UFrmConsProduto, UFrmCupom, UfrmLogin, untImpressao, UFrmFechamento;

{ TFrmVendas }

{
  UPDATE VENDAS SET COD_VENDEDOR = :COD_VENDEDOR, COD_CLIENTE = :COD_CLI, COD_FPGTO = :COD_FP, TOTAL = :TOT, DATA = :DT, HORA = :HR WHERE VENDAS.COD_VENDAS = :cod
}

function Excluir(Tabela, campo_tabela, campo_excluir: string): Boolean;
begin
    try
        try
           // //DmDados.IBTransaction1.StartTransaction;
            with DmDados.Q_executa do
            begin
                sql.Clear;
                sql.Add('DELETE FROM ' + tabela + ' WHERE ' + campo_tabela + ' = ' + #39 + campo_excluir + #39);
                ExecSQL;
            end;

            Result := true;
          //  //DmDados.IBTransaction1.CommitRetaining;

        except
          //  DmDados.IBTransaction1.RollbackRetaining;
            Result := false;
        end;
    finally
        DmDados.Q_executa.Close;
    end;

end;

function TFrmVendas.FinnalizaVenda(Cod_Venda: Integer): Boolean;
begin
    try
        try
            ////DmDados.IBTransaction1.StartTransaction;
            with DmDados.Q_executa do
            begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE VENDAS SET COD_VENDEDOR = :COD_VENDEDOR, COD_CLIENTE = :COD_CLI, COD_FPGTO = :COD_FP, TOTAL = :TOT, DATA = :DT, HORA = :HR, OBS = :OBS, DIAS_RECEBER = :DIAS WHERE VENDAS.COD_VENDAS = :cod');
                ParamByName('cod').Value := Cod_Venda;
                ParamByName('cod_vendedor').Value := 1;
                ParamByName('cod_cli').Value := EDT_Cliente.Text;
                ParamByName('cod_fp').Value := EDT_CondPagto.ItemIndex;
                ParamByName('tot').Value := EdtTotal.Value;
                ParamByName('dt').Value := Date;
                ParamByName('hr').Value := Time;
                ParamByName('obs').Value := Memo1.Text;
                ParamByName('dias').Value := 0;

                {if (edt_CondPagto.ItemIndex  = 1) then
                begin
                  ParamByName('dias').Value := 0;
                end;

                if (edt_CondPagto.ItemIndex = 2) then
                begin
                  ParamByName('dias').Value := 1;
                end;

                if (edt_CondPagto.ItemIndex = 3) then
                begin
                  ParamByName('dias').Value := 14;
                end;

                if (edt_CondPagto.ItemIndex = 4) then
                begin
                  ParamByName('dias').Value := DateRecebimento.Date - Date;
                end;        }

                ExecSQL;
            end;

           // //DmDados.IBTransaction1.CommitRetaining;

            cdsitensVendas.First;

            while not cdsitensVendas.Eof do
            begin
                // Salva o item da venda e baixa no estoque
                BaixaItemVenda(spCodVenda.Value, cdsitensVendascod.Value, DmDados.Usuario_Empresa , 0, cdsitensVendasqtd.Value, cdsitensVendasTotal_Item.Value);
                cdsitensVendas.Next;
            end;

            Result := True;
            AtualizarCaixa;

        except
            on e: exception do
            begin
               ShowMessage('Erro, venda n�o salva!!! '+ e.Message);
               // DmDados.IBTransaction1.RollbackRetaining;
                Result := False;
            end;
        end;

    DmDados.Q_executa.Close;
    except on e: exception do begin
      ShowMessage('Erro, venda n�o salva!!! '+ e.Message);
    end;

    end;

end;

function TFrmVendas.PegaCodVenda: Integer;
var
    IDVenda: Integer;
begin
    try
        try
            ////DmDados.IBTransaction1.StartTransaction;

            with DmDados.Q_executa do
            begin
                Close;
                SQL.Clear;
                SQL.Add('INSERT INTO VENDAS(COD_VENDEDOR,COD_CLIENTE,COD_FPGTO,TOTAL,DATA,HORA,EMPRESA) VALUES(:cod_vendedor,:cod_cli,:cod_fp,:tot,:dt,:hr, :empresa)');
                ParamByName('cod_vendedor').Value := 1;
                ParamByName('cod_cli').Value := 0;
                ParamByName('cod_fp').Value := 0;
                ParamByName('tot').Value := 0;
                ParamByName('dt').Value := Date;
                ParamByName('hr').Value := Time;
                ParamByName('empresa').Value := DmDados.Usuario_Empresa;

                ExecSQL;
            end;

            //DmDados.IBTransaction1.CommitRetaining;

            IDVenda := GeneratorID('GEN_VENDAS_ID', DmDados.conexao, False);

            Result := IDVenda;

        except
            on e: exception do
            begin
                ShowMessage( e.Message );
                Abort;
                //Result := 0;
            end;
        end;
    finally
        DmDados.Q_executa.Close;
    end;

    AtualizarCaixa;

end;

procedure TFrmVendas.radioMotivoRetiradaClick(Sender: TObject);
begin
   edtMotivo.Visible         := radioMotivoRetirada.ItemIndex = 2;
   lblMotivoRetirada.Visible := radioMotivoRetirada.ItemIndex = 2;

end;

procedure TFrmVendas.SalvarVenda;
var
  Total : String;
begin
        if (edtRecebido.Value < EdtTotal.Value) then
        begin
            Application.MessageBox('O valor recebdo � menor que o valor da venda, Por favor corrigir!', 'Erro', mb_ok + MB_ICONERROR);
            edtRecebido.SetFocus;
            Exit;
        end;

        if application.MessageBox('Deseja finaliza a venda?', 'Finaliza��o de Venda', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton1) = 6 then
        begin
            Total := lbTotal.Caption;
            if (FinnalizaVenda(spCodVenda.Value)) then
            begin
                //grdVendas.Color := clBtnFace;
                grdVendas.Enabled := False;

                //mskCodigo.Color := clBtnFace;
                mskCodigo.Enabled := False;

                ////mskQuantidade.Color := clBtnFace
                mskQuantidade.Enabled := False;

                LBpRODUTO.Caption := '';
                mskCodigo.Clear;
                mskQuantidade.Clear;
                edtValorUni.Clear;
                edTotalItem.Clear;
                //EdtTotal.Clear;

                edtRecebido.Clear;
                EDT_Cliente.Clear;
                EDT_CondPagto.ItemIndex := 0;
                edtTroco.Clear;
                Memo1.Clear;


                if (PNL_Fechamento.Visible = true) then
                begin
                    PNL_Fechamento.Visible := False;
                end;

                if application.MessageBox('Deseja finaliza a venda e imprimir o cumpom?', 'Cancelamento de Venda', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton2) = 6 then
                begin
                   DmDados.tb_empresa.Close;
                   DmDados.tb_empresa.Open();
                   DmDados.tb_empresa.Locate('COD_EMP',DmDados.Usuario_Empresa, []);


                  if ImprimeCupomV2( 40,DmDados.tb_empresaFANTASIA_EMP.AsString,DmDados.tb_empresaTEL_EMP.AsString,DmDados.tb_empresaCNPJ_EMP.Value,DmDados.tb_empresaEND_EMP.AsString, Label8.Caption,
                  lbCliente.Caption, Lbfp.Caption, formatfloat('##,###,##0.00', StrToFloat(lbTotalCom.Caption)), formatfloat('##,###,##0.00', EdtDesconto.Value), formatfloat('##,###,##0.00', EdtTotal.Value),
                  formatfloat('##,###,##0.00', edtTroco.Value)) then
                  begin
                    //ShowMessage('O cupom foi impresso com sucesso!');
                  end;


                end;

                lbCliente.Caption := '';
                Lbfp.Caption := '';

                EdtTotal.Clear;

                // S� depois de perguntar de quer imprimir o cupom que ele fecha os itens da venda
                cdsitensVendas.Close;

              // Fecha a Venda
                VendaAberta := false;

                if ACBrPosPrinter1.Ativo then
                  ACBrPosPrinter1.ImprimirLinha('</abre_gaveta>');


                  ShowMessage('Valor '+lbTotalCom.Caption+' salvo com sucesso');
            end;

        end;
        AtualizarMysql;
end;

procedure TFrmVendas.EDT_ClienteChange(Sender: TObject);
begin
    if EDT_Cliente.Text='' then
      EDT_Cliente.Text := '1';

    if (EDT_Cliente.Text <> '') then
    begin
        with Q_Clientes do
        begin
            Close;
            ParamByName('cod').Value := EDT_Cliente.Text;
            Open;
            FetchAll;
        end;

        if (Q_Clientes.RecordCount > 0) then
        begin
            lbCliente.Caption := Q_ClientesNOME_CLI.AsString;
            EdtLimitCli.Value := Q_ClientesLIMITE_CLI.Value;
        end
        else
        begin
            lbCliente.Caption := 'Nada foi encontrado...'
        end;
    end;
end;

procedure TFrmVendas.EDT_CondPagtoChange(Sender: TObject);
begin
    if (EDT_CondPagto.ItemIndex < 0) then
    begin
        with Q_FPGTO do
        begin
            Close;
            ParamByName('cod').Value := EDT_CondPagto.ItemIndex;
            Open;
            FetchAll;
        end;

        if (Q_FPGTO.RecordCount > 0) then
        begin
            Lbfp.Caption := Q_FPGTODESCRICAO.AsString;
        end
        else
        begin
            Lbfp.Caption := 'Nada foi encontrado...'
        end;
    end;

    if (EDT_CondPagto.ItemIndex = 4) then
    begin
      edtRecebido.Visible := false;
    end
    else
    begin
      edtRecebido.Visible := true;
    end;
end;

procedure TFrmVendas.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if (Key = VK_F2) then
    begin
      SpeedButton1Click(Self);
    end;

    if (Key = VK_F4) then
    begin
      SpeedButton2Click(Self);    
    end;

    if (Key = VK_Escape) then
    begin
        if (PNL_Fechamento.Visible = true) then
        begin
            PNL_Fechamento.Visible := False;
        end;
    end;

    if (Key = VK_F5) then
    begin
      SpeedButton3Click(Self);
    end;

    if (Key = VK_F10) then
    begin
      SpeedButton5Click(Self);
    end;


    if (Key = VK_F11) and (Shift = [ssCtrl]) then
    begin
      //gridTotais.Visible := not gridTotais.Visible;
      pnlExtrato.Visible   := not pnlExtrato.Visible;
      dbTotalX.Visible   := not dbTotalX.Visible;
      bAtivar.Visible    := not bAtivar.Visible;
      BtnTeste.Visible   := not BtnTeste.Visible;
      edtIDdel.Visible   := not edtIDdel.Visible;
      btnDel.Visible     := not btnDel.Visible;
      cbDesligaMysql.Visible     := not cbDesligaMysql.Visible;
      btnDespesa.Visible     := not btnDespesa.Visible;
    end;



//gridTotais;


end;

procedure TFrmVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
{    if Key = #13 then
    begin
        Key := #0;
        SelectNext(ActiveControl, True, True);
    end;   }



end;

procedure TFrmVendas.FormShow(Sender: TObject);
var
   r : TRect;
begin
    //SystemParametersInfo(SPI_GETWORKAREA, 0, @r,0) ;
    //SetBounds(r.Left, r.Top, r.Right-r.Left, r.Bottom-r.Top) ;

    VendaAberta := false;

    //grdVendas.Color := clBtnFace;
    grdVendas.Enabled := False;

    //mskCodigo.Color := clBtnFace;
    mskCodigo.Enabled := False;

    ////mskQuantidade.Color := clBtnFace
    mskQuantidade.Enabled := False;
end;

procedure TFrmVendas.mskCodigoChange(Sender: TObject);
begin
  //7894900014211
    if (mskCodigo.Text <> '') then
    begin
        with QProd_CodBarra do
        begin
            Close;
            ParamByName('cod').Value := mskCodigo.Text;
            ParamByName('EMP').Value := DmDados.Usuario_Empresa;
            Open;
            FetchAll;
        end;

        if (QProd_CodBarra.RecordCount > 0) then
        begin
            LBpRODUTO.Caption := QProd_CodBarraNOME_PRO.AsString;

            if (QProd_CodBarraPRECO_PROMOCAO.Value <> 0) then
            begin
              edtValorUni.Value := QProd_CodBarraPRECO_PROMOCAO.Value;
            end
            else
            begin

                if QProd_CodBarraPRECO_VAREJO_EMP.Value>0 then
                  edtValorUni.Value := QProd_CodBarraPRECO_VAREJO_EMP.Value
                else
                  edtValorUni.Value := QProd_CodBarraPRECO_VAREJO.Value;
            end;
        end
        else
        begin
            LBpRODUTO.Caption := 'PRODUTO N�O ENCONTRADO...'
        end;

    end;
end;

procedure TFrmVendas.mskCodigoKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if (Key = VK_F3) then
    begin
        Application.CreateForm(TFrmConsProduto, FrmConsProduto);
        FrmConsProduto.Tag := 0;
        FrmConsProduto.Showmodal;
        FrmConsProduto.Hide;
        FrmConsProduto.Free;
    end;

    if (Key = VK_Return) then
    begin
        mskQuantidade.Value := 1;

        if (mskQuantidade.Value > 0) then
        begin
          edTotalItem.Value := ({QProd_CodBarraPRECO_VAREJO.Value} edtValorUni.Value * mskQuantidade.Value);
        end
        else
        begin
          Application.MessageBox('Voc� deve informar a quantidade.','Aviso', MB_OK+MB_ICONWARNING);
          mskQuantidade.Value := 1;
          mskQuantidade.SetFocus;
          Abort;
        end;

        mskQuantidade.SetFocus;

    end;

end;

procedure TFrmVendas.EdtTotalChange(Sender: TObject);
begin
    lbTotal.Caption := formatfloat('R$ ##,###,##0.00', EdtTotal.Value);
end;

procedure TFrmVendas.mskQuantidadeChange(Sender: TObject);
begin
    edTotalItem.Value := (edtValorUni.Value * mskQuantidade.Value);
end;

procedure TFrmVendas.edTotalItemChange(Sender: TObject);
begin
    lbTotalIem.Caption := formatfloat('##,###,##0.00', edTotalItem.Value);
end;

procedure TFrmVendas.edtValorUniChange(Sender: TObject);
begin
    lbPrecoUnitario.Caption := formatfloat('##,###,##0.00', edtValorUni.Value);
    edTotalItem.Value := (edtValorUni.Value * mskQuantidade.Value);

end;

procedure TFrmVendas.edtValorUniKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

    if (Key = VK_Return) then
    begin
      AtalhoIncluirItemVenda;
    end;

end;

procedure TFrmVendas.edtTrocoChange(Sender: TObject);
begin
    fldTroco.Caption := formatfloat('##,###,##0.00', edtTroco.Value);
end;

procedure TFrmVendas.AddItemVenda;
begin
    try

        cdsitensVendas.Append;
        cdsitensVendascod.Value := QProd_CodBarraCOD_PRO.Value;
        cdsitensVendasdescricao.Value := QProd_CodBarraNOME_PRO.Value;
        cdsitensVendasqtd.Value := mskQuantidade.Value;
        cdsitensVendasvl_item.Value := edtValorUni.Value;
        cdsitensVendasTotal_Item.Value := edTotalItem.Value;
        cdsitensVendascodBarra.Value := QProd_CodBarraCODIGO_BARRA_PRO.AsString;
        //cdsitensVendasvl_unitario.Value := vlunit;

        if QProd_CodBarraCODIGO_BARRA_PRO.AsString = '437' then
        begin
          cdsitensVendasvl_item.AsFloat := cdsitensVendasvl_item.AsFloat*-1;
          cdsitensVendasvl_unitario.AsFloat := cdsitensVendasvl_unitario.AsFloat *-1;
          cdsitensVendasTotal_Item.AsFloat := cdsitensVendasTotal_Item.AsFloat *-1;
        end;

        cdsitensVendas.Post;

        EdtTotal.Value := cdsitensVendasTotal.Value;

        mskCodigo.SetFocus;

    except
        on e: exception do
        begin
            Application.MessageBox(PChar('Erro ao tentar inserir o produto na venda!' + #13 + 'Obs: ' + e.Message), 'Erro', mb_ok + MB_ICONERROR);
        end;
    end;

end;

procedure TFrmVendas.FormCreate(Sender: TObject);
var
  I: TACBrPosPrinterModelo;
  J: TACBrPosPaginaCodigo;
  K: Integer;
begin

    WindowState := wsMaximized;



    Application.CreateForm(TFrrmLogin,FrrmLogin);
    FrrmLogin.ShowModal;
    FrrmLogin.Hide;
    FrrmLogin.Free;


  cdsitensVendas.CreateDataSet;



  cbxModelo.Items.Clear ;
  For I := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
     cbxModelo.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(I) ) ) ;

{  cbxPagCodigo.Items.Clear ;
  For J := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
     cbxPagCodigo.Items.Add( GetEnumName(TypeInfo(TACBrPosPaginaCodigo), integer(J) ) ) ;
 }


  cbxPorta.Items.Clear;
  ACBrPosPrinter1.Device.AcharPortasSeriais( cbxPorta.Items );
  cbxPorta.Items.Add('COM3') ;


  cbxModelo.ItemIndex := 2;
  cbxPorta.ItemIndex := 1;

   if not (ParamStr(1)='CAIXA_TESTE') then
      bAtivar.Click;

  AtualizarCaixa;


   DmDados.tb_empresa.Close;
   DmDados.tb_empresa.Open();
   DmDados.tb_empresa.Locate('COD_EMP',DmDados.Usuario_Empresa, []);


   sqlFuncionario.Close;
   sqlFuncionario.ParamByName('EMPRESA').AsInteger := DmDados.Usuario_Empresa;
   sqlFuncionario.Open;



end;

procedure TFrmVendas.mskQuantidadeKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if (Key = VK_Return) then
    begin
      AtalhoIncluirItemVenda;
    end;
end;

procedure TFrmVendas.grdVendasKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if (Key = VK_F6) then
    begin
        try
          if application.MessageBox('Deseja realmente excluir o produto da venda?', 'Cancelamento de Venda', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton2) = 6 then
          begin
              cdsitensVendas.Delete;

              if (cdsitensVendas.RecordCount > 0) then
              begin
                EdtTotal.Value := cdsitensVendasTotal.Value;
              end
              else
              begin
                EdtTotal.Value := 0;
              end;

              LBpRODUTO.Caption := '';
              mskCodigo.Clear;
              mskQuantidade.Clear;
              edtValorUni.Clear;
              edTotalItem.Clear;
              mskCodigo.SetFocus;
          end;
        except
            on e: exception do
            begin
                Application.MessageBox(PChar('Erro ao tentar excluir o produto na venda!' + #13 + 'Obs: ' + e.Message), 'Erro', mb_ok + MB_ICONERROR);
            end;
        end;
    end;
end;

procedure TFrmVendas.edtRecebidoKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);

begin
    if (Key = VK_Return) then
    begin
       SalvarVenda;


    end;

AtualizarCaixa;

end;

procedure TFrmVendas.edtRecebidoChange(Sender: TObject);
begin
    edtTroco.Value := (edtRecebido.Value - EdtTotal.Value);
end;

procedure TFrmVendas.EDT_ClienteExit(Sender: TObject);
begin
    if (EDT_Cliente.Text = '') then
    begin
        Application.MessageBox('Por favor informe o cliente para a venda!', 'Erro', mb_ok + MB_ICONERROR);
        if (PNL_Fechamento.Visible) then
        begin
            //EDT_Cliente.SetFocus;
        end;
        Abort;
    end;
end;

procedure TFrmVendas.EDT_CondPagtoExit(Sender: TObject);
begin
    if (EDT_CondPagto.ItemIndex < 0) then
    begin
        Application.MessageBox('Por favor informe a forma de pagamento para a venda!', 'Erro', mb_ok + MB_ICONERROR);
        if (PNL_Fechamento.Visible) then
        begin
            EDT_CondPagto.SetFocus;
        end;
        Abort;
    end;

    if (EDT_CondPagto.ItemIndex = 4) then
    begin
      if (EdtTotal.Value > Q_ClientesLIMITE_CLI.Value) then
      begin
        Application.MessageBox('O limite do cliente � menor do que o valor da venda!', 'Erro', mb_ok + MB_ICONERROR);
        //EDT_Cliente.SetFocus;
        Abort;
      end;

      if (EDT_CondPagto.ItemIndex = 4) then
      begin
        if (pnlObs.Visible = false) then
        begin
          DateRecebimento.Visible := true;
          DateRecebimento.Date := Date;
          pnlObs.Visible := true;
          Memo1.SetFocus;
        end;
      end;
    end;

    if (EDT_CondPagto.ItemIndex = 2) then  // Cart�o de d�bito
    begin
      DateRecebimento.Visible := true;
      DateRecebimento.Date := Date + 1;
      edtRecebido.Visible := false;
    end;

    if (EDT_CondPagto.ItemIndex = 3) then  // Cart�o de Cr�dito
    begin
      DateRecebimento.Visible := true;
      DateRecebimento.Date := Date + 14;
      edtRecebido.Visible := false;
    end;

    if (EDT_CondPagto.ItemIndex = 1) then  // Cart�o de Cr�dito
    begin
      DateRecebimento.Visible := false;
      edtRecebido.Visible := true;
    end;

end;

procedure TFrmVendas.mskCodigoExit(Sender: TObject);
begin
   { if (QProd_CodBarra.RecordCount > 0) then
    begin
        //LBpRODUTO.Caption := QProd_CodBarraNOME_PRO.AsString;
        //edtValorUni.Value := QProd_CodBarraPRECO_VAREJO.Value;
    end
    else
    begin
        Application.MessageBox('Por favor, insira um produto v�lido!', 'Erro', mb_ok + MB_ICONERROR);
        mskCodigo.SetFocus;
        Exit;
    end;}
end;

procedure TFrmVendas.EDT_ClienteKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if (Key = VK_F3) then
    begin
        //Showmessage('Abrindo o forme de pesquisa');
        Application.CreateForm(TFrmConsCliente, FrmConsCliente);
        FrmConsCliente.Tag := 0;
        FrmConsCliente.ShowModal;
        FrmConsCliente.Hide;
        FrmConsCliente.Free;
    end;

AtualizarCaixa;
end;

function TFrmVendas.GeneratorID(aName: string; Connection: TFDConnection;
    Incrementa: Boolean): integer;
var
    Qry: TFDQuery;
begin
    Qry := TFDQuery.Create(nil);
    try
        Qry.Connection  := Connection;
        if Incrementa then
            //Qry.SQL.Add('SELECT (AUTO_INCREMENT+1) AS ID FROM information_schema.tables WHERE table_name = "'+aName+'"')
            Qry.SQL.Add('SELECT LAST_INSERT_ID()+1')
            //Qry.SQL.Add('SELECT GEN_ID(' + aName + ', 1) FROM RDB$DATABASE')
        else
            //Qry.SQL.Add('SELECT (AUTO_INCREMENT) AS ID FROM information_schema.tables WHERE table_name = "'+aName+'"');
            Qry.SQL.Add('SELECT LAST_INSERT_ID()');
            //Qry.SQL.Add('SELECT GEN_ID(' + aName + ', 0) FROM RDB$DATABASE');
        Qry.Open;
        Result := Qry.Fields[0].AsInteger;
    finally
        FreeAndNil(Qry);
    end;
end;

procedure TFrmVendas.BitBtn1Click(Sender: TObject);
var
    IDVenda: Integer;
begin
  // select gen_id(nome_generator,1) from rdb$database
    IDVenda := GeneratorID('GEN_VENDAS_ID', DmDados.conexao, False);
    spCodVenda.Value := IDVenda;
  //ShowMessage('O ID da Venda �: '+ IntToStr(IDVenda));
end;

procedure TFrmVendas.AtivarCaixa;
begin
  try

      if ACBrPosPrinter1.Ativo then
      begin
         ACBrPosPrinter1.Desativar ;
         bAtivar.Caption := 'Ativar' ;
         //btSerial.Enabled := True ;
      end
      else
      begin
           Self.Enabled := False;
           ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbxModelo.ItemIndex );
           ACBrPosPrinter1.Porta  := cbxPorta.Text;
           {ACBrPosPrinter1.ArqLOG := edLog.Text;
           ACBrPosPrinter1.LinhasBuffer := seLinhasBuffer.Value;
           ACBrPosPrinter1.LinhasEntreCupons := seLinhasPular.Value;
           ACBrPosPrinter1.EspacoEntreLinhas := seEspLinhas.Value;
           ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
           ACBrPosPrinter1.CortaPapel := cbCortarPapel.Checked;
           ACBrPosPrinter1.ControlePorta := cbControlePorta.Checked;
           ACBrPosPrinter1.TraduzirTags := cbTraduzirTags.Checked;
           ACBrPosPrinter1.IgnorarTags := cbIgnorarTags.Checked;
           ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo( cbxPagCodigo.ItemIndex );
           ACBrPosPrinter1.ConfigBarras.MostrarCodigo := cbHRI.Checked;
           ACBrPosPrinter1.ConfigBarras.LarguraLinha := seBarrasLargura.Value;
           ACBrPosPrinter1.ConfigBarras.Altura := seBarrasAltura.Value;
           ACBrPosPrinter1.ConfigQRCode.Tipo := seQRCodeTipo.Value;
           ACBrPosPrinter1.ConfigQRCode.LarguraModulo := seQRCodeLarguraModulo.Value;
           ACBrPosPrinter1.ConfigQRCode.ErrorLevel := seQRCodeErrorLevel.Value;
           ACBrPosPrinter1.ConfigLogo.KeyCode1 := seLogoKC1.Value;
           ACBrPosPrinter1.ConfigLogo.KeyCode2 := seLogoKC2.Value;
           ACBrPosPrinter1.ConfigLogo.FatorX := seLogoFatorX.Value;
           ACBrPosPrinter1.ConfigLogo.FatorY := seLogoFatorY.Value;
           }

           ACBrPosPrinter1.Ativar ;

           //btSerial.Enabled := False ;
           bAtivar.Caption := 'Desativar' ;

           //GravarINI ;
      end;


  except on e:exception do begin
    showmessage(e.Message);
  end;

  end ;

 Self.Enabled := True;
 cbxModelo.ItemIndex   := Integer(ACBrPosPrinter1.Modelo) ;
 cbxPorta.Text         := ACBrPosPrinter1.Porta ;

end;

procedure TFrmVendas.AtualizarCaixa;
begin
    qCaixa.Active := False;
    qCaixa.Filtered := False;
    qCaixa.Filter := 'EMPRESA='+IntToStr( DmDados.Usuario_Empresa)  ;
    qCaixa.Filtered := True;
    qCaixa.Active := True;
end;

procedure TFrmVendas.AtualizarMysql;
begin
{
if cbDesligaMysql.Checked then
 exit;

 try
 qCaixa.Last;
if DmDados.TesteMysql then
begin
   DmDados.sqlVendas_Mysql.close;
   DmDados.sqlVendas_Mysql.Open;
   DmDados.sqlVendas_Mysql.Append;
   DmDados.sqlVendas_Mysqlid_venda.AsInteger := qCaixaCOD_VENDAS.AsInteger;
   DmDados.sqlVendas_Mysqldt_ref.AsDateTime  := VarToDateTime( FormatDateTime('yyyy-mm-dd',now) + ' ' + qCaixaHORA.AsString );
   DmDados.sqlVendas_MysqlEMPRESA.AsInteger := 2;
   DmDados.sqlVendas_Mysqlvalor.AsFloat      := qCaixaTOTAL.AsFloat;
   DmDados.sqlVendas_Mysql.post;
   DmDados.sqlVendas_Mysql.Close;



   DmDados.sqlVendas_Itens_Mysql.close;
   DmDados.sqlVendas_Itens_Mysql.Open;
   DmDados.sqlVendas_Itens_Para_Mysql.close;
   DmDados.sqlVendas_Itens_Para_Mysql.Params[0].AsInteger := qCaixaCOD_VENDAS.AsInteger;
   DmDados.sqlVendas_Itens_Para_Mysql.Open;

   DmDados.sqlVendas_Itens_Para_Mysql.First;
   while not DmDados.sqlVendas_Itens_Para_Mysql.Eof do
   begin
     DmDados.sqlVendas_Itens_Mysql.Append;
     DmDados.sqlVendas_Itens_Mysqlcod_item.AsInteger := DmDados.sqlVendas_Itens_Para_MysqlCOD_ITEM.AsInteger;
     DmDados.sqlVendas_Itens_Mysqlid_venda.AsInteger := DmDados.sqlVendas_Itens_Para_MysqlCOD_VENDA.AsInteger;
     DmDados.sqlVendas_Itens_Mysqlcod_prod.AsInteger := DmDados.sqlVendas_Itens_Para_MysqlCOD_PRO.AsInteger;
     DmDados.sqlVendas_Itens_Mysqlquant_item.AsFloat := DmDados.sqlVendas_Itens_Para_MysqlQUANT_ITEM.AsFloat;
     DmDados.sqlVendas_Itens_Mysqlvalor_item.AsFloat := DmDados.sqlVendas_Itens_Para_MysqlVALOR_ITEM.AsFloat;
     DmDados.sqlVendas_Itens_Mysql.post;

   DmDados.sqlVendas_Itens_Para_Mysql.Next;
   end;


end;

except

 end;
      }
end;

procedure TFrmVendas.AtalhoIncluirItemVenda;
begin
  //edtValorUni.Visible := false;
  if (QProd_CodBarra.RecordCount > 0) then
  begin
    if (mskQuantidade.Value > 0) then
    begin
      edTotalItem.Value := ({QProd_CodBarraPRECO_VAREJO.Value} edtValorUni.Value * mskQuantidade.Value);
      AddItemVenda;
    end
    else
    begin
      Application.MessageBox('Voc� deve informar a quantidade.', 'Aviso', MB_OK + MB_ICONWARNING);
      mskQuantidade.Value := 1;
      mskQuantidade.SetFocus;
      Abort;
    end;
  end
  else
  begin
    Application.MessageBox('Voc� deve informar um produto que exista no estoque!', 'Produto n�o encontrado', MB_OK + MB_ICONERROR);
    mskCodigo.SetFocus;
  end;
end;

function TFrmVendas.BaixaItemVenda(COD_VENDA, COD_PRO, COD_EMP, ORDEM: Integer; QUANT_ITEM : Currency; VALOR_ITEM: Currency): Boolean;
var
  Qtdreal, QtdBaixa : String;
begin
    try
        with QtdEstoqueItem do
        begin
            Close;
            ParamByName('cod').Value := COD_PRO;
            Open;
        end;

        Qtdreal := StringReplace( FloatToStr(QUANT_ITEM), ',', '.', [rfReplaceAll] );
          {QtdBaixa := FormatCurr('#,##0', QUANT_ITEM);  }

        //Qtdreal := StrToCurrDef(QtdEstoqueItemQUANT_ESTOQ.AsString,ffNumber,2);

        //valorreal := FormatCurr('#,##0', QtdEstoqueItemQUANT_ESTOQ.Value) - FormatCurr('#,##0', QUANT_ITEM);
         //DmDados.IBTransaction1.StartTransaction;
        //Baixa a Qtd. no Estoque   ERRo AQUI
        with DmDados.Q_executa do
        begin
            Close;
            SQL.Clear;
            //SQL.Add('execute procedure atualiza_estoque ('+IntToStr(COD_PRO)+','+#39+'S'+#39+', '+Qtdreal+')');
            SQL.Add(' UPDATE ');
            SQL.Add('  PRODUTO ');
            SQL.Add(' SET ');
            SQL.Add('  QUANT_ESTOQ = :qtd ');
            SQL.Add(' WHERE ');
            SQL.Add('  COD_PRO = :COD ');
            ParamByName('qtd').Value := (QtdEstoqueItemQUANT_ESTOQ.Value - QUANT_ITEM);
            ParamByName('cod').Value := COD_PRO;
            ExecSQL;
        end;

        //////DmDados.IBTransaction1.CommitRetaining;

        //DmDados.IBTransaction1.StartTransaction;
        with Q_BaixaItem do
        begin
            Close;
            ParamByName('1').Value := COD_VENDA;
            ParamByName('2').Value := COD_PRO;
            ParamByName('3').Value := COD_EMP;
            ParamByName('4').Value := ORDEM;
            ParamByName('5').Value := QUANT_ITEM;
            ParamByName('6').Value := VALOR_ITEM;
            ExecSQL;
        end;

        ////DmDados.IBTransaction1.CommitRetaining;

        Result := True;
    except
        on e: exception do
        begin
            Result := False;
            //Application.MessageBox(PChar('Erro ao tentar inserir o produto na venda!' + #13 + 'Obs: ' + e.Message), 'Erro', mb_ok + MB_ICONERROR);
            ShowMessage('Erro, venda n�o salva!!! '+ e.Message);
        end;
    end;
end;

procedure TFrmVendas.bAtivarClick(Sender: TObject);
begin
 AtivarCaixa;
end;

procedure TFrmVendas.spCodVendaChange(Sender: TObject);
begin
    label8.Caption := Format('%5.5d', [spCodVenda.Value]); // resulta '00123' 5 D�gitos;
end;

procedure TFrmVendas.grdVendasKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
        Key := #0;
        SelectNext(ActiveControl, True, True);
    end;
end;

function TFrmVendas.ImprimeCupomV2(ndeColunas : Integer; sEmpNome, sTel, sEmpCNPJ, sEmpEnde, sCodVenda, sCliente, sFPGTO, subTotal, Desconto, Total, Troco : String):boolean;
var
  sTextoAux : string;
  sData     : string;
  sHoran    : string;

  linhaCupom, linhaRodape, nAux : Integer;
  Total_Item : Currency;

  Function Replicate( Const cTexto: String; Const nQtd: Integer ):String;
Var
   nAux: Integer;
Begin
   Result:= '';

   IF nQtd > 0 Then
   Begin
      For nAux:= 1 To nQtd Do
          Result:= Result + cTexto;
   End;
End;

begin
   if not ACBrPosPrinter1.Ativo then  exit;

    Try
      //AssignFile(ArqPrn,DmDados.ImpressoraCupom); // padr�o 'LPT1'
      //AssignFile(ArqPrn,'d:\cupom.txt');
      //ReWrite(ArqPrn);

      //LinhaAtual:=0;

      sData  := DateToStr(Date);
      sHoran := TimeToStr(Now());

      sTextoAux := sData + ', ' + sHoran + '                  ' + 'DOC.' + StrZero(sCodVenda,6);
      ACBrPosPrinter1.Imprimir(Padc(sEmpNome,ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir(Padc('Tel: '+sTel,ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir(Padc('CNPJ: '+FormataCNPJ(sEmpCNPJ),ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir(Padc(sEmpEnde,ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir(sTextoAux);
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir(Replicate('-',ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir(PadC('COMPROVANTE SEM VALOR FISCAL',ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir(Replicate('-',ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);
//      ACBrPosPrinter1.Imprimir('');
//      ACBrPosPrinter1.PularLinhas(1);
//      ACBrPosPrinter1.Imprimir('CLIENTE: '+ sCliente          );
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir('FORMA DE PGTO: '+ sFPGTO          );
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir('');
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir(Replicate('-',ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir('PRODUTO	    QTD  X  VL.UNIT  TOTAL');
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir(Replicate('-',ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);


      {Carrego os itens da Venda}
      linhaCupom := 14;
      FrmVendas.cdsitensVendas.First;

      while not FrmVendas.cdsitensVendas.Eof do
      begin
        inc(linhaCupom);
        ACBrPosPrinter1.Imprimir(Copy(FrmVendas.cdsitensVendasdescricao.AsString,1, ndeColunas));
        inc(linhaCupom);
        Total_Item := (FrmVendas.cdsitensVendasqtd.Value) * (FrmVendas.cdsitensVendasvl_item.Value);
        ACBrPosPrinter1.Imprimir(Padr(FormatFloat('#,###,###,##0.000', FrmVendas.cdsitensVendasqtd.Value) + '  X  ' + FormatFloat('#,###,###,##0.00', FrmVendas.cdsitensVendasvl_item.Value) + '   ' + FormatFloat('#,###,###,##0.00', Total_Item),ndeColunas));
        ACBrPosPrinter1.PularLinhas(1);
        FrmVendas.cdsitensVendas.Next;
      end;


      inc(linhaCupom);
      ACBrPosPrinter1.Imprimir(Replicate('-',ndeColunas));
      inc(linhaCupom);
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir(Padr('SUB-TOTAL: R$ ' + FrmVendas.lbTotalCom.Caption,ndeColunas));
      inc(linhaCupom);
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir(Padr('DESCONTO: R$ ' + formatfloat('##,###,##0.00', FrmVendas.EdtDesconto.Value),ndeColunas));
      inc(linhaCupom);
      ACBrPosPrinter1.PularLinhas(1);
      ACBrPosPrinter1.Imprimir(Padr('TOTAL CUPOM: R$ ' + FrmVendas.lbTotal.Caption,ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);

      if cbFaltaPagar.Checked then
      begin
        inc(linhaCupom);
        ACBrPosPrinter1.PularLinhas(1);
        ACBrPosPrinter1.Imprimir(Padr('Falta Pagar: R$ ' + formatfloat('##,###,##0.00', FrmVendas.edtFaltaPagar.Value),ndeColunas));
        ACBrPosPrinter1.PularLinhas(1);
      end;

      if (FrmVendas.EDT_CondPagto.ItemIndex = 4) then
      begin
        inc(linhaCupom);
        ACBrPosPrinter1.Imprimir('SALDO (CREDITO): R$ ' + formatfloat('##,###,##0.00', FrmVendas.EdtLimitCli.Value));
        ACBrPosPrinter1.PularLinhas(1);
      end;

      inc(linhaCupom);
      ACBrPosPrinter1.Imprimir(Replicate('-',ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);
      inc(linhaCupom);
      ACBrPosPrinter1.Imprimir(Padc('OBRIGADO PELA PREFERENCIA',ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);
      inc(linhaCupom);
      ACBrPosPrinter1.Imprimir(Replicate('-',ndeColunas));
      ACBrPosPrinter1.PularLinhas(1);
      inc(linhaCupom);
      ACBrPosPrinter1.PularLinhas(1);
      inc(linhaCupom);
      ACBrPosPrinter1.PularLinhas(1);
      inc(linhaCupom);
      ACBrPosPrinter1.PularLinhas(1);

      ACBrPosPrinter1.PularLinhas(1);



      ACBrPosPrinter1.CortarPapel(false);
      ACBrPosPrinter1.ImprimirLinha('</abre_gaveta>');
      //CloseFile(ArqPrn);

      // Impresso com sucesso!
      Result:= True;
    except
      Result:= False;
      MessageDlg('IMPRESSORA N�O ESTA ATIVA', mtWarning, [mbOk], 0 );
    end;



end;

procedure TFrmVendas.EDT_ClienteKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
        Key := #0;
        SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFrmVendas.EDT_CondPagtoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
        Key := #0;
        SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFrmVendas.BitBtn2Click(Sender: TObject);
begin
  pnlObs.Visible := false;
  EdtDesconto.SetFocus;
end;

procedure TFrmVendas.EdtDescontoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
        Key := #0;
        SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFrmVendas.EdtDescontoEnter(Sender: TObject);
begin
  EdtDesconto.Value := 0;
  EdtDesconto.SelectAll;
end;

procedure TFrmVendas.EdtDescontoExit(Sender: TObject);
var
  Total : Double;
  Total_ : String;
begin
  Total :=  cdsitensVendasTotal.Value;

  if (EdtDesconto.Value > 0) then
  begin
    EdtTotal.Value := Total - EdtDesconto.Value;
    lbTotalCom.Caption := formatfloat('##,###,##0.00', EdtTotal.Value);
  end
  else
  begin
    EdtTotal.Value := cdsitensVendasTotal.Value;
    lbTotalCom.Caption := formatfloat('##,###,##0.00', StrToFloat(lbSubTotal.Caption));
  end;

end;

procedure TFrmVendas.btnDelClick(Sender: TObject);
begin

try
DmDados.sqlVendasDeletarMysql.close;
DmDados.sqlItensVendasDeletarMysql.close;

DmDados.sqlVendasDeletar.close;
DmDados.sqlItensVendasDeletar.close;



DmDados.sqlVendasDeletarMysql.Params[0].AsInteger       := edtIDdel.AsInteger;
DmDados.sqlItensVendasDeletarMysql.Params[0].AsInteger  := edtIDdel.AsInteger;
DmDados.sqlVendasDeletar.Params[0].AsInteger            := edtIDdel.AsInteger;
DmDados.sqlItensVendasDeletar.Params[0].AsInteger       := edtIDdel.AsInteger;


DmDados.sqlVendasDeletarMysql.ExecSQL;
DmDados.sqlItensVendasDeletarMysql.ExecSQL;
DmDados.sqlVendasDeletar.ExecSQL;
DmDados.sqlItensVendasDeletar.ExecSQL;

except on e:exception do begin
  showmessage(e.Message);
end;

end;

end;

procedure TFrmVendas.btnDespesaClick(Sender: TObject);
var FRMDespesas : TFRMDespesas;
begin

  FRMDespesas := TFRMDespesas.Create(self);
  FRMDespesas.ShowModal;
  FRMDespesas.Free;


end;

procedure TFrmVendas.btnFP_DinheiroClick(Sender: TObject);
begin
    btnFP_Dinheiro.Font.Color := clLime;
    btnFP_Debito.Font.Color   := clLime;
    btnFP_Credito.Font.Color  := clLime;



  if  sender = btnFP_Dinheiro then
  begin
    Lbfp.Caption := btnFP_Dinheiro.Caption;
    btnFP_Dinheiro.Font.Color := clWhite;
    EDT_CondPagto.ItemIndex := 0;
    btnFP_Dinheiro.Enabled := False;
    btnFP_Debito.Enabled   := True;
    btnFP_Credito.Enabled  := True;
    SpeedButton6.Caption  := 'Finalizar como: ' + btnFP_Dinheiro.Caption;
  end;


  if  sender = btnFP_Debito then
  begin
    Lbfp.Caption := btnFP_Debito.Caption;
    btnFP_Debito.Font.Color   := clWhite;
    EDT_CondPagto.ItemIndex := 1;
    btnFP_Dinheiro.Enabled := True;
    btnFP_Debito.Enabled   := False;
    btnFP_Credito.Enabled  := True;
    SpeedButton6.Caption  := 'Finalizar como: ' + btnFP_Debito.Caption;
  end;

  if  sender = btnFP_Credito then
  begin
    Lbfp.Caption := btnFP_Credito.Caption;
    btnFP_Credito.Font.Color  := clWhite;
    EDT_CondPagto.ItemIndex := 2;
    btnFP_Dinheiro.Enabled := True;
    btnFP_Debito.Enabled   := True;
    btnFP_Credito.Enabled  := False;
    SpeedButton6.Caption  := 'Finalizar como: ' + btnFP_Credito.Caption;
  end;

end;

procedure TFrmVendas.btnImprimirClick(Sender: TObject);
var
  I: Integer;
begin
  cdsRelGenerico.Close;
  cdsRelGenerico.Open;
  cdsRelGenerico.EmptyDataSet;

  for I := 0 to mmImp.Lines.Count do
  begin
    cdsRelGenerico.Append;
    cdsRelGenericoLinha.AsString := mmImp.Lines.Strings[i];
    cdsRelGenerico.Post;
  end;

  relGenerico.Print;

end;

procedure TFrmVendas.btnCupomClick(Sender: TObject);
VAR slLista : TStringList;
  sTextoAux : string;
  sData     : string;
  sHoran, sCodVenda    : string;

  linhaCupom, linhaRodape, nAux , ndeColunas: Integer;
  Total_Item : Currency;
 Function Replicate( Const cTexto: String; Const nQtd: Integer ):String;
Var
   nAux: Integer;
Begin
   Result:= '';

   IF nQtd > 0 Then
   Begin
      For nAux:= 1 To nQtd Do
          Result:= Result + cTexto;
   End;
End;

begin
  sCodVenda := qCaixaCOD_VENDAS.AsString;
  qRel.Close;
  qRel.ParamByName('COD_VENDAS').AsInteger := StrToInt(sCodVenda);
  qRel.Open();
  ndeColunas := 50;


  slLista := TStringList.Create;

    sData  := DateToStr(Date);
    sHoran := TimeToStr(Now());

    sTextoAux := sData + ', ' + sHoran + '  ' + 'DOC.' + StrZero(sCodVenda,6);


    slLista.Add(Padc(qRelFANTASIA_EMP.AsString ,ndeColunas));
    slLista.Add(Padc('Tel: '+qRelTEL_EMP.AsString ,ndeColunas));
    slLista.Add(Padc('CNPJ: '+FormataCNPJ(qRelCNPJ_EMP.AsString),ndeColunas));
    slLista.Add(Padc(qRelEND_EMP.AsString + ' - ' + qRelBAI_EMP.AsString  ,ndeColunas));
    slLista.Add(sTextoAux);
    slLista.Add(Replicate('-',ndeColunas));
    slLista.Add(PadC('COMPROVANTE SEM VALOR FISCAL',ndeColunas));
    slLista.Add(Replicate('-',ndeColunas));
    slLista.Add('FORMA DE PGTO: '+ qRelFORMAS_PAGAMENTO.AsString );
    slLista.Add('');
    slLista.Add('PRODUTO	        QTD  X  VL.UNIT  TOTAL');
    slLista.Add(Replicate('-',ndeColunas));
  while not qRel.Eof do
  begin
        inc(linhaCupom);
        slLista.Add(Copy(qRelDESC_CUPOM.AsString,1, ndeColunas));
        inc(linhaCupom);
        Total_Item := qRelTOTAL.AsFloat;
        slLista.Add(Padr(FormatFloat('#,###,###,##0.000', qRelQUANT_ITEM.AsFloat ) + '  X  ' + FormatFloat('#,###,###,##0.00', FrmVendas.cdsitensVendasvl_item.Value) + '   ' + FormatFloat('#,###,###,##0.00', Total_Item),ndeColunas));
  qRel.Next;
  end;
      slLista.Add(Replicate('-',ndeColunas));
      slLista.Add('');
      //slLista.Add(Padr('SUB-TOTAL: R$ ' + qRelTOTAL.AsFloat ,ndeColunas));
      //slLista.Add('');
      //slLista.Add(Padr('DESCONTO: R$ ' + formatfloat('##,###,##0.00', FrmVendas.EdtDesconto.Value),ndeColunas));
      slLista.Add(Padr('TOTAL CUPOM: R$ ' + qRelTOTAL.AsString  ,ndeColunas));


      slLista.Add(Replicate('-',ndeColunas));
      slLista.Add('');
      slLista.Add(Padc('OBRIGADO PELA PREFERENCIA',ndeColunas));
      slLista.Add('');
      slLista.Add(Replicate('-',ndeColunas));

      mmImp.Lines.SetStrings(slLista);
      //slLista.SaveToFile('C:\temp\x.txt');

      mmImp.Align := alClient;
      pnlImp.Left := (FrmVendas.Width - pnlImp.Width) div 2;
      pnlImp.Top := (FrmVendas.Height - pnlImp.Height) div 2;
      pnlImp.Visible := true;

end;

procedure TFrmVendas.btnCancelarClick(Sender: TObject);
begin
pnlImp.Visible := False;
end;

procedure TFrmVendas.btnCancelarRetiradaClick(Sender: TObject);
begin
  pnlRetirada.Visible := False;
  edtQuem.KeyValue := -1;
  edtMotivo.Text   := '';
  edtValor.Value   := 0;
end;

procedure TFrmVendas.btnSairClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrmVendas.btnSalvarRetiradaClick(Sender: TObject);
begin


  if (edtQuem.Text='')  then
  begin
    ShowMessage('Informe quem!!!');
    exit;
  end;



  if (radioMotivoRetirada.ItemIndex=2) and (edtMotivo.Text = '') then
  begin
    ShowMessage('Informe um motivo para retirada!');
    exit;
  end;

try
  if MessageDlg('Deseja realizar a retirada de '+FormatFloat('R$,0.00',ABS(edtValor.Value))+'?' ,mtWarning,[mbYes,mbNo],1) = mrYes then
  begin
    DmDados.Q_executa.Close;
    DmDados.Q_executa.SQL.Clear;
    DmDados.Q_executa.SQL.Add('INSERT INTO VENDAS(COD_VENDEDOR,COD_CLIENTE,COD_FPGTO,TOTAL,DATA,HORA,EMPRESA,OBS,TIPO) VALUES(:cod_vendedor,:cod_cli,:cod_fp,:tot,:dt,:hr, :empresa, :OBS, :TIPO)');
    DmDados.Q_executa.ParamByName('cod_vendedor').Value := edtQuem.KeyValue;
    DmDados.Q_executa.ParamByName('cod_cli').Value := -1;
    DmDados.Q_executa.ParamByName('cod_fp').Value := 0;
    DmDados.Q_executa.ParamByName('tot').Value := ABS(edtValor.Value)*-1;
    DmDados.Q_executa.ParamByName('dt').Value := Date;
    DmDados.Q_executa.ParamByName('hr').Value := Time;
    DmDados.Q_executa.ParamByName('empresa').Value := DmDados.Usuario_Empresa;
    DmDados.Q_executa.ParamByName('OBS').AsString := edtMotivo.Text;
    DmDados.Q_executa.ParamByName('TIPO').Value := radioMotivoRetirada.ItemIndex;
    DmDados.Q_executa.ExecSQL;
  end;

except on e:exception do begin
  showmessage(e.message);
end;
end;


  edtQuem.KeyValue := -1;
  edtMotivo.Text   := '';
  edtValor.Value   := 0;
  pnlRetirada.Visible := False;
  AtualizarCaixa;



end;

procedure TFrmVendas.SpeedButton1Click(Sender: TObject);
begin

  if DaysBetween(DmDados.Login_DataAbertura,now())<>0 then
    Application.Terminate;



  if not (VendaAberta) then
        begin
            DmDados.conexao.ExecSQL('DELETE FROM VENDAS WHERE TOTAL = 0 AND DATA = CURRENT_DATE AND EMPRESA = '+ IntToStr( DmDados.Usuario_Empresa)  );

            VendaAberta := True;

            // Prepara a tabela de Venda
            with cdsitensVendas do
            begin
                Active := False;
                Active := True;
                EmptyDataSet;
            end;

            //grdVendas.Color := clWhite;
            grdVendas.Enabled := True;

            //mskCodigo.Color := clWhite;
            mskCodigo.Enabled := True;

            //mskQuantidade.Color := clWhite;
            mskQuantidade.Enabled := True;

            mskCodigo.SetFocus;

            spCodVenda.Value := PegaCodVenda;
        end;
end;

procedure TFrmVendas.SpeedButton2Click(Sender: TObject);
begin
  if (VendaAberta) then
        begin
            PNL_Fechamento.Visible := True;
            {Centraliza a imagem da LOGO}
            PNL_Fechamento.Left := (FrmVendas.Width - PNL_Fechamento.Width) div 2;
            PNL_Fechamento.Top := (FrmVendas.Height - PNL_Fechamento.Height) div 2;

            lbSubTotal.Caption := formatfloat('##,###,##0.00', EdtTotal.Value);
            EdtDesconto.Value  := EdtTotal.Value;
            lbTotalCom.Caption := formatfloat('##,###,##0.00', EdtTotal.Value);
            btnFP_DinheiroClick( btnFP_Dinheiro );

            edtRecebido.Value  := EdtTotal.Value;
            //EDT_Cliente.SetFocus;
        end
        else
        begin
            Application.MessageBox('A venda precisa estar aberta para realizar a opera��o!', 'Informa��o', mb_ok + MB_ICONEXCLAMATION);
            Exit;
        end;


end;

procedure TFrmVendas.SpeedButton3Click(Sender: TObject);
begin
  if (VendaAberta) then
        begin
            if application.MessageBox('Deseja realmente cancelar esta venda?', 'Cancelamento de Venda', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton2) = 6 then
            begin
                if (excluir('VENDAS', 'COD_VENDAS', spCodVenda.Text)) then
                begin
                    //grdVendas.Color := clBtnFace;
                    grdVendas.Enabled := False;

                    //mskCodigo.Color := clBtnFace;
                    mskCodigo.Enabled := False;

                    //mskQuantidade.Color := clBtnFace
                    mskQuantidade.Enabled := False;

                    LBpRODUTO.Caption := '';
                    mskCodigo.Clear;
                    mskQuantidade.Clear;
                    edtValorUni.Clear;
                    edTotalItem.Clear;
                    EdtTotal.Clear;
                    Memo1.Clear;

                    edtRecebido.Clear;
                    EDT_Cliente.Clear;
                    EDT_CondPagto.ItemIndex := 0;
                    edtTroco.Clear;
                    spCodVenda.Value := 0;
                    label8.Caption := '';

                    cdsitensVendas.Close;

                    if (PNL_Fechamento.Visible = true) then
                    begin
                        PNL_Fechamento.Visible := False;
                    end;
                    VendaAberta := false;

                    AtualizarCaixa;


                end;

            end;
        end
        else
        begin
            Application.MessageBox('A venda precisa estar aberta para realizar a opera��o!', 'Informa��o', mb_ok + MB_ICONEXCLAMATION);
            Exit;
        end;
end;

procedure TFrmVendas.SpeedButton4Click(Sender: TObject);
begin
Application.CreateForm(TFrmFechamento, FrmFechamento);
FrmFechamento.ShowModal;
FreeAndNil(FrmFechamento);

end;

procedure TFrmVendas.SpeedButton5Click(Sender: TObject);
begin
  ACBrPosPrinter1.ImprimirLinha('</abre_gaveta>');
end;

procedure TFrmVendas.SpeedButton6Click(Sender: TObject);
begin
SalvarVenda;
end;

procedure TFrmVendas.SpeedButton7Click(Sender: TObject);
begin
AtualizarMysql;
end;

procedure TFrmVendas.SpeedButton8Click(Sender: TObject);
begin
  Application.CreateForm(TFrmConsProduto, FrmConsProduto);
  FrmConsProduto.Tag := 0;
  FrmConsProduto.Showmodal;
  FrmConsProduto.Hide;
  FrmConsProduto.Free;
end;

procedure TFrmVendas.SpeedButton9Click(Sender: TObject);
begin
    if (PNL_Fechamento.Visible = true) then
    begin
        PNL_Fechamento.Visible := False;
    end;
end;

procedure TFrmVendas.EDT_CondPagtoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F8) then
  begin
    if (pnlObs.Visible = false) then
    begin
      pnlObs.Visible := true;
    end
    else
    begin
      pnlObs.Visible := false;
    end;
  end;

  if ACBrPosPrinter1.Ativo then
      ACBrPosPrinter1.ImprimirLinha('</abre_gaveta>');
end;

procedure TFrmVendas.BitBtn3Click(Sender: TObject);
begin
  pnlObs.Visible := false;
  EdtDesconto.SetFocus;
end;

procedure TFrmVendas.btn01Click(Sender: TObject);
begin

if TButton(Sender).Tag = StrToInt('0'+mskCodigo.Text) then
begin
    AtalhoIncluirItemVenda;
    exit;
end;




if TButton(Sender).Tag = 437  then
begin
  pnlRetirada.Left := (FrmVendas.Width - pnlRetirada.Width) div 2;
  pnlRetirada.Top := (FrmVendas.Height - pnlRetirada.Height) div 2;
  pnlRetirada.Visible := True;
  exit;
end;


if TButton(Sender).Tag = 431  then
begin
  if (MessageDlg('Isso � mesmo um item "Diverso"?!',mtWarning ,[mbNo,mbYes ],0) <> mrYes) then
   EXIT;

  if (MessageDlg('Voc� tem certeza mesmo?!',mtWarning  ,[mbNo,mbYes ],0) <> mrYes) then
   EXIT;

  if (MessageDlg('?!!?!?!?Vc tem certeza mesmo?!?!?!!',mtWarning  ,[mbNo,mbYes ],0) <> mrYes) then
   EXIT;
end;



if not (VendaAberta) then
  SpeedButton1Click(self);

mskCodigo.Text := inttostr( TButton(Sender).Tag);
mskQuantidade.Value := mskQuantidade.Value+1;
mskQuantidadeChange(self);
//edtValorUni.Visible := (TButton(Sender).Tag = 431);


if (mskQuantidade.Value > 0) and (TButton(Sender).Tag <> 431) then
      begin
        edTotalItem.Value := ({QProd_CodBarraPRECO_VAREJO.Value} edtValorUni.Value * mskQuantidade.Value);
      //  AddItemVenda;
        mskQuantidade.SetFocus;
      end;

mskQuantidade.Value :=  1 ;


if (TButton(Sender).Tag = 431) then
  edtValorUni.SetFocus;

end;

procedure TFrmVendas.btnCalcTempClick(Sender: TObject);
var vl : integer;
begin
   if Sender = btnCalcTemp then begin
    mskQuantidade.Value := 0;
    exit;
   end;


   if Sender = btnCalcMult then
   begin
    AtalhoIncluirItemVenda;
    exit;
   end;


    mskQuantidade.Value := StrToInt(IntToStr(Trunc(mskQuantidade.Value)) + TButton(Sender).Caption);



end;

procedure TFrmVendas.BtnTesteClick(Sender: TObject);
begin
ImprimeCupomV2(40,'DmDados.tb_empresaFANTASIA_EMP.AsString','DmDados.tb_empresaTEL_EMP.AsString','DmDados.tb_empresaCNPJ_EMP.Value','DmDados.tb_empresaEND_EMP.AsString', 'Label8.Caption',
                    'lbCliente.Caption', 'Lbfp.Caption', '0.000', '1.10', '1.10', '1.10')
end;

procedure TFrmVendas.cbxModeloChange(Sender: TObject);
begin
  try
     ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbxModelo.ItemIndex ) ;
  except
     cbxModelo.ItemIndex := Integer( ACBrPosPrinter1.Modelo ) ;
     raise ;
  end ;
end;

procedure TFrmVendas.cbxPortaChange(Sender: TObject);
begin
  try
    ACBrPosPrinter1.Porta := cbxPorta.Text ;
  finally
    cbxPorta.Text := ACBrPosPrinter1.Porta ;
  end ;

//  btSerial.Visible := ACBrPosPrinter1.Device.IsSerialPort;
end;
    procedure TFrmVendas.DateRecebimentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 Total_ : String;
 //Saldo_Cupom :
begin
  if (Key = VK_Return) then
  begin
    if (EDT_CondPagto.ItemIndex = 4) then
    begin
          if (EdtLimitCli.Value < EdtTotal.Value) then
          begin
              Application.MessageBox('O valor do limte de cr�dito do cliente � menor que o valor da venda!', 'Aten��o', mb_ok + MB_ICONWARNING);
              edtRecebido.SetFocus;
              Exit;
          end;

          if application.MessageBox('Deseja finaliza a venda?', 'Finaliza��o de Venda', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton1) = 6 then
          begin
              Total_ := lbTotal.Caption;
              if (FinnalizaVenda(spCodVenda.Value)) then
              begin

                  with DmDados.Q_executa do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add(' UPDATE CLIENTE');
                    SQL.Add(' SET LIMITE_CLI = :lmt');
                    SQL.Add(' WHERE CLIENTE.COD_CLI = :cod');
                    ParamByName('lmt').Value := EdtLimitCli.Value - EdtTotal.Value;
                    ParamByName('cod').Value := strToInt(EDT_Cliente.Text);
                    ExecSQL;
                  end;

                  EDT_ClienteChange(Self);

                  //grdVendas.Color := clBtnFace;
                  grdVendas.Enabled := False;

                  //mskCodigo.Color := clBtnFace;
                  mskCodigo.Enabled := False;

                  //mskQuantidade.Color := clBtnFace
                  mskQuantidade.Enabled := False;

                  LBpRODUTO.Caption := '';
                  mskCodigo.Clear;
                  mskQuantidade.Clear;
                  edtValorUni.Clear;
                  edTotalItem.Clear;
                  //EdtTotal.Clear;


                  edtRecebido.Clear;

                  EDT_Cliente.Clear;

                  edtTroco.Clear;
                  Memo1.Clear;

                  DateRecebimento.Visible := false;


                  if (PNL_Fechamento.Visible = true) then
                  begin
                      PNL_Fechamento.Visible := False;
                  end;

                  if application.MessageBox('Deseja finaliza a venda e imprimir o cumpom?', 'Cancelamento de Venda', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton2) = 6 then
                  begin
                    if ImprimeCupomV2(40,DmDados.tb_empresaFANTASIA_EMP.AsString,DmDados.tb_empresaTEL_EMP.AsString,DmDados.tb_empresaCNPJ_EMP.AsString,DmDados.tb_empresaEND_EMP.AsString, Label8.Caption,
                    lbCliente.Caption, Lbfp.Caption, formatfloat('##,###,##0.00', StrToFloat(lbTotalCom.Caption)), formatfloat('##,###,##0.00', EdtDesconto.Value), formatfloat('##,###,##0.00', EdtTotal.Value),

                    formatfloat('##,###,##0.00', edtTroco.Value)) then
                    begin
                      //ShowMessage('O cupom foi impresso com sucesso!');
                    end;


                  end;


                  EDT_CondPagto.ItemIndex := 0;
                  lbCliente.Caption := '';
                  Lbfp.Caption := '';

                  EdtTotal.Clear;

                  // S� depois de perguntar de quer imprimir o cupom que ele fecha os itens da venda
                  cdsitensVendas.Close;

                // Fecha a Venda
                  VendaAberta := false;
              end;
          end;

    end;


    // Cart�o de D�bito
    if (EDT_CondPagto.ItemIndex = 2) then
    begin
          if application.MessageBox('Deseja finaliza a venda?', 'Finaliza��o de Venda', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton1) = 6 then
          begin
              Total_ := lbTotal.Caption;
              if (FinnalizaVenda(spCodVenda.Value)) then
              begin
                  //grdVendas.Color := clBtnFace;
                  grdVendas.Enabled := False;

                  //mskCodigo.Color := clBtnFace;
                  mskCodigo.Enabled := False;

                  //mskQuantidade.Color := clBtnFace
                  mskQuantidade.Enabled := False;

                  LBpRODUTO.Caption := '';
                  mskCodigo.Clear;
                  mskQuantidade.Clear;
                  edtValorUni.Clear;
                  edTotalItem.Clear;
                  //EdtTotal.Clear;

                  edtRecebido.Clear;
                  EDT_Cliente.Clear;
                  EDT_CondPagto.ItemIndex := 0;
                  edtTroco.Clear;
                  Memo1.Clear;

                  DateRecebimento.Visible := False;


                  if (PNL_Fechamento.Visible = true) then
                  begin
                      PNL_Fechamento.Visible := False;
                  end;

                  if application.MessageBox('Deseja finaliza a venda e imprimir o cumpom?', 'Cancelamento de Venda', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton2) = 6 then
                  begin
                    if ImprimeCupomV2(40,DmDados.tb_empresaFANTASIA_EMP.AsString,DmDados.tb_empresaTEL_EMP.AsString,DmDados.tb_empresaCNPJ_EMP.Value,DmDados.tb_empresaEND_EMP.AsString, Label8.Caption,
                    lbCliente.Caption, Lbfp.Caption, formatfloat('##,###,##0.00', StrToFloat(lbTotalCom.Caption)), formatfloat('##,###,##0.00', EdtDesconto.Value), formatfloat('##,###,##0.00', EdtTotal.Value),
                    formatfloat('##,###,##0.00', edtTroco.Value)) then
                    begin
                      //ShowMessage('O cupom foi impresso com sucesso!');
                    end;
                  end;

                  lbCliente.Caption := '';
                  Lbfp.Caption := '';

                  EdtTotal.Clear;

                  // S� depois de perguntar de quer imprimir o cupom que ele fecha os itens da venda
                  cdsitensVendas.Close;

                // Fecha a Venda
                  VendaAberta := false;
              end;
          end;

    end;

    // Cart�o de D�bito
    if (EDT_CondPagto.ItemIndex = 3) then
    begin
          if application.MessageBox('Deseja finaliza a venda?', 'Finaliza��o de Venda', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton1) = 6 then
          begin
              Total_ := lbTotal.Caption;
              if (FinnalizaVenda(spCodVenda.Value)) then
              begin
                  //grdVendas.Color := clBtnFace;
                  grdVendas.Enabled := False;

                  //mskCodigo.Color := clBtnFace;
                  mskCodigo.Enabled := False;

                  //mskQuantidade.Color := clBtnFace
                  mskQuantidade.Enabled := False;

                  LBpRODUTO.Caption := '';
                  mskCodigo.Clear;
                  mskQuantidade.Clear;
                  edtValorUni.Clear;
                  edTotalItem.Clear;
                  //EdtTotal.Clear;

                  edtRecebido.Clear;
                  EDT_Cliente.Clear;
                  EDT_CondPagto.ItemIndex := 0;
                  edtTroco.Clear;
                  Memo1.Clear;

                  DateRecebimento.Visible := False;


                  if (PNL_Fechamento.Visible = true) then
                  begin
                      PNL_Fechamento.Visible := False;
                  end;



                  if application.MessageBox('Deseja finaliza a venda e imprimir o cumpom?', 'Cancelamento de Venda', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton2) = 6 then
                  begin
                    // Imprime o cupom
                    if ImprimeCupomV2(40,DmDados.tb_empresaFANTASIA_EMP.AsString,DmDados.tb_empresaTEL_EMP.AsString,DmDados.tb_empresaCNPJ_EMP.Value,DmDados.tb_empresaEND_EMP.AsString, Label8.Caption,
                    lbCliente.Caption, Lbfp.Caption, formatfloat('##,###,##0.00', StrToFloat(lbTotalCom.Caption)), formatfloat('##,###,##0.00', EdtDesconto.Value), formatfloat('##,###,##0.00', EdtTotal.Value),
                    formatfloat('##,###,##0.00', edtTroco.Value)) then
                    begin
                      //ShowMessage('O cupom foi impresso com sucesso!');
                    end;
                  end;

                  lbCliente.Caption := '';
                  Lbfp.Caption := '';

                  EdtTotal.Clear;

                  // S� depois de perguntar de quer imprimir o cupom que ele fecha os itens da venda
                  cdsitensVendas.Close;

                // Fecha a Venda
                  VendaAberta := false;
              end;
          end;

    end;
  end;
end;

end.


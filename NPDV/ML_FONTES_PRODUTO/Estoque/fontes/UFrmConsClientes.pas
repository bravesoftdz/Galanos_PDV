unit UFrmConsClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TFrmConsClientes = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    btnFormataCPF: TButton;
    BtnOk: TButton;
    RdgAtivo: TRadioGroup;
    GBCons: TGroupBox;
    ComboCons: TComboBox;
    GB2: TGroupBox;
    EdtCons: TEdit;
    QDias: TIBQuery;
    QDiasVENC: TDateField;
    QDiasDIAS: TFloatField;
    QConsCliente: TIBQuery;
    QConsClienteCOD_CLI: TIntegerField;
    QConsClienteNOME_CLI: TIBStringField;
    QConsClienteCOD_CLA: TIntegerField;
    QConsClienteENDRES_CLI: TIBStringField;
    QConsClienteBAIRES_CLI: TIBStringField;
    QConsClienteCIDRES_CLI: TIBStringField;
    QConsClienteESTRES_CLI: TIBStringField;
    QConsClienteCEPRES_CLI: TIBStringField;
    QConsClienteTELRES_CLI: TIBStringField;
    QConsClienteCPF_CLI: TIBStringField;
    QConsClienteRG_CLI: TIBStringField;
    QConsClienteAPELIDO_CLI: TIBStringField;
    QConsClienteLIMITE_CLI: TIBBCDField;
    QConsClienteATIVO_CLI: TIBStringField;
    QConsClienteOBS_CLI: TIBStringField;
    QConsClienteNASCIMENTO_CLI: TDateField;
    QConsClienteDATACADASTRO_CLI: TDateField;
    QConsClienteATRAZO_MAXIMO_CLI: TIntegerField;
    QConsClienteCELULAR_CLI: TIBStringField;
    QConsClienteIMP_SALDO_PENDENTE_CLI: TIBStringField;
    QConsClienteLIMITE_CHEQUE: TIBBCDField;
    QConsClienteCONTATO_CLI: TIBStringField;
    QConsClienteCONTROLAR_LIMITE: TIBStringField;
    QConsClienteEMAIL_CLI: TIBStringField;
    QConsClienteNOME_CLA: TIBStringField;
    DSQConsCliente: TDataSource;
    Panel2: TPanel;
    BtnSair: TButton;
    DBGrid: TDBGrid;
    procedure BtnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboConsChange(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure btnFormataCPFClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsClientes: TFrmConsClientes;
  sSql  : string;
  iDias : integer;

implementation

{$R *.dfm}

Uses Udm, UBibliotecas, UClientes, UFrmOutrasSaidas, UFrmConsOutrasSaidas,
  UFrmRelVendas, UFrmControleCredito;

procedure TFrmConsClientes.BtnOkClick(Sender: TObject);
begin
  with QConsCliente do
      begin
         close;
         sql.Clear;
         sql.Text:= sSql;

         case ComboCons.ItemIndex of
            -1: begin
                  if trim(edtcons.Text) = '' then
                     begin
                        if RdgAtivo.ItemIndex = 0 then
                           sql.add(' WHERE C.ATIVO_CLI = ' + #39 + 'S' + #39)
                        else
                           if RdgAtivo.ItemIndex = 1 then
                              sql.add(' WHERE C.ATIVO_CLI = ' + #39 + 'N' + #39);
                        {case RdgTipo.ItemIndex of
                          0: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'PR' + #39);
                          1: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'CH' + #39);
                        end;  }
                        sql.Add(' ORDER BY C.NOME_CLI');
                     end
                  else
                     begin
                        sql.Add(' WHERE C.COD_CLI = ' + edtcons.Text);
                        if RdgAtivo.ItemIndex = 0 then
                           sql.add(' AND C.ATIVO_CLI = ' + #39 + 'S' + #39)
                        else
                           if RdgAtivo.ItemIndex = 1 then
                              sql.add(' AND C.ATIVO_CLI = ' + #39 + 'N' + #39);
                        {case RdgTipo.ItemIndex of
                          0: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'PR' + #39);
                          1: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'CH' + #39);
                        end;}
                     end;
               end;

            0: begin
                  if trim(edtcons.Text) = '' then
                     begin
                        if RdgAtivo.ItemIndex = 0 then
                           sql.add(' WHERE C.ATIVO_CLI = ' + #39 + 'S' + #39)
                        else
                           if RdgAtivo.ItemIndex = 1 then
                              sql.add(' WHERE C.ATIVO_CLI = ' + #39 + 'N' + #39);
                        {case RdgTipo.ItemIndex of
                          0: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'PR' + #39);
                          1: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'CH' + #39);
                        end;  }
                        sql.Add(' ORDER BY C.COD_CLI');
                     end
                  else
                     begin
                        sql.Add(' WHERE C.COD_CLI = ' + edtcons.Text);
                        if RdgAtivo.ItemIndex = 0 then
                           sql.add(' AND C.ATIVO_CLI = ' + #39 + 'S' + #39)
                        else
                           if RdgAtivo.ItemIndex = 1 then
                              sql.add(' AND C.ATIVO_CLI = ' + #39 + 'N' + #39);
                        {case RdgTipo.ItemIndex of
                          0: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'PR' + #39);
                          1: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'CH' + #39);
                        end;}
                     end;
               end;
            1: begin
                  sql.Add(' WHERE C.NOME_CLI LIKE ' + #39 + edtcons.Text + '%' + #39);
                  if RdgAtivo.ItemIndex = 0 then
                     sql.add(' AND C.ATIVO_CLI = ' + #39 + 'S' + #39)
                  else
                     if RdgAtivo.ItemIndex = 1 then
                        sql.add(' AND C.ATIVO_CLI = ' + #39 + 'N' + #39);
                  {case RdgTipo.ItemIndex of
                    0: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'PR' + #39);
                    1: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'CH' + #39);
                  end;}
                  sql.add(' ORDER BY C.NOME_CLI');
               end;
            2: begin
                  sql.Add(' WHERE C.BLOQUEADO_CLI = ' + #39 + 'S' + #39);
                  if RdgAtivo.ItemIndex = 0 then
                     sql.add(' AND C.ATIVO_CLI = ' + #39 + 'S' + #39)
                  else
                     if RdgAtivo.ItemIndex = 1 then
                        sql.add(' AND C.ATIVO_CLI = ' + #39 + 'N' + #39);
                  {case RdgTipo.ItemIndex of
                    0: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'PR' + #39);
                    1: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'CH' + #39);
                  end;}
                  sql.Add(' ORDER BY C.NOME_CLI');
               end;
            3: begin
                  sql.Add(' WHERE C.NOME_CLI LIKE ' + #39 + '%' + edtcons.Text + '%' + #39);
                  if RdgAtivo.ItemIndex = 0 then
                     sql.add(' AND C.ATIVO_CLI = ' + #39 + 'S' + #39)
                  else
                     if RdgAtivo.ItemIndex = 1 then
                        sql.add(' AND C.ATIVO_CLI = ' + #39 + 'N' + #39);
                  {case RdgTipo.ItemIndex of
                    0: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'PR' + #39);
                    1: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'CH' + #39);
                  end;}
                  sql.add(' ORDER BY C.NOME_CLI');
               end;
            4: begin
                  sql.Add(' WHERE C.CIDRES_CLI LIKE ' + #39 + edtcons.Text + '%' + #39);
                  if RdgAtivo.ItemIndex = 0 then
                     sql.add(' AND C.ATIVO_CLI = ' + #39 + 'S' + #39)
                  else
                     if RdgAtivo.ItemIndex = 1 then
                        sql.add(' AND C.ATIVO_CLI = ' + #39 + 'N' + #39);
                  {case RdgTipo.ItemIndex of
                    0: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'PR' + #39);
                    1: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'CH' + #39);
                  end;}
                  sql.add(' ORDER BY C.NOME_CLI');
               end;
            5: begin
                  //btnFormataCPFClick(Self);
                  sql.add(' WHERE C.CPF_CLI = ' + #39 + FormataCPF(trim(EdtCons.Text)) + #39);
                  if RdgAtivo.ItemIndex = 0 then
                     sql.add(' AND C.ATIVO_CLI = ' + #39 + 'S' + #39)
                  else
                     if RdgAtivo.ItemIndex = 1 then
                        sql.add(' AND C.ATIVO_CLI = ' + #39 + 'N' + #39);
                  {case RdgTipo.ItemIndex of
                    0: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'PR' + #39);
                    1: sql.add(' AND C.TIPO_CREDITO_CLI = ' + #39 + 'CH' + #39);
                  end;}
                  sql.add(' ORDER BY C.NOME_CLI');
               end;
         end;
         open;
         //dbgrid.SetFocus;
      end;
end;

procedure TFrmConsClientes.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsClientes.btnFormataCPFClick(Sender: TObject);
begin
  EdtCons.Text := FormataCPF(EdtCons.Text);
end;

procedure TFrmConsClientes.ComboConsChange(Sender: TObject);
begin
   case combocons.ItemIndex of
      0: begin
            gb2.Caption      := 'C�digo';
            edtcons.Visible  := true;
            edtcons.Clear;
         end;
      1: begin
            gb2.Caption      := 'Nome';
            edtcons.Visible  := true;
            edtcons.Clear;
         end;
      2: begin
            gb2.Caption      := '';
            edtcons.Visible  := false;
         end;
      3: begin
            gb2.Caption      := 'Palavra Chave';
            edtcons.Visible  := true;
            edtcons.Clear;
         end;
      4: begin
            gb2.Caption      := 'Cidade';
            edtcons.Visible  := true;
            edtcons.Clear;
         end;
      5: begin
            gb2.Caption      := 'CNPJ/CPF';
            edtcons.Visible  := true;
            edtcons.Clear;
         end;
   end;

end;

procedure TFrmConsClientes.DBGridDblClick(Sender: TObject);
begin
  //Form de Cadastro
  if (FrmConsClientes.Tag = 0) then
  begin
    FrmClientes.edtCod.text := QConsClienteCOD_CLI.AsString;
    DmDados.tb_clientes.Filtered:= false;
    FrmClientes.BtnAlterarClick(Self);
    FrmClientes.btnFiltroClick(Self);
  end;

  if (FrmConsClientes.Tag = 1) then
  begin
    FrmOutrasSaidas.EdtCodcLI.text := QConsClienteCOD_CLI.AsString;
    FrmOutrasSaidas.EdtNomecli.text := QConsClienteNOME_CLI.AsString;
  end;

  if (FrmConsClientes.Tag = 2) then
  begin
    FrmConsOutrasSaidas.EdtCodCli.text := QConsClienteCOD_CLI.AsString;
    FrmConsOutrasSaidas.EdtNomeCli.text := QConsClienteNOME_CLI.AsString;
  end;

  if (FrmConsClientes.Tag = 3) then
  begin
    FrmRelVendas.EdtCodCli.text := QConsClienteCOD_CLI.AsString;
    FrmRelVendas.EdtNomeCli.text := QConsClienteNOME_CLI.AsString;
  end;

  if (FrmConsClientes.Tag = 4) then
  begin
    FrmControleCredito.EdtCodCli.text := QConsClienteCOD_CLI.AsString;
    FrmControleCredito.EdtNomeCli.text := QConsClienteNOME_CLI.AsString;
  end;

  Close;
end;

procedure TFrmConsClientes.FormShow(Sender: TObject);
begin
  sSql:= QConsCliente.SQL.Text;
end;

end.

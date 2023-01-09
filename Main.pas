unit Main;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  System.DateUtils,
  Forms,
  uniGUITypes,
  uniGUIAbstractClasses,
  uniGUIClasses,
  uniGUIRegClasses,
  uniGUIForm,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  uniPageControl,
  uniButton,
  uniBitBtn,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  uniBasicGrid,
  uniDBGrid,
  uniGUIBaseClasses,
  uniPanel,
  uniMultiItem,
  uniComboBox,
  uniDBComboBox,
  uniDBLookupComboBox,
  FireDAC.Stan.StorageBin,
  uNativeXLSExport,
  uniEdit,
  uniLabel,
  uniDateTimePicker,
  uniDBPivotGrid,
  uniGridExporters;

type
  TMainForm = class(TUniForm)
    qryLista: TFDQuery;
    dsLista: TDataSource;
    pageControl1: TUniPageControl;
    tabsheetProduto: TUniTabSheet;
    tabsheetPedido: TUniTabSheet;
    tabsheetMenu: TUniTabSheet;
    qryLoja: TFDQuery;
    dsLoja: TDataSource;
    dado: TFDMemTable;
    dadobanco: TStringField;
    dsDado: TDataSource;
    qryListaSkuId: TStringField;
    qryListaProductId: TStringField;
    qryListaColor: TStringField;
    qryListaSize: TStringField;
    qryListaQuantity: TBCDField;
    qryListaBrand: TStringField;
    qryListaName: TStringField;
    qryListaPrice: TBCDField;
    qryListaTitle: TStringField;
    qryListaDescription: TMemoField;
    qryListaComposition: TStringField;
    qryListaImageUrl1: TStringField;
    qryListaImageUrl2: TStringField;
    qryListaImageUrl3: TStringField;
    qryListaImageUrl4: TStringField;
    qryListancm: TStringField;
    qryListapeso: TFMTBCDField;
    qryListasaleprice: TBCDField;
    dbgridPedido: TUniDBGrid;
    qryPedido: TFDQuery;
    dsPedido: TDataSource;
    qryListaorigem: TSmallintField;
    UniPanel2: TUniPanel;
    unbtbtnLogout: TUniBitBtn;
    tabsheetFinanceiro: TUniTabSheet;
    UniPanel3: TUniPanel;
    unbtbtnFinanceiroPDF: TUniBitBtn;
    unbtbtnFinanceiroExcel: TUniBitBtn;
    unbtbtnVoltarFinanceiro: TUniBitBtn;
    unbtbtnFinanceiro: TUniBitBtn;
    UniPanel4: TUniPanel;
    unbtbtnFinanceiroListar: TUniBitBtn;
    UniDateTimePickerFinanceiro: TUniDateTimePicker;
    undbpvtgrdFinanceiro: TUniDBPivotGrid;
    mtFinanceiro: TFDMemTable;
    qry1: TFDQuery;
    dsFinanceiro: TDataSource;
    unbtbtnPedido: TUniBitBtn;
    unbtbtnProduto: TUniBitBtn;
    unbtbtnCliente: TUniBitBtn;
    unbtbtnEstoque: TUniBitBtn;
    UniGridExcelExporter1: TUniGridExcelExporter;
    dadoidloja: TIntegerField;
    combomboxFinanceiroData: TUniComboBox;
    combomboxFinanceiroLoja: TUniComboBox;
    UniPanel5: TUniPanel;
    panel1: TUniPanel;
    UniPanel6: TUniPanel;
    UniPanel7: TUniPanel;
    UniPanel8: TUniPanel;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    UniPanel9: TUniPanel;
    botaoPesquisarPedido: TUniBitBtn;
    UniDateTimePicker1: TUniDateTimePicker;
    UniComboBox1: TUniComboBox;
    combomboxPedidoLoja: TUniComboBox;
    UniPanel10: TUniPanel;
    UniDateTimePicker2: TUniDateTimePicker;
    UniDBGrid1: TUniDBGrid;
    qryItem: TFDQuery;
    dsItem: TDataSource;
    UniDateTimePicker3: TUniDateTimePicker;
    combomboxRelatorio: TUniComboBox;
    UniPanel1: TUniPanel;
    tabsheetCliente: TUniTabSheet;
    tabsheetEstoque: TUniTabSheet;
    UniPanel11: TUniPanel;
    UniPanel12: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn6: TUniBitBtn;
    UniBitBtn7: TUniBitBtn;
    UniPanel13: TUniPanel;
    botaoPesquisarProduto: TUniBitBtn;
    UniDateTimePicker4: TUniDateTimePicker;
    combomboxProdutoCodigo: TUniComboBox;
    combomboxProdutoLoja: TUniComboBox;
    UniPanel14: TUniPanel;
    UniDateTimePicker5: TUniDateTimePicker;
    undbgrdProduto: TUniDBGrid;
    qryProduto: TFDQuery;
    dsProduto: TDataSource;
    UniPanel15: TUniPanel;
    UniPanel16: TUniPanel;
    UniBitBtn9: TUniBitBtn;
    UniBitBtn10: TUniBitBtn;
    UniBitBtn11: TUniBitBtn;
    UniPanel17: TUniPanel;
    UniBitBtn12: TUniBitBtn;
    UniDateTimePicker6: TUniDateTimePicker;
    UniComboBox3: TUniComboBox;
    UniComboBox4: TUniComboBox;
    UniPanel18: TUniPanel;
    UniDateTimePicker7: TUniDateTimePicker;
    UniDBGrid2: TUniDBGrid;
    UniPanel19: TUniPanel;
    UniPanel20: TUniPanel;
    UniBitBtn13: TUniBitBtn;
    UniBitBtn14: TUniBitBtn;
    UniBitBtn15: TUniBitBtn;
    UniPanel21: TUniPanel;
    UniBitBtn16: TUniBitBtn;
    UniDateTimePicker8: TUniDateTimePicker;
    UniComboBox5: TUniComboBox;
    UniComboBox6: TUniComboBox;
    UniPanel22: TUniPanel;
    UniDateTimePicker9: TUniDateTimePicker;
    UniDBGrid3: TUniDBGrid;
    qryPedidoidvenda: TIntegerField;
    qryPedidoquantidade: TBCDField;
    qryPedidodevolucao: TBCDField;
    qryPedidototal: TBCDField;
    qryPedidodesconto: TLargeintField;
    qryPedidopagamento: TStringField;
    qryPedidoliquido: TBCDField;
    qryPedidodata: TDateField;
    qryPedidoidloja: TSmallintField;
    qryPedidoobs: TStringField;
    qryPedidonome: TStringField;
    qryProdutoid: TStringField;
    qryProdutosaldo: TFMTBCDField;
    qryProdutoidcor: TStringField;
    qryProdutoidtamanho: TStringField;
    qryProdutoquant: TFMTBCDField;
    qryProdutodev: TFMTBCDField;
    qryProdutoreferencia: TStringField;
    qryProdutodescricao: TStringField;
    qryProdutoidmarca: TStringField;
    qryProdutoidcolecao: TStringField;
    qryProdutoidcategoria: TStringField;
    qryProdutoidmodelo: TStringField;
    qryProdutodatacadastro: TDateField;
    qryProdutolancamento: TDateField;
    qryProdutoprecomedio: TFMTBCDField;
    qryProdutoprecoinicial: TBCDField;
    qryItemidestoque: TStringField;
    qryItemreferencia: TStringField;
    qryItempreco: TBCDField;
    qryItemquant: TBCDField;
    qryItemtotal: TBCDField;
    qryItemdesconto: TBCDField;
    qryItemdescricao: TStringField;
    qryItemidcor: TStringField;
    qryItemidtamanho: TStringField;
    qryItemliquido: TBCDField;
    qryItemidvenda: TIntegerField;
    mtFinanceiroconta: TStringField;
    mtFinanceirocentro: TStringField;
    mtFinanceirotipo: TStringField;
    mtFinanceirodescricao: TStringField;
    mtFinanceirovalor: TFMTBCDField;
    mtFinanceiropago: TStringField;
    procedure UniFormShow(Sender: TObject);
    procedure dbgridPedidoColumnSummary(Column: TUniDBGridColumn; GroupFieldValue: Variant);
    procedure dbgridPedidoColumnSummaryResult(Column: TUniDBGridColumn; GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure unbtbtnFinanceiroClick(Sender: TObject);
    procedure unbtbtnVoltarFinanceiroClick(Sender: TObject);
    procedure unbtbtnFinanceiroExcelClick(Sender: TObject);
    procedure unbtbtnFinanceiroListarClick(Sender: TObject);
    procedure botaoPesquisarPedidoClick(Sender: TObject);
    procedure unbtbtnPedidoClick(Sender: TObject);
    procedure dbgridPedidoCellClick(Column: TUniDBGridColumn);
    procedure UniDateTimePickerFinanceiroChange(Sender: TObject);
    procedure combomboxRelatorioCloseUp(Sender: TObject);
    procedure UniBitBtn3Click(Sender: TObject);
    procedure unbtbtnProdutoClick(Sender: TObject);
    procedure botaoPesquisarProdutoClick(Sender: TObject);
  private
    { Private declarations }
    _sql: string;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars,
  MainModule,
  uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.combomboxRelatorioCloseUp(Sender: TObject);
begin
  UniDateTimePicker3.Enabled := combomboxRelatorio.ItemIndex = 0;
end;

procedure TMainForm.dbgridPedidoCellClick(Column: TUniDBGridColumn);
var
  FBanco: string;
begin
  FBanco := '`' + UniMainModule.loja.FieldByName('banco').AsString + '`.';
  _sql := 'select i.idestoque, i.referencia, i.preco, i.quant, i.total, i.desconto, '
    + 'p.descricao, e.idcor, e.idtamanho, i.total-i.desconto as liquido, i.idvenda '
    + 'from ' + FBanco + 'item i left join ' + FBanco + 'produto p on p.id=i.referencia '
    + 'left join ' + FBanco + 'estoque e on e.id=i.idestoque where i.idvenda='
    + qryPedido.FieldByName('idvenda').AsString + ' and i.idloja=' + qryPedido.FieldByName('idloja').AsString;
  qryItem.Open(_sql);
end;

procedure TMainForm.dbgridPedidoColumnSummary(Column: TUniDBGridColumn; GroupFieldValue: Variant);
begin
  if SameText(Column.FieldName, 'liquido') then
  begin
    if Column.AuxValue = NULL then
      Column.AuxValue := 0.0;
    Column.AuxValue := Column.AuxValue + Column.Field.AsFloat;
  end;
  if SameText(Column.FieldName, 'quantidade') then
  begin
    if Column.AuxValue = NULL then
      Column.AuxValue := 0.0;
    Column.AuxValue := Column.AuxValue + Column.Field.AsFloat;
  end;
end;

procedure TMainForm.dbgridPedidoColumnSummaryResult(Column: TUniDBGridColumn; GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
begin
  if SameText(Column.FieldName, 'liquido') then
  begin
    Result := FormatCurr('0,0.00', Column.AuxValue);
  end;
  if SameText(Column.FieldName, 'quantidade') then
  begin
    Result := FormatCurr('0,0', Column.AuxValue);
  end;
  Column.AuxValue := NULL;
end;

procedure TMainForm.unbtbtnFinanceiroClick(Sender: TObject);
begin
  pageControl1.ActivePage := tabsheetFinanceiro;
  UniDateTimePickerFinanceiro.DateTime := Date;
  UniDateTimePicker3.DateTime := Date;
end;

procedure TMainForm.unbtbtnFinanceiroExcelClick(Sender: TObject);
begin
  if mtFinanceiro.IsEmpty then
    Exit;
  if combomboxRelatorio.ItemIndex = 0 then
  begin
    undbpvtgrdFinanceiro.Exporter.FileName := 'resultado' + FormatSettings.LongMonthNames[MonthOf(UniDateTimePickerFinanceiro.DateTime)]
      + '-' + FormatSettings.LongMonthNames[MonthOf(UniDateTimePicker3.DateTime)] + YearOf(UniDateTimePickerFinanceiro.DateTime).ToString;
    undbpvtgrdFinanceiro.Exporter.Title := 'Resultado Financeiro ' + FormatSettings.LongMonthNames[MonthOf(UniDateTimePickerFinanceiro.DateTime)]
      + ' a ' + FormatSettings.LongMonthNames[MonthOf(UniDateTimePicker3.DateTime)] + ' de ' + YearOf(UniDateTimePickerFinanceiro.DateTime).ToString;
  end
  else
  begin
    undbpvtgrdFinanceiro.Exporter.FileName := 'resultado' + FormatSettings.LongMonthNames[MonthOf(UniDateTimePickerFinanceiro.DateTime)] + YearOf(UniDateTimePickerFinanceiro.DateTime).ToString;
    undbpvtgrdFinanceiro.Exporter.Title := 'Resultado Financeiro ' + FormatSettings.LongMonthNames[MonthOf(UniDateTimePickerFinanceiro.DateTime)] + ' de ' + YearOf(UniDateTimePickerFinanceiro.DateTime).ToString;
  end;
  undbpvtgrdFinanceiro.Exporter.ExportGrid;
end;

procedure TMainForm.unbtbtnFinanceiroListarClick(Sender: TObject);
var
  FData, FBanco, FInicio, FFim, FAno, FLoja: string;
begin
  FBanco := '`' + UniMainModule.loja.FieldByName('banco').AsString + '`.';
  FData := 'vencimento';
  if combomboxFinanceiroData.ItemIndex = 1 then
    FData := 'databaixa';
  if combomboxFinanceiroData.ItemIndex = 2 then
    FData := 'data';
  FInicio := UniDateTimePickerFinanceiro.DateTime.Month.ToString;
  FFim := UniDateTimePicker3.DateTime.Month.ToString;
  FAno := UniDateTimePickerFinanceiro.DateTime.Year.ToString;
  qryLoja.Locate('loja', combomboxFinanceiroLoja.Text);
  FLoja := qryLoja.FieldByName('idloja').AsString;
  UniMainModule.conlocal.ExecSQL('set lc_time_names="pt_PT"');
  if combomboxRelatorio.ItemIndex = 0 then
  begin
    _sql := 'select if(receber, "RECEITA", "DESPESA") as conta, centro, tipo, descricao, '
      + 'sum(if(receber=0, -valor, valor)) as valor, monthname(pago) as pago '
      + 'from ' + FBanco + 'conta where '
      + 'month(pago) between ' + FInicio + ' and ' + FFim
      + ' and year(pago)=' + FAno + ' and not pago is null';
    if combomboxFinanceiroLoja.ItemIndex > 0 then
      _sql := _sql + ' and idloja=' + FLoja;
    _sql := _sql + ' group by receber, centro, tipo, descricao, month(pago) '
      + 'order by receber desc, centro, tipo, descricao';
  end
  else
  begin
    _sql := 'select if(c.receber, "RECEITA", "DESPESA") as conta, c.centro, c.tipo, c.descricao, '
      + 'sum(if(c.receber=0, -c.valor, c.valor)) as valor, l.loja as pago '
      + 'from ' + FBanco + 'conta c left join ' + FBanco + 'lojas l on c.idloja=l.id where '
      + 'month(c.pago) between ' + FInicio + ' and ' + FFim
      + ' and year(c.pago)=' + FAno + ' and not c.pago is null';
    if combomboxFinanceiroLoja.ItemIndex > 0 then
      _sql := _sql + ' and c.idloja=' + FLoja;
    _sql := _sql + ' group by c.receber, c.centro, c.tipo, c.descricao, c.idloja '
      + 'order by c.receber desc, c.centro, c.tipo, c.descricao';
  end;
  qry1.Open(_sql);
  mtFinanceiro.Close;
  mtFinanceiro.CopyDataSet(qry1);
  if combomboxRelatorio.ItemIndex = 0 then
  begin
    _sql := 'select "RECEITA" as conta, "VENDA" as centro, f.nome as tipo, '
      + 'c.nome as descricao, sum(p.valor) as valor, monthname(p.' + FData + ') as pago '
      + 'from ' + FBanco + 'parcela p ' + ' left join ' + FBanco
      + 'forma f on p.idforma=f.id left join ' + FBanco + 'cliente c on p.idcliente=c.id and c.idtipo="C" '
      + 'where month(p.' + FData + ') between ' + FInicio + ' and ' + FFim
      + ' and year(p.' + FData + ')=' + FAno
      + ' and not p.' + FData + ' is null and not p.cancelado and p.idforma<>5 '
      + 'and p.idforma<>110 ';
    if combomboxFinanceiroLoja.ItemIndex > 0 then
      _sql := _sql + ' and p.idloja=' + FLoja;
    _sql := _sql + ' group by p.idforma, p.idcliente, month(p.' + FData + ') '
      + 'order by p.idforma, c.nome';
  end
  else
  begin
    _sql := 'select "RECEITA" as conta, "VENDA" as centro, f.nome as tipo, '
      + 'c.nome as descricao, sum(p.valor) as valor, l.loja as pago '
      + 'from ' + FBanco + 'parcela p ' + ' left join ' + FBanco
      + 'forma f on p.idforma=f.id left join ' + FBanco + 'lojas l on p.idloja=l.id '
      + 'left join ' + FBanco + 'cliente c on p.idcliente=c.id and c.idtipo="C" '
      + 'where month(p.' + FData + ') between ' + FInicio + ' and ' + FFim
      + ' and year(p.' + FData + ')=' + FAno
      + ' and not p.' + FData + ' is null and not p.cancelado and p.idforma<>5 '
      + 'and p.idforma<>110 ';
    if combomboxFinanceiroLoja.ItemIndex > 0 then
      _sql := _sql + ' and p.idloja=' + FLoja;
    _sql := _sql + ' group by p.idforma, p.idcliente, p.idloja '
      + 'order by p.idforma, c.nome';
  end;
  qry1.Open(_sql);
  mtFinanceiro.CopyDataSet(qry1);
end;

procedure TMainForm.unbtbtnPedidoClick(Sender: TObject);
begin
  pageControl1.ActivePage := tabsheetPedido;
  UniDateTimePicker1.DateTime := Date;
  UniDateTimePicker2.DateTime := Date;
end;

procedure TMainForm.unbtbtnProdutoClick(Sender: TObject);
begin
  pageControl1.ActivePage := tabsheetProduto;
  UniDateTimePicker4.DateTime := Date;
  UniDateTimePicker5.DateTime := Date;
end;

procedure TMainForm.unbtbtnVoltarFinanceiroClick(Sender: TObject);
begin
  pageControl1.ActivePage := tabsheetMenu;
end;

procedure TMainForm.UniBitBtn3Click(Sender: TObject);
begin
  if qryPedido.IsEmpty then
    Exit;
  dbgridPedido.Exporter.FileName := 'vendas' + UniDateTimePicker1.ToString + 'a' + UniDateTimePicker2.ToString;
  dbgridPedido.Exporter.Title := 'Relatorio de Vendas - ' + UniDateTimePicker1.ToString + 'a' + UniDateTimePicker2.ToString;
  dbgridPedido.Exporter.ExportGrid;
end;

procedure TMainForm.botaoPesquisarPedidoClick(Sender: TObject);
var
  FDataInicio, FDataFinal, FBanco, FLoja: string;
begin
  FDataInicio := QuotedStr(FormatDateTime('yyyy-mm-dd', UniDateTimePicker1.DateTime));
  FDataFinal := QuotedStr(FormatDateTime('yyyy-mm-dd', UniDateTimePicker2.DateTime));
  FBanco := '`' + UniMainModule.loja.FieldByName('banco').AsString + '`.';
  qryLoja.Locate('loja', combomboxPedidoLoja.Text);
  FLoja := qryLoja.FieldByName('idloja').AsString;
  _sql := 'select v.idvenda, v.quantidade, v.devolucao, v.total, v.total=v.liquido '
    + 'as desconto, p.nome as pagamento, v.liquido, v.data, v.idloja, v.obs, '
    + 'if(v.datacadastro=c.datacadastro, concat("# ", c.nome), c.nome) as nome '
    + 'from ' + FBanco + 'venda v left join ' + FBanco + 'cliente c on v.idcliente=c.id '
    + 'and c.idtipo="C" left join ' + FBanco + 'plano p on v.idplano=p.id where '
    + 'v.status>"E" and v.data between ' + FDataInicio + ' and ' + FDataFinal;
  if combomboxPedidoLoja.ItemIndex > 0 then
    _sql := _sql + ' and v.idloja=' + FLoja;
  qryPedido.Open(_sql);
  if not qryPedido.IsEmpty then
  begin
    _sql := 'select i.idestoque, i.referencia, i.preco, i.quant, i.total, i.desconto, '
      + 'p.descricao, e.idcor, e.idtamanho, i.total-i.desconto as liquido, i.idvenda '
      + 'from ' + FBanco + 'item i left join ' + FBanco + 'produto p on p.id=i.referencia '
      + 'left join ' + FBanco + 'estoque e on e.id=i.idestoque where i.idvenda='
      + qryPedido.FieldByName('idvenda').AsString;
    if combomboxPedidoLoja.ItemIndex > 0 then
      _sql := _sql + ' and v.idloja=' + FLoja;
    qryItem.Open(_sql);
  end;
end;

procedure TMainForm.botaoPesquisarProdutoClick(Sender: TObject);
var
  FDataInicio, FDataFinal, FBanco, FLoja: string;
begin
  FDataInicio := QuotedStr(FormatDateTime('yyyy-mm-dd', UniDateTimePicker4.DateTime));
  FDataFinal := QuotedStr(FormatDateTime('yyyy-mm-dd', UniDateTimePicker5.DateTime));
  FBanco := '`' + UniMainModule.loja.FieldByName('banco').AsString + '`.';
  qryLoja.Locate('loja', combomboxPedidoLoja.Text);
  FLoja := qryLoja.FieldByName('idloja').AsString;
  if combomboxProdutoCodigo.ItemIndex = 0 then
  begin
    _sql := 'select i.referencia as id, e.saldo, "" as idcor,"" as  idtamanho, '
      + 'sum(if(i.oper="V", i.quant, 0)) as quant, sum(if(i.oper="D", i.quant, 0)) as dev, '
      + 'i.referencia, p.descricao, p.idmarca, p.idcolecao, p.idcategoria, '
      + 'p.idmodelo, p.datacadastro, p.lancamento, sum(i.total-i.desconto)/sum(i.quant) '
      + 'as precomedio, if(p.precoinicial is null, 0, p.precoinicial) as precoinicial '
      + 'from ' + FBanco + 'item i left join ' + FBanco + 'produto p on i.referencia=p.id '
      + 'and p.tipo="P" left join (select referencia, sum(saldo) as saldo, tipo from '
      + FBanco + 'estoque group by referencia) e on i.referencia=e.referencia and '
      + 'e.tipo="P" left join ' + FBanco + 'venda v on i.idvenda=v.idvenda '
      + 'where v.status>"E" and v.data between ' + FDataInicio + ' and ' + FDataFinal;
    if combomboxProdutoLoja.ItemIndex > 0 then
      _sql := _sql + ' and v.idloja=' + FLoja;
    _sql := _sql + ' group by i.referencia';
  end
  else
  begin
    _sql := 'select i.idestoque as id, e.saldo, e.idcor, e.idtamanho, '
      + 'sum(if(i.oper="V", i.quant, 0)) as quant, sum(if(i.oper="D", i.quant, 0)) as dev, '
      + 'i.referencia, p.descricao, p.idmarca, p.idcolecao, p.idcategoria, '
      + 'p.idmodelo, p.datacadastro, p.lancamento, sum(i.total-i.desconto)/sum(i.quant) '
      + 'as precomedio, if(p.precoinicial is null, 0, p.precoinicial) as precoinicial ' + 'from ' + FBanco
      + 'item i left join ' + FBanco + 'venda v on i.idvenda=v.idvenda left join '
      + FBanco + 'produto p on i.referencia=p.id and p.tipo="P" '
      + 'left join ' + FBanco + 'estoque e on e.id=i.idestoque and e.tipo="P" where '
      + 'v.status>"E" and v.data between ' + FDataInicio + ' and ' + FDataFinal;
    if combomboxPedidoLoja.ItemIndex > 0 then
      _sql := _sql + ' and v.idloja=' + FLoja;
    _sql := _sql + ' group by i.idestoque';
  end;
  qryProduto.Open(_sql);
end;

procedure TMainForm.UniDateTimePickerFinanceiroChange(Sender: TObject);
begin
  UniDateTimePicker3.DateTime := UniDateTimePickerFinanceiro.DateTime;
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  qryLoja.Open('select idloja, loja from `' + UniMainModule.loja.FieldByName('banco').AsString + '`.lojas');
  while not qryLoja.Eof do
  begin
    combomboxFinanceiroLoja.Items.Add(qryLoja.FieldByName('loja').AsString);
    combomboxPedidoLoja.Items.Add(qryLoja.FieldByName('loja').AsString);
    combomboxProdutoLoja.Items.Add(qryLoja.FieldByName('loja').AsString);
    qryLoja.Next;
  end;
  pageControl1.ActivePage := tabsheetMenu;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.


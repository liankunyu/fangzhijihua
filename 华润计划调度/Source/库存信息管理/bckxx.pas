unit bckxx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxLabel, cxDBLookupComboBox, cxCalendar, cxBlobEdit,
  cxTextEdit, cxCalc, frxClass, frxExportXLS, frxDBSet, frxGradient,
  frxRich, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls, RzEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, Mask, RzButton,
  ComCtrls, RzLabel, RzPanel, ExtCtrls,IniFiles, cxCheckBox,Math,
  cxCheckComboBox, ImgList, cxGridChartView, cxGridDBChartView, Menus,
  RzDBEdit, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBCKXX = class(TForm)
    RzPanel1: TRzPanel;
    rzgrpbxInput: TRzGroupBox;
    cxgrdDelivery: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    rzpnlBtns: TRzPanel;
    btnQuery: TRzToolButton;
    btnSave: TRzToolButton;
    btnCancel: TRzToolButton;
    btnAdd: TRzToolButton;
    btnExit: TRzToolButton;
    lblOutAmount: TRzLabel;
    edtOutAmount: TRzEdit;
    lblOutDate: TRzLabel;
    dtpOutDate: TDateTimePicker;
    mmoMemo: TRzMemo;
    lblMemo: TRzLabel;
    lblUnit: TRzLabel;
    cxgrdlvlOutOfWarehouseTotalInfo: TcxGridLevel;
    cxgrdbtblvwTotalOutOfWarehouseInfo: TcxGridDBTableView;
    cxgrdlvlOutOfWarehouseChart: TcxGridLevel;
    cxgrdbchrtvwOutOfWarehouseChart: TcxGridDBChartView;
    cxgrdlvlOutOfWarehouseInfo: TcxGridLevel;
    cxgrdbtblvwOutOfWarehouseInfo: TcxGridDBTableView;
    btnPrint: TRzToolButton;
    cxgrdbchrtsrsOrderAmount: TcxGridDBChartSeries;
    cxgrdbchrtsrsTotalOutOfWarehouseAmount: TcxGridDBChartSeries;
    cxgrdbchrtdtgrpCustomerName: TcxGridDBChartDataGroup;
    cxgrdbchrtdtgrpProductName: TcxGridDBChartDataGroup;
    cxgrdbclmnProductName: TcxGridDBColumn;
    cxgrdbclmnTotalOutOfWarehouseAmount: TcxGridDBColumn;
    cxgrdbclmnSpecification: TcxGridDBColumn;
    cxgrdbclmnOrderAmount: TcxGridDBColumn;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    cxgrdbclmnOutOfWarehouseAmount: TcxGridDBColumn;
    cxgrdbclmnOutDate: TcxGridDBColumn;
    cxgrdbclmnMemo: TcxGridDBColumn;
    frxdbdtst1: TfrxDBDataset;
    btnModify: TRzToolButton;
    btnDelete: TRzToolButton;
    frxlsxprt1: TfrxXLSExport;
    cxstyl5: TcxStyle;
    cxstyl6: TcxStyle;
    cxgrdbclmnCustomerName: TcxGridDBColumn;
    cxgrdbclmnShortRate: TcxGridDBColumn;
    cxgrdbclmnDeliveryTimeAndAmount: TcxGridDBColumn;
    cxgrdbclmnPackagingRequirement: TcxGridDBColumn;
    cxgrdbclmnDeliveryRequirement: TcxGridDBColumn;
    btnDelivery: TRzToolButton;
    cxgrdbclmnOrderID: TcxGridDBColumn;
    frxrprtTotalOutOfWarehouseInfo: TfrxReport;
    cxgrdbclmnDeliveryTime: TcxGridDBColumn;
    cxgrdbtblvwTotalOutOfWarehouseInfoColumn1: TcxGridDBColumn;
    cxLookupComboBox1: TcxLookupComboBox;
    RzLabel3: TRzLabel;
    RzLabel1: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    lblOrderID: TRzLabel;
    RzDBEdit6: TRzDBEdit;
    ImageList1: TImageList;
    procedure rzbtbtnExitClick(Sender: TObject);
    procedure edtOutAmountKeyPress(Sender: TObject; var Key: Char);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnDeliveryClick(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure frxrprtTotalOutOfWarehouseInfoGetValue(const VarName: String;
      var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBCKXX: TFrmBCKXX;
  user,Dep:string;  //录入人和所在部门
  lFile:TiniFile;
  procedure pbckxx(AHandle:THandle);stdcall;

implementation
uses UDM,bckcz;

{$R *.dfm}

procedure pbckxx(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBCKXX:=TFrmBCKXX.Create(Application);
  try
    FrmBCKXX.ShowModal;
  finally
    TFrmBCKXX(FrmBCKXX).Free;
  end;
end;

procedure TFrmBCKXX.rzbtbtnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBCKXX.edtOutAmountKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8,'.']) then
   begin
    key:=#0;
    application.MessageBox('请输入数字!','提示',MB_OK+MB_ICONINFORMATION);
   end;
end;

procedure TFrmBCKXX.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBCKXX.FormShow(Sender: TObject);
begin
  lFile:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'login.ini');
  user:=lFile.ReadString('登录信息','name','');
  Dep:=lFile.ReadString('登录信息','bmmc','');
  DM.qryBOrderID.Open;
  DM.qryBTotalOutOfWarehouse.Open;
  DM.qryBOutOfWarehouseInfo.Open;
  dtpOutDate.Date:=Date();
  cxgrdbtblvwTotalOutOfWarehouseInfo.ViewData.Expand(True);
end;

procedure TFrmBCKXX.btnAddClick(Sender: TObject);
begin
  if DM.qryBOrderID.Eof then
  begin
    Application.MessageBox('没有可以增加的信息，请核查！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  rzgrpbxInput.Tag:=1;
  cxLookupComboBox1.Enabled:=True;
  cxLookupComboBox1.SetFocus;
  edtOutAmount.Enabled:=True;
  dtpOutDate.Enabled:=True;
  mmoMemo.Enabled:=True;
  btnQuery.Enabled:=False;
  btnAdd.Enabled:=False;
  btnSave.Enabled:=True;
  btnCancel.Enabled:=True;
  btnModify.Enabled:=False;
  btnDelete.Enabled:=False;
  btnDelivery.Enabled:=False;
  btnPrint.Enabled:=False;
end;

procedure TFrmBCKXX.btnSaveClick(Sender: TObject);
var
 AColumn:TcxGridDBColumn;      //数据表相关的列
begin
   if dtpOutDate.Date>Date()+1 then
   begin
    Application.MessageBox('输入的截止日期有错误，请核查','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
   end;
  if rzgrpbxInput.Tag=1 then
  begin
    if not DM.qryBOrderID.Active then
    begin
      Application.MessageBox('请输入品名和客户信息！','提示',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;
    try
      with DM.qryBOutOfWarehouseInfo do
      begin
        Open;
        Insert;
        FieldByName('订单号').AsString:=DM.qryBProductName.FieldByName('订单号').AsString;
        FieldByName('出库数量').AsString:=edtOutAmount.Text;
        FieldByName('出库日期').AsString:=FormatDateTime('yyyy-mm-dd',dtpOutDate.Date);
        FieldByName('备注').AsString:=Trim(mmoMemo.Text);
        Refresh;
      end;
      Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
      with DM.qryBTotalOutOfWarehouse do
      begin
        Close;
        Open;
      end;
      with DM.qryBOutOfWarehouseInfo do
      begin
        Close;
        Open;
      end;
      AColumn:=FrmBCKXX.cxgrdbtblvwTotalOutOfWarehouseInfoColumn1;
      with FrmBCKXX.cxgrdbtblvwTotalOutOfWarehouseInfo.DataController.Filter  do
      begin
        Root.Clear;
        Root.AddItem(AColumn,foLike,'%'+cxLookupComboBox1.Text+'%',cxLookupComboBox1.Text);
        Active:=True;
      end;
      cxgrdbtblvwTotalOutOfWarehouseInfo.ViewData.Expand(True);
    except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
    end;
  end;
  if rzgrpbxInput.Tag=2 then
  begin
    try
      with DM.qryBOutOfWarehouseInfoModify do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update 棉布出库信息表 set 出库数量=:cksl,出库日期=:ckrq,备注=:bz where 编号=:bh');
        Parameters.ParamByName('cksl').Value:=edtOutAmount.Text;
        Parameters.ParamByName('ckrq').Value:=formatdatetime('yyyy-mm-dd',dtpOutDate.Date);
        Parameters.ParamByName('bz').Value:=Trim(mmoMemo.Text);
        Parameters.ParamByName('bh').Value:=DM.qryBOutOfWarehouseInfo.FieldByName('编号').AsInteger;
        ExecSQL;
      end;
      Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
      with DM.qryBTotalOutOfWarehouse do
      begin
        Close;
        Open;
      end;
      with DM.qryBOutOfWarehouseInfo do
      begin
        Close;
        Open;
      end;
      AColumn:=FrmBCKXX.cxgrdbtblvwTotalOutOfWarehouseInfoColumn1;
      with FrmBCKXX.cxgrdbtblvwTotalOutOfWarehouseInfo.DataController.Filter  do
      begin
        Root.Clear;
        Root.AddItem(AColumn,foLike,'%'+cxLookupComboBox1.Text+'%',cxLookupComboBox1.Text);
        Active:=True;
      end;
     { AColumn:=FrmBCKXX.cxgrdbclmnOrderID;
      with FrmBCKXX.cxgrdbtblvwTotalOutOfWarehouseInfo.DataController.Filter  do
      begin
        Root.Clear;
        Root.AddItem(AColumn,foLike,'%'+DM.qryBOrderID.FieldByName('订单号').AsString+'%',DM.qryBOrderID.FieldByName('订单号').AsString);
        Active:=True;
      end;  }
      cxgrdbtblvwTotalOutOfWarehouseInfo.ViewData.Expand(True);
    except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
    end;
  end;
  cxLookupComboBox1.Enabled:=False;
  btnCancel.Click;
end;

procedure TFrmBCKXX.btnCancelClick(Sender: TObject);
begin
  //cbbProductName.Text:='';
  //cbbProductName.Enabled:=False;
 // cbbCustomerName.Enabled:=False;
  cxLookupComboBox1.Enabled:=False;
  cxLookupComboBox1.Text:='';
  edtOutAmount.Text:='';
  edtOutAmount.Enabled:=False;
  dtpOutDate.Date:=Date();
  dtpOutDate.Enabled:=False;
  mmoMemo.Text:='';
  mmoMemo.Enabled:=False;
  btnQuery.Enabled:=True;
  btnAdd.Enabled:=True;
  btnSave.Enabled:=False;
  btnCancel.Enabled:=False;
  btnModify.Enabled:=True;
  btnDelete.Enabled:=True;
  btnDelivery.Enabled:=True;
   with DM.qryBProductName do
  begin
    Close;
   end;
end;

procedure TFrmBCKXX.btnPrintClick(Sender: TObject);
begin
  if cxgrdbtblvwTotalOutOfWarehouseInfo.ViewData.RowCount=0 then
  begin
     Application.MessageBox('没有可以打印的信息！','提示',MB_OK+MB_ICONINFORMATION);
     Exit;  
  end;
  try
    if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\BOutOfWarehouseInfo.fr3') then
    begin
      Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONERROR);
      Exit;
    end;
    frxrprtTotalOutOfWarehouseInfo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\BOutOfWarehouseInfo.fr3');
    frxrprtTotalOutOfWarehouseInfo.PrepareReport();
    frxrprtTotalOutOfWarehouseInfo.ShowReport(True);
  except
    Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONERROR);  end;
end;

procedure TFrmBCKXX.btnModifyClick(Sender: TObject);
begin
  if cxgrdbtblvwTotalOutOfWarehouseInfo.ViewData.RowCount>0 then
  begin
    rzgrpbxInput.Tag:=2;
    cxLookupComboBox1.Text:=DM.qryBTotalOutOfWarehouse.FieldByName('客户采购订单号').AsString;
    RzDBEdit5.Text:=DM.qryBTotalOutOfWarehouse.FieldByName('品名').AsString;
    RzDBEdit6.Text:=DM.qryBTotalOutOfWarehouse.FieldByName('客户名称').AsString;
    edtOutAmount.Enabled:=True;
    edtOutAmount.Text:=DM.qryBOutOfWarehouseInfo.FieldByName('出库数量').AsString;
    edtOutAmount.SetFocus;
    dtpOutDate.Enabled:=True;
    dtpOutDate.Date:=DM.qryBOutOfWarehouseInfo.FieldByName('出库日期').AsDateTime;
    mmoMemo.Enabled:=True;
    mmoMemo.Text:=DM.qryBOutOfWarehouseInfo.FieldByName('备注').AsString;
    btnQuery.Enabled:=False;
    btnAdd.Enabled:=False;
    btnSave.Enabled:=True;
    btnCancel.Enabled:=True;
    btnModify.Enabled:=False;
    btnDelete.Enabled:=False;
    btnDelivery.Enabled:=False;
    btnPrint.Enabled:=False;
  end
  else
  begin
    Application.MessageBox('没有可以修改的信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBCKXX.btnDeleteClick(Sender: TObject);
begin
 if cxgrdbtblvwTotalOutOfWarehouseInfo.ViewData.RowCount>0 then
  begin
   if Application.MessageBox('确定删除该出库信息吗?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
   begin
      try
        with DM.qryBOutOfWarehouseInfoDelete do
        begin
          Close;
          SQL.Clear;
          SQL.Add('delete from 棉布出库信息表 where 编号=:bh');
          Parameters.ParamByName('bh').Value:=DM.qryBOutOfWarehouseInfo.FieldByName('编号').AsString;
          ExecSQL;
        end;
        Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
        with DM.qryBOutOfWarehouseInfo do
        begin
          Close;
          Open;
        end;
        with DM.qryBTotalOutOfWarehouse do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwTotalOutOfWarehouseInfo.ViewData.Expand(True);
      except
        Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
   end;
  end
 else
 begin
    Application.MessageBox('没有可以删除的信息！','提示',MB_OK+MB_ICONINFORMATION);
 end;
end;

procedure TFrmBCKXX.btnQueryClick(Sender: TObject);
begin
  if   not DM.qryBOutOfWarehouseInfo.Eof  then
  begin
    FrmBCKCZ:=TFrmBCKCZ.Create(Self);
    FrmBCKCZ.ShowModal;
    FreeAndNil(FrmBCKCZ);
  end
  else
  begin
    Application.MessageBox('没有可以查询的信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBCKXX.btnDeliveryClick(Sender: TObject);
begin
  if cxgrdbtblvwTotalOutOfWarehouseInfo.ViewData.RowCount>0 then
  begin
   if Application.MessageBox('确定该信息已经完全交货了吗?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
   begin
      try
        with DM.qryBDeliveryStateUpdate do
        begin
          Close;
          SQL.Clear;
          SQL.Add('update 棉布订单信息表  set 交货状态=1 where 订单号=:ddh');
          Parameters.ParamByName('ddh').Value:=DM.qryBTotalOutOfWarehouse.FieldByName('订单号').AsString;
          ExecSQL;
        end;
        Application.MessageBox('状态更新成功！','提示',MB_OK+MB_ICONINFORMATION);
        with DM.qryBTotalOutOfWarehouse do
        begin
          Close;
          Open;
        end;
        with DM.qryBOrderID do
        begin
          Close;
          Open;
        end;
      except
        Application.MessageBox('状态更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
   end;
  end
  else
  begin
    Application.MessageBox('没有可以交货的信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBCKXX.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
    with DM.qryBProductName do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布订单信息 where 客户采购订单号=:khcgddh');
      Parameters.ParamByName('khcgddh').Value:=cxLookupComboBox1.Text;
      Open;
    end;
end;

procedure TFrmBCKXX.frxrprtTotalOutOfWarehouseInfoGetValue(
  const VarName: String; var Value: Variant);
begin
     if VarName='打印人' then   //在打印页面显示打印人信息
  begin
    Value:=user;
  end;
  if VarName='部门' then   //在打印页面显示打印人所在部门信息
  begin
    Value:=Dep;
  end;
end;

end.

unit bgylr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, cxGraphics, RzButton, StdCtrls, RzEdit, Mask, RzLabel,
  RzPanel, ExtCtrls, DBCtrls, RzDBEdit, RzLstBox, RzTabs, frxClass,
  frxDBSet,DB, ADODB,ComCtrls,JPEG, frxBDEComponents;

type
  TFrmBGYLR = class(TForm)
    rzpnl6: TRzPanel;
    btnSave: TRzToolButton;
    btnCancel: TRzToolButton;
    btnPrint: TRzToolButton;
    rzpnl4: TRzPanel;
    rzgrpbxBasicInfo: TRzGroupBox;
    mmoSpecification: TRzMemo;
    edtOrderAmount: TRzEdit;
    mmoDeliveryTimeAndAmount: TRzMemo;
    edtProductName: TRzEdit;
    mmoCustomerName: TRzMemo;
    lblSZipCode: TRzLabel;
    lbl119: TRzLabel;
    lbl120: TRzLabel;
    lbl121: TRzLabel;
    lbl122: TRzLabel;
    lbl123: TRzLabel;
    lbl12: TRzLabel;
    lbl113: TRzLabel;
    btnExamine: TRzToolButton;
    frxrprtCraftInfo: TfrxReport;
    frxdbdtstCraftInfo: TfrxDBDataset;
    dtpDeliveryTime: TDateTimePicker;
    dlgOpen1: TOpenDialog;
    frxBDEComponents1: TfrxBDEComponents;
    rzpgcntrl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    TabSheet5: TRzTabSheet;
    rzgrpbxWarpingCraft: TRzGroupBox;
    lbl3: TRzLabel;
    lbl21: TRzLabel;
    lbl41: TRzLabel;
    lbl43: TRzLabel;
    lbl5: TRzLabel;
    lbl7: TRzLabel;
    lbl42: TRzLabel;
    lbl1: TRzLabel;
    lbl40: TRzLabel;
    lbl2: TRzLabel;
    lbl4: TRzLabel;
    lbl6: TRzLabel;
    lbl8: TRzLabel;
    lbl9: TRzLabel;
    edt17: TRzDBEdit;
    edt19: TRzDBEdit;
    edt20: TRzDBEdit;
    edt21: TRzDBEdit;
    edt22: TRzDBEdit;
    edt1: TRzDBEdit;
    edt2: TRzDBEdit;
    edt3: TRzDBEdit;
    rzgrpbx1: TRzGroupBox;
    lbl17: TRzLabel;
    lbl18: TRzLabel;
    lbl24: TRzLabel;
    lbl35: TRzLabel;
    lbl39: TRzLabel;
    lbl76: TRzLabel;
    lbl19: TRzLabel;
    lbl80: TRzLabel;
    lbl20: TRzLabel;
    lbl23: TRzLabel;
    lbl25: TRzLabel;
    lbl31: TRzLabel;
    lbl16: TRzLabel;
    lbl30: TRzLabel;
    lbl74: TRzLabel;
    lbl32: TRzLabel;
    lbl77: TRzLabel;
    lbl34: TRzLabel;
    lbl22: TRzLabel;
    lbl36: TRzLabel;
    lbl38: TRzLabel;
    lbl37: TRzLabel;
    edt4: TRzDBEdit;
    edtPVA1799: TRzDBEdit;
    edtPVA205: TRzDBEdit;
    edt11: TRzDBEdit;
    edtAM2: TRzDBEdit;
    edt13: TRzDBEdit;
    edt14: TRzDBEdit;
    edt15: TRzDBEdit;
    edt16: TRzDBEdit;
    edt18: TRzDBEdit;
    edt47: TRzDBEdit;
    edtPH: TRzDBEdit;
    rzgrpbxSizingCraft: TRzGroupBox;
    lbl46: TRzLabel;
    lbl48: TRzLabel;
    lbl50: TRzLabel;
    lbl52: TRzLabel;
    lbl58: TRzLabel;
    lbl60: TRzLabel;
    lbl64: TRzLabel;
    lbl33: TRzLabel;
    lbl54: TRzLabel;
    lbl56: TRzLabel;
    lbl79: TRzLabel;
    lbl85: TRzLabel;
    lbl87: TRzLabel;
    lbl89: TRzLabel;
    lbl91: TRzLabel;
    lbl93: TRzLabel;
    lbl95: TRzLabel;
    lbl97: TRzLabel;
    lbl99: TRzLabel;
    lbl101: TRzLabel;
    lbl114: TRzLabel;
    lbl118: TRzLabel;
    lbl44: TRzLabel;
    lbl53: TRzLabel;
    lbl63: TRzLabel;
    lbl84: TRzLabel;
    lbl94: TRzLabel;
    lbl115: TRzLabel;
    lbl116: TRzLabel;
    lbl45: TRzLabel;
    lbl55: TRzLabel;
    lbl65: TRzLabel;
    lbl86: TRzLabel;
    lbl96: TRzLabel;
    lbl117: TRzLabel;
    lbl47: TRzLabel;
    lbl57: TRzLabel;
    lbl67: TRzLabel;
    lbl88: TRzLabel;
    lbl98: TRzLabel;
    lbl49: TRzLabel;
    lbl59: TRzLabel;
    lbl78: TRzLabel;
    lbl90: TRzLabel;
    lbl100: TRzLabel;
    lbl51: TRzLabel;
    lbl61: TRzLabel;
    lbl81: TRzLabel;
    lbl92: TRzLabel;
    lbl102: TRzLabel;
    lbl83: TRzLabel;
    edt23: TRzDBEdit;
    edt24: TRzDBEdit;
    edt25: TRzDBEdit;
    edt26: TRzDBEdit;
    edt27: TRzDBEdit;
    edtPH1: TRzDBEdit;
    edt29: TRzDBEdit;
    edt30: TRzDBEdit;
    edt31: TRzDBEdit;
    edt32: TRzDBEdit;
    edt33: TRzDBEdit;
    edt34: TRzDBEdit;
    edt35: TRzDBEdit;
    edt9: TRzDBEdit;
    edt10: TRzDBEdit;
    edt12: TRzDBEdit;
    edt48: TRzDBEdit;
    edt49: TRzDBEdit;
    edt50: TRzDBEdit;
    edt51: TRzDBEdit;
    edt52: TRzDBEdit;
    edt53: TRzDBEdit;
    edt54: TRzDBEdit;
    edt55: TRzDBEdit;
    edt56: TRzDBEdit;
    edt57: TRzDBEdit;
    edt58: TRzDBEdit;
    rzgrpbx3: TRzGroupBox;
    lbl110: TRzLabel;
    lbl27: TRzLabel;
    lbl28: TRzLabel;
    lbl29: TRzLabel;
    lbl103: TRzLabel;
    lbl104: TRzLabel;
    lbl105: TRzLabel;
    lbl26: TRzLabel;
    lbl68: TRzLabel;
    lbl106: TRzLabel;
    lbl107: TRzLabel;
    lbl69: TRzLabel;
    lbl108: TRzLabel;
    lbl125: TRzLabel;
    lbl126: TRzLabel;
    edt36: TRzDBEdit;
    edt37: TRzDBEdit;
    mmo4: TRzDBMemo;
    mmo5: TRzDBMemo;
    edt38: TRzDBEdit;
    edt39: TRzDBEdit;
    edt40: TRzDBEdit;
    edt41: TRzDBEdit;
    edt42: TRzDBEdit;
    edt43: TRzDBEdit;
    edt44: TRzDBEdit;
    rzgrpbx2: TRzGroupBox;
    lbl73: TRzLabel;
    lbl72: TRzLabel;
    edt63: TRzDBEdit;
    rzgrpbx5: TRzGroupBox;
    lbl127: TRzLabel;
    lbl128: TRzLabel;
    lbl112: TRzLabel;
    lbl129: TRzLabel;
    lbl130: TRzLabel;
    lbl131: TRzLabel;
    lbl134: TRzLabel;
    lbl135: TRzLabel;
    lbl136: TRzLabel;
    lbl137: TRzLabel;
    lbl150: TRzLabel;
    lbl151: TRzLabel;
    lbl153: TRzLabel;
    lbl152: TRzLabel;
    lbl154: TRzLabel;
    lbl155: TRzLabel;
    edt46: TRzDBEdit;
    edt61: TRzDBEdit;
    edt83: TRzDBEdit;
    edt64: TRzDBEdit;
    mmo1: TRzDBMemo;
    edt65: TRzDBEdit;
    edt66: TRzDBEdit;
    edt67: TRzDBEdit;
    edt84: TRzDBEdit;
    edt85: TRzDBEdit;
    edt86: TRzDBEdit;
    edt87: TRzDBEdit;
    rzgrpbx4: TRzGroupBox;
    lbl138: TRzLabel;
    lbl139: TRzLabel;
    lbl140: TRzLabel;
    lbl141: TRzLabel;
    lbl142: TRzLabel;
    lbl143: TRzLabel;
    lbl160: TRzLabel;
    lbl161: TRzLabel;
    lbl162: TRzLabel;
    lbl163: TRzLabel;
    lbl167: TRzLabel;
    lbl168: TRzLabel;
    lbl169: TRzLabel;
    lbl173: TRzLabel;
    lbl174: TRzLabel;
    lbl178: TRzLabel;
    lbl179: TRzLabel;
    lbl183: TRzLabel;
    lbl184: TRzLabel;
    lbl192: TRzLabel;
    lbl145: TRzLabel;
    lbl193: TRzLabel;
    lbl144: TRzLabel;
    lbl146: TRzLabel;
    lbl147: TRzLabel;
    lbl148: TRzLabel;
    lbl149: TRzLabel;
    edt68: TRzDBEdit;
    edt69: TRzDBEdit;
    edt70: TRzDBEdit;
    edt71: TRzDBEdit;
    edt72: TRzDBEdit;
    edtPH2: TRzDBEdit;
    edt73: TRzDBEdit;
    edt74: TRzDBEdit;
    edt75: TRzDBEdit;
    edt76: TRzDBEdit;
    edt77: TRzDBEdit;
    edt78: TRzDBEdit;
    edt82: TRzDBEdit;
    edt79: TRzDBEdit;
    edt80: TRzDBEdit;
    edt81: TRzDBEdit;
    rzgrpbx8: TRzGroupBox;
    lbl240: TRzLabel;
    lbl241: TRzLabel;
    lbl262: TRzLabel;
    lbl269: TRzLabel;
    lbl275: TRzLabel;
    lbl280: TRzLabel;
    lbl156: TRzLabel;
    lbl157: TRzLabel;
    edt119: TRzDBEdit;
    edt120: TRzDBEdit;
    edt121: TRzDBEdit;
    edt122: TRzDBEdit;
    dbimg1: TDBImage;
    edtOrderID: TRzDBEdit;
    RzToolButton1: TRzToolButton;
    rzgrpbxSpecification: TRzGroupBox;
    RzGroupBox1: TRzGroupBox;
    lbl13: TRzLabel;
    lbl71: TRzLabel;
    lbl111: TRzLabel;
    lbl15: TRzLabel;
    lbl62: TRzLabel;
    lbl70: TRzLabel;
    lbl66: TRzLabel;
    lbl10: TRzLabel;
    lbl11: TRzLabel;
    lbl124: TRzLabel;
    lbl14: TRzLabel;
    lbl109: TRzLabel;
    lbl75: TRzLabel;
    edt5: TRzDBEdit;
    edt6: TRzDBEdit;
    edt7: TRzDBEdit;
    edt28: TRzDBEdit;
    edt45: TRzDBEdit;
    edt59: TRzDBEdit;
    edt60: TRzDBEdit;
    edt8: TRzDBEdit;
    lbl132: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    lbl133: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    lbl158: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    lbl159: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    lbl164: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    lbl165: TRzLabel;
    RzDBEdit6: TRzDBEdit;
    lbl166: TRzLabel;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    lbl170: TRzLabel;
    RzDBEdit9: TRzDBEdit;
    lbl171: TRzLabel;
    RzDBEdit12: TRzDBEdit;
    lbl176: TRzLabel;
    RzDBEdit13: TRzDBEdit;
    lbl177: TRzLabel;
    RzDBEdit14: TRzDBEdit;
    lbl180: TRzLabel;
    lbl181: TRzLabel;
    lbl182: TRzLabel;
    lbl185: TRzLabel;
    lbl186: TRzLabel;
    lbl187: TRzLabel;
    lbl172: TRzLabel;
    lbl175: TRzLabel;
    lbl188: TRzLabel;
    lbl189: TRzLabel;
    RzGroupBox2: TRzGroupBox;
    lbl191: TRzLabel;
    RzDBEdit10: TRzDBEdit;
    lbl194: TRzLabel;
    lbl195: TRzLabel;
    RzDBEdit11: TRzDBEdit;
    lbl196: TRzLabel;
    lbl197: TRzLabel;
    RzDBEdit15: TRzDBEdit;
    lbl198: TRzLabel;
    lbl199: TRzLabel;
    RzDBEdit16: TRzDBEdit;
    lbl200: TRzLabel;
    lbl201: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    lbl202: TRzLabel;
    RzDBEdit18: TRzDBEdit;
    lbl203: TRzLabel;
    RzDBEdit19: TRzDBEdit;
    RzGroupBox3: TRzGroupBox;
    RzGroupBox4: TRzGroupBox;
    lbl204: TRzLabel;
    RzDBEdit20: TRzDBEdit;
    lbl205: TRzLabel;
    lbl206: TRzLabel;
    RzDBEdit21: TRzDBEdit;
    lbl207: TRzLabel;
    lbl208: TRzLabel;
    lbl209: TRzLabel;
    lbl210: TRzLabel;
    RzDBEdit23: TRzDBEdit;
    lbl211: TRzLabel;
    lbl212: TRzLabel;
    RzDBEdit24: TRzDBEdit;
    lbl213: TRzLabel;
    RzDBEdit25: TRzDBEdit;
    lbl214: TRzLabel;
    lbl215: TRzLabel;
    lbl216: TRzLabel;
    RzDBEdit26: TRzDBEdit;
    lbl217: TRzLabel;
    lbl218: TRzLabel;
    RzDBEdit27: TRzDBEdit;
    lbl219: TRzLabel;
    lbl220: TRzLabel;
    RzDBEdit28: TRzDBEdit;
    lbl221: TRzLabel;
    RzDBEdit29: TRzDBEdit;
    frxDBDataset1: TfrxDBDataset;
    ImageList1: TImageList;
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnExamineClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure frxrprtCraftInfoBeforePrint(Sender: TfrxReportComponent);
    procedure RzDBEdit1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBGYLR: TFrmBGYLR;

implementation
uses UDM,bgy,bgyfg,cxFilter,CxGridDBBandedTableView;

{$R *.dfm}

procedure TFrmBGYLR.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBGYLR.FormShow(Sender: TObject);
var
  i:Integer;
begin
  if Self.Tag=0 then
  begin
    for i:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[i].ClassType=TRzDBEdit) then
      begin
        TRzDBEdit(Self.Components[i]).DataSource:=DM.dsBCraftInfoInsert;
      end;
      if (Self.Components[i].ClassType=TRzDBMemo) then
      begin
        TRzDBMemo(Self.Components[i]).DataSource:=DM.dsBCraftInfoInsert;
      end;
    end;
    DM.qryBCraftInfoInsert.Open;
    DM.qryBCraftInfoInsert.Append;
    edtOrderID.Text:=DM.qryBCraftTurn.FieldByName('订单号').Value;
    edtProductName.Text:=DM.qryBCraftTurn.FieldByName('品名').Value;
    mmoSpecification.Text:=DM.qryBCraftTurn.FieldByName('规格').Value;
    mmoCustomerName.Text:=DM.qryBCraftTurn.FieldByName('客户名称').Value;
    edtOrderAmount.Text:=DM.qryBCraftTurn.FieldByName('订单量').Value;
    if DM.qryBCraftTurn.FieldByName('交货期').Value=null then
    begin
      mmoDeliveryTimeAndAmount.Text:=DM.qryBCraftTurn.FieldByName('交货事宜').AsString;
      dtpDeliveryTime.Visible:=False;
    end
    else
    begin
      dtpDeliveryTime.DateTime:=DM.qryBCraftTurn.FieldByName('交货期').AsDateTime;
      mmoDeliveryTimeAndAmount.Visible:=False;
    end;
    RzDBEdit12.Enabled:=False;
    RzDBEdit13.Enabled:=False;
    RzDBEdit14.Enabled:=False;
    edt48.Enabled:=False;
    btnExamine.Visible:=False;
    btnPrint.Visible:=False;
  end;
  if Self.Tag=1 then
  begin
    edtProductName.Text:=DM.qryBCraftInfo.FieldByName('品名').Value;
    mmoSpecification.Text:=DM.qryBCraftInfo.FieldByName('规格').Value;
    mmoCustomerName.Text:=DM.qryBCraftInfo.FieldByName('客户名称').Value;
    edtOrderAmount.Text:=DM.qryBCraftInfo.FieldByName('订单量').Value;
    if DM.qryBCraftInfo.FieldByName('交货期').Value=null  then
    begin
      dtpDeliveryTime.Visible:=False;
      mmoDeliveryTimeAndAmount.Text:=DM.qryBCraftInfo.FieldByName('交货事宜').AsString;
    end
    else
    begin
      mmoDeliveryTimeAndAmount.Visible:=False;
      dtpDeliveryTime.DateTime:=DM.qryBCraftInfo.FieldByName('交货期').AsDateTime;
    end;
    RzDBEdit12.Enabled:=False;
    RzDBEdit13.Enabled:=False;
    RzDBEdit14.Enabled:=False;
    edt48.Enabled:=False;
    
    btnExamine.Visible:=False;
    btnPrint.Visible:=False;
    DM.qryBCraftInfo.Edit;
  end;
  if Self.Tag=2 then
  begin
    edtProductName.Text:=DM.qryBCraftInfo.FieldByName('品名').Value;
    mmoSpecification.Text:=DM.qryBCraftInfo.FieldByName('规格').Value;
    mmoCustomerName.Text:=DM.qryBCraftInfo.FieldByName('客户名称').Value;
    edtOrderAmount.Text:=DM.qryBCraftInfo.FieldByName('订单量').Value;
    if DM.qryBCraftInfo.FieldByName('交货期').Value=null  then
    begin
      dtpDeliveryTime.Visible:=False;
      mmoDeliveryTimeAndAmount.Text:=DM.qryBCraftInfo.FieldByName('交货事宜').AsString;
    end
    else
    begin
      mmoDeliveryTimeAndAmount.Visible:=False;
      dtpDeliveryTime.DateTime:=DM.qryBCraftInfo.FieldByName('交货期').AsDateTime;
    end;
    for i:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[i].ClassType=TRzDBEdit) then
      begin
        TRzDBEdit(Self.Components[i]).ReadOnly:=True;
      end;
      if (Self.Components[i].ClassType=TRzDBMemo) then
      begin
        TRzDBMemo(Self.Components[i]).ReadOnly:=True;
      end;
    end;
    btnSave.Visible:=False;
    btnPrint.Visible:=False;
  end;
  if Self.Tag=3 then
  begin
    with DM.qryCraftInfoPrint do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布工艺信息 where 订单号=:ddh');
      Parameters.ParamByName('ddh').Value:=edtOrderID.Text;
      Open;
    end;
    edtProductName.Text:=DM.qryBCraftInfo.FieldByName('品名').Value;
    mmoSpecification.Text:=DM.qryBCraftInfo.FieldByName('规格').Value;
    mmoCustomerName.Text:=DM.qryBCraftInfo.FieldByName('客户名称').Value;
    edtOrderAmount.Text:=DM.qryBCraftInfo.FieldByName('订单量').Value;
    if DM.qryBCraftInfo.FieldByName('交货期').Value=null  then
    begin
      dtpDeliveryTime.Visible:=False;
      mmoDeliveryTimeAndAmount.Text:=DM.qryBCraftInfo.FieldByName('交货事宜').AsString;
    end
    else
    begin
      mmoDeliveryTimeAndAmount.Visible:=False;
      dtpDeliveryTime.DateTime:=DM.qryBCraftInfo.FieldByName('交货期').AsDateTime;
    end;
    for i:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[i].ClassType=TRzDBEdit) then
      begin
        TRzDBEdit(Self.Components[i]).ReadOnly:=True;
      end;
      if (Self.Components[i].ClassType=TRzDBMemo) then
      begin
        TRzDBMemo(Self.Components[i]).ReadOnly:=True;
      end;
    end;
    btnExamine.Visible:=False;
    btnSave.Visible:=False;
  end;
   if Self.Tag=4 then
  begin
        for i:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[i].ClassType=TRzDBEdit) then
      begin
        TRzDBEdit(Self.Components[i]).DataSource:=DM.dsgyhz;
      end;
      if (Self.Components[i].ClassType=TRzDBMemo) then
      begin
        TRzDBMemo(Self.Components[i]).DataSource:=DM.dsgyhz;
      end;
    end;
    dbimg1.DataSource:=DM.dsgyhz;
    edtProductName.Text:=DM.qrygyhz.FieldByName('品名').Value;
    mmoSpecification.Text:=DM.qrygyhz.FieldByName('规格').Value;
    //mmoCustomerName.Text:=DM.qryBCraftInfo.FieldByName('客户名称').Value;
    edtOrderAmount.Text:=DM.qrygyhz.FieldByName('订单量').Value;
    if DM.qrygyhz.FieldByName('交货期').Value=null  then
    begin
      dtpDeliveryTime.Visible:=False;
      mmoDeliveryTimeAndAmount.Text:=DM.qrygyhz.FieldByName('交货事宜').AsString;
    end
    else
    begin
      mmoDeliveryTimeAndAmount.Visible:=False;
      dtpDeliveryTime.DateTime:=DM.qrygyhz.FieldByName('交货期').AsDateTime;
    end;
    for i:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[i].ClassType=TRzDBEdit) then
      begin
        TRzDBEdit(Self.Components[i]).ReadOnly:=True;
      end;
      if (Self.Components[i].ClassType=TRzDBMemo) then
      begin
        TRzDBMemo(Self.Components[i]).ReadOnly:=True;
      end;
    end;
    btnExamine.Visible:=False;
    btnSave.Visible:=False;
  end; 
end;


procedure TFrmBGYLR.btnSaveClick(Sender: TObject);
var
 AColumn:TcxGridDBBandedColumn;      //数据表相关的列
begin
  if Self.Tag=0 then
  begin
    DM.ADOConnection1.BeginTrans;
    begin
      try
        with DM.qryBCraftInfoInsert do
        begin
          FieldByName('纹板图').Assign(dbimg1.Picture);
          FieldByName('订单号').AsString:=edtOrderID.Text;
          FieldByName('品名').AsString:=edtProductName.Text;
          FieldByName('规格').AsString:=mmoSpecification.Text;
          FieldByName('客户号').AsString:=DM.qryBCraftTurn.FieldByName('客户号').Value;
          FieldByName('订单量').AsString:=edtOrderAmount.Text;
          
          if dtpDeliveryTime.Visible then
          begin
            FieldByName('交货期').AsString:=formatdatetime('yyyy-mm-dd',dtpDeliveryTime.Date);
          end
          else
          begin
            FieldByName('交货事宜').AsString:=mmoDeliveryTimeAndAmount.Text;
          end;
          FieldByName('工艺设计者').AsString:=FrmBGY.user;
          FieldByName('工艺设计日期').AsString:=FormatDateTime('yyyy-mm-dd',Date());
          Post;
        end;
        with DM.spBCraftStateUpdate do
        begin
          Close;
          procedureName:='proc_棉布工艺表_棉布订单信息工艺状态更新';
          Parameters.Refresh;
          with Parameters do
          begin
            ParamByName('@OrderID').Value:=DM.qryBCraftTurn.FieldByName('订单号').Value;
          end;
          ExecProc;
        end;
        Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        FrmBGYFG.Close;
        FrmBGY.rzrdgrpSelect.ItemIndex:=0;
        with DM.qryBCraftInfo do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_棉布工艺信息  where 审核状态=0 order by 品名');
          Open;
          FrmBGY.btnPrint.Enabled:=False;
          FrmBGY.cxgrdbndclmnExaminer.Visible:=False;
          FrmBGY.cxgrdbndclmnExamineDate.Visible:=False;
        end;
        AColumn:=FrmBGY.cxgrdbndclmnOrderID;
        with FrmBGY.cxgrdbndtblvwCraftInfo.DataController.Filter  do
        begin
          Root.Clear;
          Root.AddItem(AColumn,foLike,'%'+Trim(edtOrderID.Text)+'%',Trim(edtOrderID.Text));
          Active:=True;
        end;
      except
        Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
        DM.ADOConnection1.RollbackTrans;
      end;
    end;
    Self.Close;
  end;
  if Self.Tag=1 then
  begin
    with DM.qryBCraftInfo do
    begin
      try
        Post;
        Application.MessageBox('更新成功！','提示',MB_OK+MB_ICONINFORMATION);
      except
        Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
    end;
    Self.Close;
  end;

end;

procedure TFrmBGYLR.btnExamineClick(Sender: TObject);
begin
   if Application.MessageBox('确定审核吗?审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBExamineStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布工艺表审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@OrderID').Value:=edtOrderID.Text;
        Parameters.ParamByName('@Examiner').Value:=FrmBGY.user;
        Parameters.ParamByName('@ExamineDate').Value:=FormatDateTime('yyyy-mm-dd',Date());
        ExecProc;
        Application.MessageBox('审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.qryBCraftInfo do
        begin
          Close;
          Open;
        end;
      end;
    except
      Application.MessageBox('审核失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      DM.ADOConnection1.RollbackTrans;
    end;
    Self.Close;
  end;
end;

procedure TFrmBGYLR.btnPrintClick(Sender: TObject);
begin
  if rzpgcntrl1.ActivePageIndex=0 then
  begin
    try
      if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\craft.fr3') then
      begin
        Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
        Exit;
      end;
      frxrprtCraftInfo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\craft.fr3');
      frxrprtCraftInfo.PrepareReport();
      frxrprtCraftInfo.ShowReport(True);
    except
      Application.MessageBox('无法打印，请核查原因！','提示',MB_OK+MB_ICONERROR);
    end;
  end;
  if rzpgcntrl1.ActivePageIndex=1 then
  begin
    try
      if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\PreparingWorkshopCraft.fr3') then
      begin
        Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
        Exit;
      end;
      frxrprtCraftInfo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\PreparingWorkshopCraft.fr3');
      frxrprtCraftInfo.PrepareReport();
      frxrprtCraftInfo.ShowReport(True);
    except
      Application.MessageBox('无法打印，请核查原因！','提示',MB_OK+MB_ICONERROR);
    end;
  end;
  if rzpgcntrl1.ActivePageIndex=2 then
  begin
    try
      if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\WeavingWorkshopCraft.fr3') then
      begin
        Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
        Exit;
      end;
      frxrprtCraftInfo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\WeavingWorkshopCraft.fr3');
      frxrprtCraftInfo.PrepareReport();
      frxrprtCraftInfo.ShowReport(True);
    except
      Application.MessageBox('无法打印，请核查原因！','提示',MB_OK+MB_ICONERROR);
    end;
  end;
  if rzpgcntrl1.ActivePageIndex=3 then
  begin
    try
      if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\ArrangementWorkshopCraft.fr3') then
      begin
        Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
        Exit;
      end;
      frxrprtCraftInfo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\ArrangementWorkshopCraft.fr3');
      frxrprtCraftInfo.PrepareReport();
      frxrprtCraftInfo.ShowReport(True);
    except
      Application.MessageBox('无法打印，请核查原因！','提示',MB_OK+MB_ICONERROR);
    end;
  end;
end;

procedure TFrmBGYLR.RzToolButton1Click(Sender: TObject);
var
 bmp1:TBitmap;
 jpg1:TJpegImage;
begin
  dlgOpen1.DefaultExt:=GraphicExtension(TJpegimage);

  if dlgOpen1.Execute then

     begin

     bmp1:=TBitmap.Create;

     jpg1:=TJpegImage.Create;

     try

     jpg1.LoadFromFile(dlgOpen1.FileName);

     bmp1.Assign(jpg1);

     dbimg1.Picture.Bitmap.Assign(bmp1);

     finally

       jpg1.Free;

       bmp1.Free;

     end;

    end;
end;
procedure TFrmBGYLR.frxrprtCraftInfoBeforePrint(
  Sender: TfrxReportComponent);
begin
 //TfrPictureView(frxrprtCraftInfo.FindObject('picture1')).Picture.LoadFromFile('e:\qq.jpg');
end;

procedure TFrmBGYLR.RzDBEdit1Change(Sender: TObject);
var
  jxjd:string;
  wxjd:string;
  pszl:string;
begin

    if (RzDBEdit1.Text<>'') and (edt7.Text<>'') then
   begin
     pszl:=FloatToStr(StrToFloat(RzDBEdit1.Text)*StrToFloat(edt7.Text)/1000);
   end
   else
   begin
    pszl:='0';
   end;
     if (RzDBEdit1.Text<>'') and (RzDBEdit3.Text<>'') then
   begin
    jxjd:=FloatToStr(Sqrt(StrToFloat(RzDBEdit1.Text))*0.037*StrToFloat(RzDBEdit3.Text));
   end
   else
   begin
   jxjd:='0';
   end;
    if (RzDBEdit2.Text<>'') and (RzDBEdit4.Text<>'') then
   begin
    wxjd:=FloatToStr(Sqrt(StrToFloat(RzDBEdit2.Text))*0.037*StrToFloat(RzDBEdit4.Text));
   end
   else
   begin
   wxjd:='0';
   end;
 
 edt48.text:=pszl;
 RzDBEdit12.text:=jxjd;
 RzDBEdit13.text:=wxjd;
 RzDBEdit14.text:=FloatToStr(StrToFloat(jxjd)+StrToFloat(wxjd)-StrToFloat(jxjd)*StrToFloat(wxjd)/100);
end;

end.

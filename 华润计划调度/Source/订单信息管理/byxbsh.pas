unit byxbsh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzEdit, Mask, RzLabel, RzPanel, RzButton, ExtCtrls,
  ImgList, cxGraphics, RzDBEdit, ComCtrls, RzDTP, RzDBDTP, DBCtrls;

type
  TFrmYXBSH = class(TForm)
    rzpnl1: TRzPanel;
    rzpnlBtns: TRzPanel;
    btnExamine: TRzToolButton;
    btnExit: TRzToolButton;
    rzgrpbxInput: TRzGroupBox;
    lblOrderID: TRzLabel;
    lblOrderQuantity: TRzLabel;
    lblDeliveryTimeAndAmount: TRzLabel;
    lblQualityRequirement: TRzLabel;
    lblPackagingRequirement: TRzLabel;
    lbl2: TRzLabel;
    lblSpecification: TRzLabel;
    lbl3: TRzLabel;
    lbl4: TRzLabel;
    lbl5: TRzLabel;
    lbl1: TRzLabel;
    lbl6: TRzLabel;
    lbl7: TRzLabel;
    lbl8: TRzLabel;
    lbl9: TRzLabel;
    lbl10: TRzLabel;
    lbl11: TRzLabel;
    lbl12: TRzLabel;
    lbl13: TRzLabel;
    lbl14: TRzLabel;
    lbl15: TRzLabel;
    lbl16: TRzLabel;
    lbl17: TRzLabel;
    lbl18: TRzLabel;
    lbl19: TRzLabel;
    lbl20: TRzLabel;
    lbl21: TRzLabel;
    lbl22: TRzLabel;
    lbl23: TRzLabel;
    lbl24: TRzLabel;
    lbl25: TRzLabel;
    lbl26: TRzLabel;
    lbl27: TRzLabel;
    lbl28: TRzLabel;
    lbl29: TRzLabel;
    lbl30: TRzLabel;
    lbl31: TRzLabel;
    lbl32: TRzLabel;
    lbl33: TRzLabel;
    edt29: TRzDBEdit;
    edt1: TRzDBEdit;
    edt2: TRzDBEdit;
    edt3: TRzDBEdit;
    edt4: TRzDBEdit;
    edt5: TRzDBEdit;
    edt6: TRzDBEdit;
    edt7: TRzDBEdit;
    edt8: TRzDBEdit;
    edt9: TRzDBEdit;
    edt10: TRzDBEdit;
    edt11: TRzDBEdit;
    edt12: TRzDBEdit;
    edt13: TRzDBEdit;
    edt14: TRzDBEdit;
    edt15: TRzDBEdit;
    edt16: TRzDBEdit;
    edt17: TRzDBEdit;
    edt18: TRzDBEdit;
    edt19: TRzDBEdit;
    edt20: TRzDBEdit;
    edt21: TRzDBEdit;
    edt22: TRzDBEdit;
    edt23: TRzDBEdit;
    edt24: TRzDBEdit;
    edt25: TRzDBEdit;
    edt26: TRzDBEdit;
    edt27: TRzDBEdit;
    edt28: TRzDBEdit;
    edtOrderID: TRzDBEdit;
    edt31: TRzDBEdit;
    mmo1: TRzDBMemo;
    mmoDeliveryTimeAndAmount: TRzDBMemo;
    mmo3: TRzDBMemo;
    mmo4: TRzDBMemo;
    lbl34: TRzLabel;
    edt32: TRzDBEdit;
    lbl35: TRzLabel;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    dtpDeliveryTime: TRzDBDateTimePicker;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzLabel1: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel2: TRzLabel;
    RzDBEdit7: TRzDBEdit;
    RzDBMemo1: TRzDBMemo;
    RzLabel3: TRzLabel;
    RzLabel11: TRzLabel;
    RzDBMemo2: TRzDBMemo;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    RzLabel9: TRzLabel;
    RzDBEdit15: TRzDBEdit;
    RzDBEdit16: TRzDBEdit;
    lbl36: TRzLabel;
    lbl37: TRzLabel;
    lbl38: TRzLabel;
    RzDBEdit18: TRzDBEdit;
    RzDBEdit21: TRzDBEdit;
    lbl39: TRzLabel;
    lbl40: TRzLabel;
    lbl41: TRzLabel;
    RzDBEdit22: TRzDBEdit;
    RzDBEdit23: TRzDBEdit;
    RzDBEdit24: TRzDBEdit;
    btn1: TRzToolButton;
    lbl42: TRzLabel;
    RzDBMemo3: TRzDBMemo;
    lbl43: TRzLabel;
    RzDBMemo4: TRzDBMemo;
    lbl44: TRzLabel;
    lbl45: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    lbl46: TRzLabel;
    RzDBMemo5: TRzDBMemo;
    btn2: TRzToolButton;
    ImageList1: TImageList;
    procedure btnExamineClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmYXBSH: TFrmYXBSH;

implementation
uses UDM,bddsh, Unit1, image2, Formimage;

{$R *.dfm}

procedure TFrmYXBSH.btnExamineClick(Sender: TObject);
begin
  if Application.MessageBox('确定审核吗?审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBApproveStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布订单评审表销售部审核订单审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@ddh').Value:=edtOrderID.Text;
        Parameters.ParamByName('@xsbshr').Value:=FrmBDDSH.user;
        Parameters.ParamByName('@xsbshrq').Value:=FormatDateTime('yyyy-mm-dd',Date());
        Parameters.ParamByName('@State').Value:=1;
        ExecProc;
        Application.MessageBox('审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.qryBOrderExamine do
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

procedure TFrmYXBSH.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmYXBSH.FormShow(Sender: TObject);
begin
  if DM.qryBOrderExamine.FieldByName('交货期').Value=null  then
  begin
    dtpDeliveryTime.Visible:=False;
  end
  else
  begin
    mmoDeliveryTimeAndAmount.Visible:=False;
  end;
 if DM.qryBOrderExamine.FieldByName('市场单状态').Value='1' then
 begin
    btnExamine.visible:=False;
    btn2.visible:=True;
 end
 else
 begin
    btnExamine.visible:=True;
    btn2.visible:=False;
 end;
end;

procedure TFrmYXBSH.RzToolButton2Click(Sender: TObject);
begin
   if Application.MessageBox('确定审核不通过吗?审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBApproveStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布订单评审表销售部审核订单审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@ddh').Value:=edtOrderID.Text;
        Parameters.ParamByName('@xsbshr').Value:=FrmBDDSH.user;
        Parameters.ParamByName('@xsbshrq').Value:=FormatDateTime('yyyy-mm-dd',Date());
        Parameters.ParamByName('@State').Value:=2;
        ExecProc;
        Application.MessageBox('审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.qryBOrderExamine do
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

procedure TFrmYXBSH.btn1Click(Sender: TObject);
begin
  Frmimage:=TFrmimage.Create(Self);
  Frmimage.tag:=2;
  Frmimage.ShowModal;
  FreeAndNil(Frmimage);
end;

procedure TFrmYXBSH.btn2Click(Sender: TObject);
begin
  if Application.MessageBox('确定审核吗?审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBApproveStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布订单评审表销售部审核订单审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@ddh').Value:=edtOrderID.Text;
        Parameters.ParamByName('@xsbshr').Value:=FrmBDDSH.user;
        Parameters.ParamByName('@xsbshrq').Value:=FormatDateTime('yyyy-mm-dd',Date());
        Parameters.ParamByName('@State').Value:=1;
        ExecProc;
       with dm.qry7 do
       begin
         Close;
         SQL.Clear;
         SQL.Add('update 棉布订单信息表 set 财务部审核状态=1 where 订单号=:ddh');
         Parameters.ParamByName('ddh').Value:=edtOrderID.Text;
         ExecSql;
       end;
       with dm.qry8 do
       begin
         Close;
         SQL.Clear;
         SQL.Add('update 棉布订单评审表 set 财务部审核人=:cwshr where 订单号=:ddh');
         Parameters.ParamByName('cwshr').Value:='无';
         Parameters.ParamByName('ddh').Value:=edtOrderID.Text;
         ExecSql;
       end;
        Application.MessageBox('审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.qryBOrderExamine do
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

end.

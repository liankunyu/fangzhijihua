unit bjhxx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ComCtrls, RzDTP, StdCtrls, RzEdit, Mask, RzLabel,
  ExtCtrls, RzPanel, ImgList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxLabel, RzLstBox;

type
  TFrmBJHXX = class(TForm)
    rzpnl1: TRzPanel;
    edtProductName: TRzEdit;
    mmoSpecification: TRzMemo;
    rzpnlBtns: TRzPanel;
    btnSave: TRzToolButton;
    btnExit: TRzToolButton;
    dtpFinishTime: TDateTimePicker;
    lblProductName: TRzLabel;
    lblSpecification: TRzLabel;
    lblDeliveryTimeAndAmount: TRzLabel;
    mmoDeliveryTimeAndAmount: TRzMemo;
    lblEfficiency: TRzLabel;
    edtEfficiency: TRzEdit;
    lblMachineTime: TRzLabel;
    dtpMachineTime: TDateTimePicker;
    lblFinishTime: TRzLabel;
    lblCustomerInfo: TRzLabel;
    lblMachineExec: TRzLabel;
    dtpDeliveryTime: TDateTimePicker;
    lbl1: TRzLabel;
    RzMemo1: TRzMemo;
    lbl2: TRzLabel;
    edt1: TRzEdit;
    lbl3: TRzLabel;
    lbl4: TRzLabel;
    edt2: TRzEdit;
    lbl6: TRzLabel;
    edt3: TRzEdit;
    lbl7: TRzLabel;
    lbl8: TRzLabel;
    edt4: TRzEdit;
    lbl9: TRzLabel;
    edt5: TRzEdit;
    edt6: TRzEdit;
    edt7: TRzEdit;
    lbl5: TRzLabel;
    dtp1: TDateTimePicker;
    lbl10: TRzLabel;
    dtp2: TDateTimePicker;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edt6Change(Sender: TObject);
    procedure edtEfficiencyChange(Sender: TObject);
    procedure edt4Change(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure edt5Change(Sender: TObject);
    procedure edt7Change(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBJHXX: TFrmBJHXX;

implementation
uses UDM,bscjh,bpzfg,cxFilter,cxGridDBTableView;

{$R *.dfm}

procedure TFrmBJHXX.btnExitClick(Sender: TObject);
begin
  Self.close;
end;

procedure TFrmBJHXX.FormShow(Sender: TObject);
begin
  if Self.Tag=1 then
  begin
    edtProductName.Text:=DM.qryBVarietiesTurn.FieldByName('品名').Value;
    mmoSpecification.Text:=DM.qryBVarietiesTurn.FieldByName('规格').Value;
    edt7.Text:=DM.qryBVarietiesTurn.FieldByName('订单量').AsString;
    if DM.qryBVarietiesTurn.FieldByName('交货期').Value=null then
    begin
      mmoDeliveryTimeAndAmount.Text:=DM.qryBVarietiesTurn.FieldByName('交货事宜').AsString;
      dtpDeliveryTime.Visible:=False;
      dtp1.Visible:=True;
      lblDeliveryTimeAndAmount.Visible:=True;
    end
    else
    begin
      dtpDeliveryTime.DateTime:=DM.qryBVarietiesTurn.FieldByName('交货期').AsDateTime;
      mmoDeliveryTimeAndAmount.Visible:=False;
      dtp1.Visible:=False;
      lblDeliveryTimeAndAmount.Visible:=False;
    end;
    edt6.Text:=DM.qryBVarietiesTurn.FieldByName('速度').AsString;
    edtEfficiency.Text:='0.9';
    edtEfficiency.SetFocus;
    dtpMachineTime.Date:=Date()+7;
    dtpFinishTime.Date:=Date()+22;
    dtp1.Date:=Date();
  end;
  if Self.Tag=2 then
  begin
    edtProductName.Text:=DM.qryBProductionPlan.FieldByName('品名').Value;
    mmoSpecification.Text:=DM.qryBProductionPlan.FieldByName('规格').Value;
    edt7.Text:=DM.qryBProductionPlan.FieldByName('订单量').AsString;
    if DM.qryBProductionPlan.FieldByName('交货期').Value=null  then
    begin
      mmoDeliveryTimeAndAmount.Text:=DM.qryBProductionPlan.FieldByName('交货事宜').AsString;
      dtpDeliveryTime.Visible:=False;
      dtp1.DateTime:=DM.qryBProductionPlan.FieldByName('交货日期').AsDateTime;
      dtp1.Visible:=True;
      lblDeliveryTimeAndAmount.Visible:=True;
    end
    else
    begin
      dtpDeliveryTime.DateTime:=DM.qryBProductionPlan.FieldByName('交货期').AsDateTime;
      mmoDeliveryTimeAndAmount.Visible:=False;
      dtp1.visible:=False;
      lblDeliveryTimeAndAmount.Visible:=False;
    end;
    edtEfficiency.Text:=DM.qryBProductionPlan.FieldByName('计划效率').Value;
    edtEfficiency.SetFocus;
    dtpMachineTime.Date:=DM.qryBProductionPlan.FieldByName('计划上机时间').AsDateTime;
    dtpFinishTime.Date:=DM.qryBProductionPlan.FieldByName('计划完成时间').AsDateTime;
    dtp2.Date:=DM.qryBProductionPlan.FieldByName('计划上机进度').AsDateTime;
    RzMemo1.Text:=DM.qryBProductionPlan.FieldByName('计划机型').AsString;
    edt1.Text:=DM.qryBProductionPlan.FieldByName('计划开台数').AsString;
    edt6.Text:=DM.qryBProductionPlan.FieldByName('更正车速').AsString;
    edt4.Text:=DM.qryBProductionPlan.FieldByName('更正纬密').AsString;
    edt5.Text:=DM.qryBProductionPlan.FieldByName('台日产').AsString;
    edt2.Text:=DM.qryBProductionPlan.FieldByName('最长米数').AsString;
    edt3.Text:=DM.qryBProductionPlan.FieldByName('织造天数').AsString;
  end;
end;

procedure TFrmBJHXX.btnSaveClick(Sender: TObject);
var
 AColumn:TcxGridDBColumn;      //生产计划表中的订单号列
begin
  if Self.Tag=1 then
  begin
   try
    DM.con1.BeginTrans;
      with DM.spBPlanAddStateUpdate do
      begin
        Close;
        ProcedureName:='proc_棉布生产计划引入_订单信息更新';
          Parameters.Refresh;
          Parameters.ParamByName('@OrderID').Value:=DM.qryBVarietiesTurn.FieldByName('订单号').AsString;
          Parameters.ParamByName('@pm').Value:=DM.qryBVarietiesTurn.FieldByName('品名').AsString;
          Parameters.ParamByName('@Efficiency').Value:=Trim(edtEfficiency.Text);
          Parameters.ParamByName('@MachineTime').Value:=FormatDateTime('yyyy-mm-dd',dtpMachineTime.Date);
          Parameters.ParamByName('@FinishTime').Value:=FormatDateTime('yyyy-mm-dd',dtpFinishTime.Date);
          Parameters.ParamByName('@MachineExec').Value:=FormatDateTime('yyyy-mm-dd',dtp2.Date);
          Parameters.ParamByName('@Machine').Value:=Trim(rzmemo1.Text);
          Parameters.ParamByName('@jhkts').Value:=Trim(edt1.Text);
          Parameters.ParamByName('@cs').Value:=Trim(edt6.Text);
          Parameters.ParamByName('@wm').Value:=Trim(edt4.Text);
          Parameters.ParamByName('@trc').Value:=Trim(edt5.Text);
          Parameters.ParamByName('@zcms').Value:=Trim(edt2.Text);
          Parameters.ParamByName('@zzts').Value:=Trim(edt3.Text);
          if DM.qryBVarietiesTurn.FieldByName('交货期').Value=null then
          begin
           Parameters.ParamByName('@jhrq').Value:=FormatDateTime('yyyy-mm-dd',dtp1.Date);
          end
          else
          begin
           Parameters.ParamByName('@jhrq').Value:=FormatDateTime('yyyy-mm-dd',dtpDeliveryTime.Date);
          end;
        ExecProc;
        Application.MessageBox('信息引入成功！','提示',MB_OK+MB_ICONINFORMATION);
      end;
      DM.con1.CommitTrans;
      FrmBSCJH.rzrdgrpSelect.ItemIndex:=0;
       with DM.qryBProductionPlan do
       begin
         Close;
         SQL.Clear;
         SQL.Add('select * from v_棉布生产计划信息  where  订单号 in (select 订单号 from 棉布订单信息表 where 完成状态=0 and 上机状态=0) order by 品名');
         Open;
       end;
       FrmBSCJH.cxgrdbtblvwProductionPlan.DataController.Filter.Root.Clear;
       FrmBSCJH.btnProductionWarning.Enabled:=True;
       FrmBSCJH.btnModify.Enabled:=True;
       AColumn:=FrmBSCJH.cxgrdbclmnOrderID;
       with FrmBSCJH.cxgrdbtblvwProductionPlan.DataController.Filter  do
       begin
         Root.Clear;
         Root.AddItem(AColumn,foEqual,DM.qryBVarietiesTurn.FieldByName('订单号').AsString,DM.qryBVarietiesTurn.FieldByName('订单号').AsString);
         Active:=True;
       end;
      Self.Close;
      FrmBPZFG.Close;
   except
      Application.MessageBox('信息引入失败,请核查原因！','提示',MB_OK+MB_ICONERROR);
      DM.con1.RollbackTrans;
   end;
  end;
  if Self.Tag=2 then
  begin
    try
      with DM.qryBProductionPlanModify do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update 棉布生产计划信息表 set 品名=:pm,计划效率=:jhxl,计划上机时间=:jhsjsj,计划完成时间=:jhwcsj,计划上机进度=:jhsjjd,计划机型=:jhjx,计划开台数=:jhkts,交货日期=:jhrq,更正车速=:cs,更正纬密=:wm,台日产=:trc,最长米数=:zcms,织造天数=:zzts where 订单号=:ddh');
          Parameters.ParamByName('ddh').Value:=DM.qryBProductionPlan.FieldByName('订单号').AsString;
           Parameters.ParamByName('pm').Value:=Trim(edtProductName.Text);
          Parameters.ParamByName('jhxl').Value:=Trim(edtEfficiency.Text);
          Parameters.ParamByName('jhsjsj').Value:=FormatDateTime('yyyy-mm-dd',dtpMachineTime.Date);
          Parameters.ParamByName('jhwcsj').Value:=FormatDateTime('yyyy-mm-dd',dtpFinishTime.Date);
          Parameters.ParamByName('jhsjjd').Value:=FormatDateTime('yyyy-mm-dd',dtp2.Date);
          Parameters.ParamByName('jhjx').Value:=Trim(rzmemo1.Text);
          Parameters.ParamByName('jhkts').Value:=Trim(edt1.Text);
          Parameters.ParamByName('cs').Value:=Trim(edt6.Text);
          Parameters.ParamByName('wm').Value:=Trim(edt4.Text);
          Parameters.ParamByName('trc').Value:=Trim(edt5.Text);
          Parameters.ParamByName('zcms').Value:=Trim(edt2.Text);
          Parameters.ParamByName('zzts').Value:=Trim(edt3.Text);
          if DM.qryBProductionPlan.FieldByName('交货期').Value=null then
          begin
           Parameters.ParamByName('jhrq').Value:=FormatDateTime('yyyy-mm-dd',dtp1.Date);
          end
          else
          begin
           Parameters.ParamByName('jhrq').Value:=FormatDateTime('yyyy-mm-dd',dtpDeliveryTime.Date);
          end;
        ExecSQL;
        Application.MessageBox('更新成功！','提示',MB_OK+MB_ICONINFORMATION);
      end;
      with DM.qryBProductionPlan do
      begin
        Close;
        Open;
      end;
    except
      Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
    end;
    Self.Close;
  end;

end;

procedure TFrmBJHXX.edt6Change(Sender: TObject);
begin
  if (edt6.Text<>'') and (edtEfficiency.Text<>'') and (edt4.Text<>'') then
  begin
    edt5.Text:=FloatToStr(StrToFloat(edt6.Text)*StrToFloat(edtEfficiency.Text)*36/StrToFloat(edt4.Text));
    edt5.Text:=FormatFloat('0',StrToFloat(edt5.Text));
  end;
end;

procedure TFrmBJHXX.edtEfficiencyChange(Sender: TObject);
begin
  if (edt6.Text<>'') and (edtEfficiency.Text<>'') and (edt4.Text<>'') then
  begin
    edt5.Text:=FloatToStr(StrToFloat(edt6.Text)*StrToFloat(edtEfficiency.Text)*36/StrToFloat(edt4.Text));
    edt5.Text:=FormatFloat('0',StrToFloat(edt5.Text));
  end;
end;

procedure TFrmBJHXX.edt4Change(Sender: TObject);
begin
  if (edt6.Text<>'') and (edtEfficiency.Text<>'') and (edt4.Text<>'') then
  begin
    edt5.Text:=FloatToStr(StrToFloat(edt6.Text)*StrToFloat(edtEfficiency.Text)*36/StrToFloat(edt4.Text));
    edt5.Text:=FormatFloat('0',StrToFloat(edt5.Text));
  end;
end;

procedure TFrmBJHXX.edt3Change(Sender: TObject);
begin
  if (edt7.Text<>'') and (edt3.Text<>'') and (edt5.Text<>'') then
  begin
    edt1.Text:=FloatToStr(10000*StrToFloat(edt7.Text)/StrToFloat(edt3.Text)/StrToFloat(edt5.Text));
    edt1.Text:=FormatFloat('0.0',StrToFloat(edt1.Text));
  end;
  if dtp1.Visible=True then
  begin
  if (edt3.Text<>'') then
  begin
    dtp2.DateTime:=dtp1.DateTime-strtofloat(edt3.Text)-3;
  end;
  end
  else
  begin
  if (edt3.Text<>'') then
  begin
    dtp2.DateTime:=dtpDeliveryTime.DateTime-strtofloat(edt3.Text)-3;
  end;
  end;
end;

procedure TFrmBJHXX.edt5Change(Sender: TObject);
begin
  if (edt7.Text<>'') and (edt3.Text<>'') and (edt5.Text<>'') then
  begin
    edt1.Text:=FloatToStr(10000*StrToFloat(edt7.Text)/StrToFloat(edt3.Text)/StrToFloat(edt5.Text));
    edt1.Text:=FormatFloat('0.0',StrToFloat(edt1.Text));
  end;
end;

procedure TFrmBJHXX.edt7Change(Sender: TObject);
begin
  if (edt7.Text<>'') and (edt3.Text<>'') and (edt5.Text<>'') then
  begin
    edt1.Text:=FloatToStr(10000*StrToFloat(edt7.Text)/StrToFloat(edt3.Text)/StrToFloat(edt5.Text));
    edt1.Text:=FormatFloat('0.0',StrToFloat(edt1.Text));
  end;
end;

procedure TFrmBJHXX.edt1Change(Sender: TObject);
begin
  if (edt7.Text<>'') and (edt1.Text<>'') then
  begin
    edt2.Text:=FloatToStr(10000*StrToFloat(edt7.Text)/StrToFloat(edt1.Text));
    edt2.Text:=FormatFloat('0',StrToFloat(edt2.Text));
  end;
end;

procedure TFrmBJHXX.dtp1Change(Sender: TObject);
begin
  if (edt3.Text<>'') then
    begin
    dtp2.DateTime:=dtp1.DateTime-strtofloat(edt3.Text)-3;
    end;
end;

end.

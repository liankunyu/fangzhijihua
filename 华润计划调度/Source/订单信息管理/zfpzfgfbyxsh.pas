unit zfpzfgfbyxsh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RzDTP, RzDBDTP, StdCtrls, DBCtrls, RzDBEdit, Mask,
  RzEdit, RzLabel, RzPanel, RzButton, ExtCtrls, ImgList, cxGraphics;

type
  Tfrmzfpzfgfbyxsh = class(TForm)
    rzpnl1: TRzPanel;
    rzpnlBtns: TRzPanel;
    btnExamine: TRzToolButton;
    btnExit: TRzToolButton;
    rzgrpbxInput: TRzGroupBox;
    lblOrderID: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel9: TRzLabel;
    lblOrderAddress: TRzLabel;
    lblProductName: TRzLabel;
    lblOrderTime1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel5: TRzLabel;
    lblSpecification: TRzLabel;
    lblPackagingRequirement: TRzLabel;
    lblDeliveryDescribe: TRzLabel;
    lblQualityRequirement: TRzLabel;
    lblWarpSource: TRzLabel;
    edt1: TRzDBEdit;
    edt2: TRzDBEdit;
    edtOrderID: TRzDBEdit;
    edt31: TRzDBEdit;
    mmo3: TRzDBMemo;
    mmo4: TRzDBMemo;
    RzDBMemo3: TRzDBMemo;
    RzDBMemo4: TRzDBMemo;
    RzDBEdit1: TRzDBEdit;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzLabel8: TRzLabel;
    RzDBEdit6: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzDBEdit7: TRzDBEdit;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure btnExamineClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzfpzfgfbyxsh: Tfrmzfpzfgfbyxsh;

implementation
 uses UDM,zfpzfg;
{$R *.dfm}

procedure Tfrmzfpzfgfbyxsh.btnExitClick(Sender: TObject);
begin
Close;
end;

procedure Tfrmzfpzfgfbyxsh.btnExamineClick(Sender: TObject);
begin
     if Application.MessageBox('确定审核通过吗?审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spzfdyxsh do
      begin
        Close;
        procedureName:='proc_自纺通知单纺纱营销部审核_审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@bh').Value:=DM.qryzfdfsyxbsh.FieldByName('编号').AsString;
        Parameters.ParamByName('@fsyxbshr').Value:=frmzfpzfg.User;
        ExecProc;
        Application.MessageBox('审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.qryzfdfsyxbsh do
        begin
          Close;
          Open;
        end;
      end;
    except
      Application.MessageBox('审核失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      DM.ADOConnection1.RollbackTrans;
    end;
  end;
  Self.Close;
end;

end.

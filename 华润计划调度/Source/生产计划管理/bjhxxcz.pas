unit bjhxxcz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzPanel, RzRadGrp, RzButton, RzLabel,
  ExtCtrls, ImgList, cxGraphics;

type
  TFrmBJHXXCZ = class(TForm)
    rzpnl1: TRzPanel;
    lblSearchKey: TRzLabel;
    btnSearch: TRzToolButton;
    btnExit: TRzToolButton;
    rzrdgrpSearchWay: TRzRadioGroup;
    edtSearchKey: TRzEdit;
    ImageList1: TImageList;
    procedure btnSearchClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBJHXXCZ: TFrmBJHXXCZ;

implementation
uses bjhxx,cxFilter,cxGridDBTableView,bscjh;

{$R *.dfm}

procedure TFrmBJHXXCZ.btnSearchClick(Sender: TObject);
var
 AColumn:TcxGridDBColumn;      //数据表相关的列
begin
   if Trim(edtSearchKey.Text)='' then
   begin
     Application.MessageBox('请输入要查询的品名！','提示',MB_OK+MB_ICONINFORMATION);
     edtSearchKey.SetFocus;
     Exit;
   end;
   AColumn:=FrmBSCJH.cxgrdbclmnProductName;
   case rzrdgrpSearchWay.ItemIndex of
   0:begin
        with FrmBSCJH.cxgrdbtblvwProductionPlan.DataController.Filter  do
        begin
          Root.Clear;
          Root.AddItem(AColumn,foLike,'%'+Trim(edtSearchKey.Text)+'%',Trim(edtSearchKey.Text));
          Active:=True;
        end;
     end;
   1:begin
        with FrmBSCJH.cxgrdbtblvwProductionPlan.DataController.Filter  do
        begin
          Root.Clear;
          Root.AddItem(AColumn,foEqual,Trim(edtSearchKey.Text),Trim(edtSearchKey.Text));
          Active:=True;
        end;
     end;
   end;
  Self.Close;
end;


procedure TFrmBJHXXCZ.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBJHXXCZ.FormShow(Sender: TObject);
begin
  edtSearchKey.SetFocus;
end;

procedure TFrmBJHXXCZ.edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    btnSearch.Click;
  end;
end;

end.

unit khcz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzCmboBx, RzPanel, RzRadGrp, RzButton,
  RzLabel, ExtCtrls, ImgList, cxGraphics;

type
  TFrmKHCZ = class(TForm)
    rzpnl1: TRzPanel;
    lblSearchKey: TRzLabel;
    btnSearch: TRzToolButton;
    btnExit: TRzToolButton;
    rzrdgrpSearchWay: TRzRadioGroup;
    rzdtSearchKey: TRzEdit;
    ImageList1: TImageList;
    procedure btnSearchClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure rzdtSearchKeyKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmKHCZ: TFrmKHCZ;

implementation
uses bkh,skh,cxFilter,cxGridDBCardView;

{$R *.dfm}

procedure TFrmKHCZ.btnSearchClick(Sender: TObject);
var
 ARow:TcxGridDBCardViewRow;      //数据表相关的行
begin
   if Trim(rzdtSearchKey.Text)='' then
   begin
     Application.MessageBox('请输入要查询项目的关键字！','提示',MB_OK+MB_ICONINFORMATION);
     rzdtSearchKey.SetFocus;
     Exit;
   end;
   case rzrdgrpSearchWay.ItemIndex of
   0:begin
      case Self.Tag of
      1:begin
          ARow:=FrmBKH.cxgrdbcrdvwrwBCustomerName;
          with FrmBKH.cxgrdbcrdvwBCustomer.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(ARow,foLike,'%'+Trim(rzdtSearchKey.Text)+'%',Trim(rzdtSearchKey.Text));
            Active:=True;
          end;
        end;
      2:begin
          ARow:=FrmSKH.cxgrdbcrdvwrwSCustomerName;
          with FrmSKH.cxgrdbcrdvwSCustomer.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(ARow,foLike,'%'+Trim(rzdtSearchKey.Text)+'%',Trim(rzdtSearchKey.Text));
            Active:=True;
          end;
        end;
      end;
     end;
   1:begin
      case Self.Tag of
      1:begin
          ARow:=FrmBKH.cxgrdbcrdvwrwBCustomerName;
          with FrmBKH.cxgrdbcrdvwBCustomer.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(ARow,foEqual,Trim(rzdtSearchKey.Text),Trim(rzdtSearchKey.Text));
            Active:=True;
          end;
        end;
      2:begin
          ARow:=FrmSKH.cxgrdbcrdvwrwSCustomerName;
          with FrmSKH.cxgrdbcrdvwSCustomer.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(ARow,foEqual,Trim(rzdtSearchKey.Text),Trim(rzdtSearchKey.Text));
            Active:=True;
          end;
        end;
      end;
     end;
   end;
   Self.Close;
end;

procedure TFrmKHCZ.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmKHCZ.rzdtSearchKeyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    btnSearch.Click;
  end;
end;

end.

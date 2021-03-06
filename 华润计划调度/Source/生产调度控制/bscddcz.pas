unit bscddcz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzPanel, RzRadGrp, RzButton, RzLabel,
  ExtCtrls, ImgList, cxGraphics, RzCmboBx;

type
  TFrmDDXXCZ = class(TForm)
    rzpnl1: TRzPanel;
    lblSearchKey: TRzLabel;
    btnSearch: TRzToolButton;
    btnExit: TRzToolButton;
    rzrdgrpSearchWay: TRzRadioGroup;
    edtSearchKey: TRzEdit;
    lblSearchItems: TRzLabel;
    cbbSearchItems: TRzComboBox;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
    procedure cbbSearchItemsChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDDXXCZ: TFrmDDXXCZ;

implementation
uses bscdd,UDM;

{$R *.dfm}

procedure TFrmDDXXCZ.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmDDXXCZ.btnSearchClick(Sender: TObject);
begin
          if cbbSearchItems.ItemIndex<1 then
   begin
     Application.MessageBox('请选择查询项目！','提示',MB_OK+MB_ICONINFORMATION);
     cbbSearchItems.SetFocus;
     Exit;
   end;
   if Trim(edtSearchKey.Text)='' then
   begin
     Application.MessageBox('请输入要查询的关键信息！','提示',MB_OK+MB_ICONINFORMATION);
     edtSearchKey.SetFocus;
     Exit;
   end;
        if cbbSearchItems.ItemIndex=1 then
   begin
     case rzrdgrpSearchWay.ItemIndex of
      0:begin
          with DM.qryBScheduling do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from v_棉布生产调度信息 where 客户名称 like ''%'+(Trim(edtSearchKey.Text))+'%''');
            Open;
          end;
        end;
      1:begin
           with DM.qryBScheduling do
           begin
             Close;
             SQL.Clear;
             SQL.Add('select * from v_棉布生产调度信息 where 客户名称=:khmc');
             Parameters.ParamByName('khmc').Value:=Trim(edtSearchKey.Text);
             Open;
           end;
        end;
     end;
     end;
          if cbbSearchItems.ItemIndex=2 then
    begin
     case rzrdgrpSearchWay.ItemIndex of
      0:begin
          with DM.qryBScheduling do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from v_棉布生产调度信息 where 规格 like ''%'+(Trim(edtSearchKey.Text))+'%''');
            Open;
          end;
        end;
      1:begin
           with DM.qryBScheduling do
           begin
             Close;
             SQL.Clear;
             SQL.Add('select * from v_棉布生产调度信息 where 规格=:gg');
             Parameters.ParamByName('gg').Value:=Trim(edtSearchKey.Text);
             Open;
           end;
        end;
     end;
     end;
          if cbbSearchItems.ItemIndex=3 then
    begin
     case rzrdgrpSearchWay.ItemIndex of
      0:begin
          with DM.qryBScheduling do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from v_棉布生产调度信息 where 客户采购订单号 like ''%'+(Trim(edtSearchKey.Text))+'%''');
            Open;
          end;
        end;
      1:begin
           with DM.qryBScheduling do
           begin
             Close;
             SQL.Clear;
             SQL.Add('select * from v_棉布生产调度信息 where 客户采购订单号=:hth');
             Parameters.ParamByName('hth').Value:=Trim(edtSearchKey.Text);
             Open;
           end;
        end;
     end;
     end;
     if cbbSearchItems.ItemIndex=4 then
    begin
     case rzrdgrpSearchWay.ItemIndex of
      0:begin
          with DM.qryBScheduling do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from v_棉布生产调度信息 where 品名 like ''%'+(Trim(edtSearchKey.Text))+'%''');
            Open;
          end;
        end;
      1:begin
           with DM.qryBScheduling do
           begin
             Close;
             SQL.Clear;
             SQL.Add('select * from v_棉布生产调度信息 where 品名=:pm');
             Parameters.ParamByName('pm').Value:=Trim(edtSearchKey.Text);
             Open;
           end;
        end;
     end;
     end;
   if DM.qryBScheduling.Eof then
    begin
      Application.MessageBox('查询为空,请核查！','提示',MB_OK+MB_ICONINFORMATION);
      edtSearchKey.SetFocus;
      Exit;
    end;
   FrmBDDXX.btnModify.Enabled:=True;
   FrmBDDXX.btnDelete.Enabled:=True;
   FrmBDDXX.btnPrint.Enabled:=True;
   Self.Close;
end;

procedure TFrmDDXXCZ.FormShow(Sender: TObject);
begin
  edtSearchKey.SetFocus;
end;

procedure TFrmDDXXCZ.edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    btnSearch.Click;
  end;
end;

procedure TFrmDDXXCZ.cbbSearchItemsChange(Sender: TObject);
begin
      if cbbSearchItems.ItemIndex=0 then
  begin
   lblSearchKey.Caption:='关键字';
  end;
  if cbbSearchItems.ItemIndex=1 then
  begin
   lblSearchKey.Caption:='客户名称';
  end;
  if cbbSearchItems.ItemIndex=2 then
  begin
   lblSearchKey.Caption:='规格';
  end;
    if cbbSearchItems.ItemIndex=3 then
  begin
   lblSearchKey.Caption:='合同号';
  end;
      if cbbSearchItems.ItemIndex=4 then
  begin
   lblSearchKey.Caption:='品名';
  end;
end;

end.

unit bscddcz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzPanel, RzRadGrp, RzButton, RzLabel,
  ExtCtrls, ImgList, cxGraphics, RzCmboBx;

type
  TFrmLJYBCZ = class(TForm)
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
  FrmLJYBCZ: TFrmLJYBCZ;

implementation
uses cjddgl,UDM;

{$R *.dfm}

procedure TFrmLJYBCZ.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmLJYBCZ.btnSearchClick(Sender: TObject);
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
          with DM.qry1 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from 机台了机信息 where 车位号 like ''%'+(Trim(edtSearchKey.Text))+'%''');
            Open;
          end;
        end;
      1:begin
           with DM.qry1 do
           begin
             Close;
             SQL.Clear;
             SQL.Add('select * from 机台了机信息 where 车位号=:cwh');
             Parameters.ParamByName('cwh').Value:=Trim(edtSearchKey.Text);
             Open;
           end;
        end;
     end;
   end;
   if cbbSearchItems.ItemIndex=2 then
    begin
     case rzrdgrpSearchWay.ItemIndex of
      0:begin
          with DM.qry1 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from 机台了机信息 where 品名 like ''%'+(Trim(edtSearchKey.Text))+'%''');
            Open;
          end;
        end;
      1:begin
           with DM.qry1 do
           begin
             Close;
             SQL.Clear;
             SQL.Add('select * from 机台了机信息 where 品名=:pz');
             Parameters.ParamByName('pz').Value:=Trim(edtSearchKey.Text);
             Open;
           end;
        end;
     end;
    end;
    if cbbSearchItems.ItemIndex=3 then
    begin
     case rzrdgrpSearchWay.ItemIndex of
      0:begin
          with DM.qry1 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from 机台了机信息 where 预了机时间 like ''%'+(Trim(edtSearchKey.Text))+'%''');
            Open;
          end;
        end;
      1:begin
           with DM.qry1 do
           begin
             Close;
             SQL.Clear;
             SQL.Add('select * from 机台了机信息 where 预了机时间=:yljsj');
             Parameters.ParamByName('yljsj').Value:=Trim(edtSearchKey.Text);
             Open;
           end;
        end;
     end;
    end;



   if DM.qry1.Eof then
    begin
      Application.MessageBox('查询为空,请核查！','提示',MB_OK+MB_ICONINFORMATION);
      edtSearchKey.SetFocus;
      Exit;
    end;
   FrmLJYBGX.RzToolButton8.Enabled:=True;
   
   Self.Close;
end;

procedure TFrmLJYBCZ.FormShow(Sender: TObject);
begin
  edtSearchKey.SetFocus;
end;

procedure TFrmLJYBCZ.edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    btnSearch.Click;
  end;
end;

procedure TFrmLJYBCZ.cbbSearchItemsChange(Sender: TObject);
begin
      if cbbSearchItems.ItemIndex=0 then
  begin
   lblSearchKey.Caption:='关键字';
  end;
  if cbbSearchItems.ItemIndex=1 then
  begin
   lblSearchKey.Caption:='机台';
  end;
  if cbbSearchItems.ItemIndex=2 then
  begin
   lblSearchKey.Caption:='品种';
  end;
    if cbbSearchItems.ItemIndex=3 then
  begin
   lblSearchKey.Caption:='预了机时间';
  end;

end;

end.

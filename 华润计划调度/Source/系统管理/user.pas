unit user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  RzButton, ExtCtrls, RzPanel, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, StdCtrls, Mask, RzEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, RzLabel,
  cxLabel, ImgList, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmUser = class(TForm)
    cxgrdbtblvwUsers: TcxGridDBTableView;
    cxgrdlvlUsers: TcxGridLevel;
    cxgrdUsers: TcxGrid;
    rzpnlBtns: TRzPanel;
    rzgrpbxInput: TRzGroupBox;
    lblUserName: TRzLabel;
    lblPwd: TRzLabel;
    lblDep: TRzLabel;
    cbbDep: TcxLookupComboBox;
    rzdtUserName: TRzEdit;
    rzdtPwd: TRzEdit;
    lblPwdConfirm: TRzLabel;
    rzdtPwdConfirm: TRzEdit;
    lblPopem: TRzLabel;
    cbbPopem: TcxLookupComboBox;
    cxgrdbclmnUserName: TcxGridDBColumn;
    cxgrdbclmnDep: TcxGridDBColumn;
    cxgrdbclmnPopem: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    btnCheck: TRzToolButton;
    cxStyle3: TcxStyle;
    btnQuery: TRzToolButton;
    btnAdd: TRzToolButton;
    btnSave: TRzToolButton;
    btnCancel: TRzToolButton;
    btnModify: TRzToolButton;
    btnDelete: TRzToolButton;
    btnExit: TRzToolButton;
    RzLabel1: TRzLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxgrdbtblvwUsersColumn1: TcxGridDBColumn;
    ImageList1: TImageList;
    procedure rzbtbtnExitClick(Sender: TObject);
    procedure rzbtbtnAddClick(Sender: TObject);
    procedure rzbtbtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rzbtbtnSaveClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure rzbtbtnModifyClick(Sender: TObject);
    procedure rzbtbtnDeleteClick(Sender: TObject);
    procedure rzbtbtnQueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUser: TFrmUser;
  procedure puser(AHandle:THandle);stdcall;

implementation
uses UDM,usermodify,usersearch;

{$R *.dfm}

procedure puser(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmUser:=TFrmUser.Create(Application);
  try
    FrmUser.ShowModal;
  finally
    TFrmUser(FrmUser).Free;
  end;
end;

procedure TFrmUser.rzbtbtnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmUser.rzbtbtnAddClick(Sender: TObject);
begin
  rzdtUserName.Enabled:=True;
  rzdtUserName.SetFocus;
  rzdtPwd.Enabled:=True;
  rzdtPwdConfirm.Enabled:=True;
  cbbDep.Enabled:=True;
  cxLookupComboBox1.Enabled:=True;
  cbbPopem.Enabled:=True;
  btnQuery.Enabled:=False;
  btnAdd.Enabled:=False;
  btnSave.Enabled:=True;
  btnCancel.Enabled:=True;
  btnModify.Enabled:=False;
  btnDelete.Enabled:=False;
  btnCheck.Enabled:=True;
end;

procedure TFrmUser.rzbtbtnCancelClick(Sender: TObject);
begin
  rzdtUserName.Text:='';
  rzdtUserName.Enabled:=False;
  rzdtPwd.Text:='';
  rzdtPwd.Enabled:=False;
  rzdtPwdConfirm.Text:='';
  rzdtPwdConfirm.Enabled:=False;
  cbbDep.Text:='';
  cbbDep.Enabled:=False;
  cxLookupComboBox1.Text:='';
  cxLookupComboBox1.Enabled:=False;
  cbbPopem.Text:='';
  cbbPopem.Enabled:=False;
  btnQuery.Enabled:=True;
  btnAdd.Enabled:=True;
  btnSave.Enabled:=False;
  btnCancel.Enabled:=False;
  btnModify.Enabled:=True;
  btnDelete.Enabled:=True;
  btnCheck.Enabled:=False;
end;

procedure TFrmUser.FormShow(Sender: TObject);
begin
  DM.qryPopem.Active:=True;
  DM.qryDep.Active:=True;
  DM.qryzw.Active:=True;
  with DM.qryUser  do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 用户信息表');
    Open;
  end;
end;

procedure TFrmUser.rzbtbtnSaveClick(Sender: TObject);
begin
 if Trim(rzdtPwd.Text)<>Trim(rzdtPwdConfirm.Text) then
 begin
   Application.MessageBox('确认密码和密码不一致，请重新输入！','提示',MB_OK+MB_ICONERROR);
   rzdtPwdConfirm.SetFocus;
 end
 else
 begin
  try
    with DM.qryUser do
    begin
      Edit;
      Insert;
      FieldByName('用户名').AsString:=Trim(rzdtUserName.Text);
      FieldByName('密码').AsString:=Trim(rzdtPwd.Text);
      FieldByName('部门名称').AsString:=cbbDep.Text;
      FieldByName('所属权限').AsString:=cbbPopem.Text;
      FieldByName('职务').AsString:=cxLookupComboBox1.Text;
      Refresh;
      Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
    end;
  except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
  end;
  rzdtUserName.Text:='';
  rzdtUserName.Enabled:=False;
  rzdtPwd.Text:='';
  rzdtPwd.Enabled:=False;
  rzdtPwdConfirm.Text:='';
  rzdtPwdConfirm.Enabled:=False;
  cbbDep.Text:='';
  cbbDep.Enabled:=False;
  cxLookupComboBox1.Text:='';
  cxLookupComboBox1.Enabled:=False;
  cbbPopem.Text:='';
  cbbPopem.Enabled:=False;
  btnQuery.Enabled:=True;
  btnAdd.Enabled:=True;
  btnSave.Enabled:=False;
  btnCancel.Enabled:=False;
  btnModify.Enabled:=True;
  btnDelete.Enabled:=True;
  btnCheck.Enabled:=False;
end;
end;

procedure TFrmUser.btnCheckClick(Sender: TObject);
begin
  if (Trim(rzdtUserName.Text)='') or (cbbDep.Text='') then
  begin
    Application.MessageBox('请输入用户名和部门信息！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end
  else
  begin
    with DM.qryUserCheck do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 用户信息表 where 部门名称=:bmmc and 用户名=:yhm');
      Parameters.ParamByName('yhm').Value:=trim(rzdtUserName.Text);
      Parameters.ParamByName('bmmc').Value:=cbbDep.Text;
      Open;
    end;
    if DM.qryUserCheck.RecordCount=1 then
    begin
      Application.MessageBox('部门中存在着相同的用户名，请重新输入！','提示',MB_OK+MB_ICONERROR);
      rzdtUserName.SetFocus;
      btnSave.Enabled:=False;
    end
    else
    begin
      Application.MessageBox('恭喜您，此用户名可用！','提示',MB_OK+MB_ICONINFORMATION);
      btnSave.Enabled:=True;
    end;
  end;

end;

procedure TFrmUser.rzbtbtnModifyClick(Sender: TObject);
begin
  if cxgrdbtblvwUsers.ViewData.RowCount>0 then
  begin
    FrmUserModify:=TFrmUserModify.Create(Self);
    FrmUserModify.ShowModal;
    FreeAndNil(FrmUserModify);
  end
  else
  begin
    Application.MessageBox('没有可以修改的信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmUser.rzbtbtnDeleteClick(Sender: TObject);
begin
  if cxgrdbtblvwUsers.ViewData.RowCount>0 then
  begin
    if Application.MessageBox('确定删除该用户信息?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
   begin
    try
     DM.qryUser.Delete;
     Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
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

procedure TFrmUser.rzbtbtnQueryClick(Sender: TObject);
begin
  FrmUserSearch:=TFrmUserSearch.Create(Self);
  FrmUserSearch.ShowModal;
  FreeAndNil(FrmUserSearch);
end;

end.

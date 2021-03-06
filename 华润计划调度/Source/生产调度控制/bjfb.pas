unit bjfb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, RzLabel, RzPanel, RzButton, ExtCtrls, RzTabs,
  ImgList, cxGraphics, Mask, RzEdit, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxLabel;

type
  TFrmBJFB = class(TForm)
    rzpnlBtns: TRzPanel;
    btnExit: TRzToolButton;
    rzgrpbxQueryCondition: TRzGroupBox;
    lblReportDate: TRzLabel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    btnQuery: TRzToolButton;
    RzLabel1: TRzLabel;
    RzEdit1: TRzEdit;
    RzToolButton3: TRzToolButton;
    rzpgcntrlLoomLocation: TRzPageControl;
    rztbshtJTLoomLocation: TRzTabSheet;
    btnL101: TRzToolButton;
    btnL102: TRzToolButton;
    btnL201: TRzToolButton;
    btnL301: TRzToolButton;
    btnL401: TRzToolButton;
    btnL501: TRzToolButton;
    btnL601: TRzToolButton;
    btnL701: TRzToolButton;
    btnL801: TRzToolButton;
    btnL901: TRzToolButton;
    btn1001: TRzToolButton;
    btn1101: TRzToolButton;
    btn1201: TRzToolButton;
    btn1301: TRzToolButton;
    btn1601: TRzToolButton;
    btn1302: TRzToolButton;
    btn1202: TRzToolButton;
    btn1102: TRzToolButton;
    btn1002: TRzToolButton;
    btnL902: TRzToolButton;
    btnL802: TRzToolButton;
    btnL702: TRzToolButton;
    btnL602: TRzToolButton;
    btnL502: TRzToolButton;
    btnL402: TRzToolButton;
    btnL302: TRzToolButton;
    btnL202: TRzToolButton;
    btnL103: TRzToolButton;
    btnL203: TRzToolButton;
    btnL104: TRzToolButton;
    btnL204: TRzToolButton;
    btnL105: TRzToolButton;
    btnL205: TRzToolButton;
    btnL106: TRzToolButton;
    btnL206: TRzToolButton;
    btnL107: TRzToolButton;
    btnL207: TRzToolButton;
    btnL108: TRzToolButton;
    btnL208: TRzToolButton;
    btnL303: TRzToolButton;
    btnL403: TRzToolButton;
    btnL503: TRzToolButton;
    btnL603: TRzToolButton;
    btnL703: TRzToolButton;
    btnL803: TRzToolButton;
    btnL903: TRzToolButton;
    btn1003: TRzToolButton;
    btn1103: TRzToolButton;
    btn1203: TRzToolButton;
    btn1303: TRzToolButton;
    btn1304: TRzToolButton;
    btn1204: TRzToolButton;
    btn1104: TRzToolButton;
    btn1004: TRzToolButton;
    btnL904: TRzToolButton;
    btnL804: TRzToolButton;
    btnL704: TRzToolButton;
    btnL604: TRzToolButton;
    btnL504: TRzToolButton;
    btnL404: TRzToolButton;
    btnL304: TRzToolButton;
    btnL305: TRzToolButton;
    btnL405: TRzToolButton;
    btnL505: TRzToolButton;
    btnL605: TRzToolButton;
    btnL705: TRzToolButton;
    btnL805: TRzToolButton;
    btnL905: TRzToolButton;
    btn1005: TRzToolButton;
    btn1105: TRzToolButton;
    btn1205: TRzToolButton;
    btn1305: TRzToolButton;
    btn1206: TRzToolButton;
    btn1106: TRzToolButton;
    btn1006: TRzToolButton;
    btnL306: TRzToolButton;
    btnL406: TRzToolButton;
    btnL506: TRzToolButton;
    btnL606: TRzToolButton;
    btnL706: TRzToolButton;
    btnL806: TRzToolButton;
    btnL906: TRzToolButton;
    btn1207: TRzToolButton;
    btn1107: TRzToolButton;
    btn1007: TRzToolButton;
    btnL907: TRzToolButton;
    btnL807: TRzToolButton;
    btnL707: TRzToolButton;
    btnL607: TRzToolButton;
    btnL507: TRzToolButton;
    btnL407: TRzToolButton;
    btnL307: TRzToolButton;
    btnL308: TRzToolButton;
    btnL408: TRzToolButton;
    btnL508: TRzToolButton;
    btnL608: TRzToolButton;
    btnL708: TRzToolButton;
    btnL808: TRzToolButton;
    btnL908: TRzToolButton;
    btn1008: TRzToolButton;
    btn1108: TRzToolButton;
    btn1208: TRzToolButton;
    btn1308: TRzToolButton;
    btn1307: TRzToolButton;
    btn1407: TRzToolButton;
    btn1408: TRzToolButton;
    btn1507: TRzToolButton;
    btn1508: TRzToolButton;
    btn1607: TRzToolButton;
    btn1608: TRzToolButton;
    btn1605: TRzToolButton;
    btn1604: TRzToolButton;
    btn1603: TRzToolButton;
    btn1602: TRzToolButton;
    btn1401: TRzToolButton;
    btn1501: TRzToolButton;
    btn1402: TRzToolButton;
    btn1502: TRzToolButton;
    btn1403: TRzToolButton;
    btn1503: TRzToolButton;
    btn1404: TRzToolButton;
    btn1504: TRzToolButton;
    btn1405: TRzToolButton;
    btn1505: TRzToolButton;
    btn1306: TRzToolButton;
    btn1406: TRzToolButton;
    btn1506: TRzToolButton;
    btn1606: TRzToolButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    lbl33: TLabel;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    lbl37: TLabel;
    lbl38: TLabel;
    lbl39: TLabel;
    lbl40: TLabel;
    lbl41: TLabel;
    lbl42: TLabel;
    lbl43: TLabel;
    lbl44: TLabel;
    lbl45: TLabel;
    lbl46: TLabel;
    lbl47: TLabel;
    lbl48: TLabel;
    lbl49: TLabel;
    lbl50: TLabel;
    lbl51: TLabel;
    lbl52: TLabel;
    lbl53: TLabel;
    lbl54: TLabel;
    lbl55: TLabel;
    lbl56: TLabel;
    lbl57: TLabel;
    lbl58: TLabel;
    lbl59: TLabel;
    lbl60: TLabel;
    lbl61: TLabel;
    lbl62: TLabel;
    lbl63: TLabel;
    lbl64: TLabel;
    lbl65: TLabel;
    lbl66: TLabel;
    lbl67: TLabel;
    lbl68: TLabel;
    lbl69: TLabel;
    lbl70: TLabel;
    lbl71: TLabel;
    lbl72: TLabel;
    lbl73: TLabel;
    lbl74: TLabel;
    lbl75: TLabel;
    lbl76: TLabel;
    lbl77: TLabel;
    lbl78: TLabel;
    lbl79: TLabel;
    lbl80: TLabel;
    lbl81: TLabel;
    lbl82: TLabel;
    lbl83: TLabel;
    lbl84: TLabel;
    lbl85: TLabel;
    lbl86: TLabel;
    lbl87: TLabel;
    lbl88: TLabel;
    lbl89: TLabel;
    lbl90: TLabel;
    lbl91: TLabel;
    lbl92: TLabel;
    lbl93: TLabel;
    lbl94: TLabel;
    lbl95: TLabel;
    lbl96: TLabel;
    lbl97: TLabel;
    lbl98: TLabel;
    lbl99: TLabel;
    lbl100: TLabel;
    lbl101: TLabel;
    lbl102: TLabel;
    lbl103: TLabel;
    lbl104: TLabel;
    lbl105: TLabel;
    lbl106: TLabel;
    lbl107: TLabel;
    lbl108: TLabel;
    lbl109: TLabel;
    lbl110: TLabel;
    lbl111: TLabel;
    lbl112: TLabel;
    lbl113: TLabel;
    lbl114: TLabel;
    lbl115: TLabel;
    lbl116: TLabel;
    lbl117: TLabel;
    lbl118: TLabel;
    lbl119: TLabel;
    lbl120: TLabel;
    lbl121: TLabel;
    lbl122: TLabel;
    lbl123: TLabel;
    lbl124: TLabel;
    lbl125: TLabel;
    lbl126: TLabel;
    lbl127: TLabel;
    lbl128: TLabel;
    lbl129: TLabel;
    rztbshtFTLoomLocation: TRzTabSheet;
    btn1701: TRzToolButton;
    btn1702: TRzToolButton;
    btn1703: TRzToolButton;
    btn1704: TRzToolButton;
    btn1705: TRzToolButton;
    btn1706: TRzToolButton;
    btn31707: TRzToolButton;
    btn31708: TRzToolButton;
    btn1801: TRzToolButton;
    btn1802: TRzToolButton;
    btn1803: TRzToolButton;
    btn1804: TRzToolButton;
    btn1805: TRzToolButton;
    btn1806: TRzToolButton;
    btn31807: TRzToolButton;
    btn31808: TRzToolButton;
    btn1901: TRzToolButton;
    btn1902: TRzToolButton;
    btn1903: TRzToolButton;
    btn1904: TRzToolButton;
    btn1905: TRzToolButton;
    btn1906: TRzToolButton;
    btn31907: TRzToolButton;
    btn31908: TRzToolButton;
    btn2001: TRzToolButton;
    btn2002: TRzToolButton;
    btn2005: TRzToolButton;
    btn2006: TRzToolButton;
    btn32007: TRzToolButton;
    btn32008: TRzToolButton;
    btn2101: TRzToolButton;
    btn2102: TRzToolButton;
    btn2103: TRzToolButton;
    btn2104: TRzToolButton;
    btn2105: TRzToolButton;
    btn2106: TRzToolButton;
    btn32107: TRzToolButton;
    btn32108: TRzToolButton;
    btn2201: TRzToolButton;
    btn2202: TRzToolButton;
    btn2203: TRzToolButton;
    btn2204: TRzToolButton;
    btn2205: TRzToolButton;
    btn2206: TRzToolButton;
    btn32207: TRzToolButton;
    btn32208: TRzToolButton;
    btn2301: TRzToolButton;
    btn2302: TRzToolButton;
    btn2303: TRzToolButton;
    btn2304: TRzToolButton;
    btn2305: TRzToolButton;
    btn2306: TRzToolButton;
    btn32307: TRzToolButton;
    btn32308: TRzToolButton;
    btn2401: TRzToolButton;
    btn2402: TRzToolButton;
    btn2403: TRzToolButton;
    btn2404: TRzToolButton;
    btn2406: TRzToolButton;
    btn32407: TRzToolButton;
    btn32408: TRzToolButton;
    btn2501: TRzToolButton;
    btn2502: TRzToolButton;
    btn2503: TRzToolButton;
    btn2504: TRzToolButton;
    btn2505: TRzToolButton;
    btn2506: TRzToolButton;
    btn32507: TRzToolButton;
    btn32508: TRzToolButton;
    btn2601: TRzToolButton;
    btn2602: TRzToolButton;
    btn2603: TRzToolButton;
    btn2604: TRzToolButton;
    btn2605: TRzToolButton;
    btn2606: TRzToolButton;
    btn32607: TRzToolButton;
    btn32608: TRzToolButton;
    btn2701: TRzToolButton;
    btn2702: TRzToolButton;
    btn2703: TRzToolButton;
    btn2704: TRzToolButton;
    btn2705: TRzToolButton;
    btn2706: TRzToolButton;
    btn32707: TRzToolButton;
    btn32708: TRzToolButton;
    btn2801: TRzToolButton;
    btn2802: TRzToolButton;
    btn2803: TRzToolButton;
    btn2804: TRzToolButton;
    btn2805: TRzToolButton;
    btn2806: TRzToolButton;
    btn32807: TRzToolButton;
    btn32808: TRzToolButton;
    btn42901: TRzToolButton;
    btn42902: TRzToolButton;
    btn42903: TRzToolButton;
    btn42904: TRzToolButton;
    btn42905: TRzToolButton;
    btn32907: TRzToolButton;
    btn32908: TRzToolButton;
    btn33007: TRzToolButton;
    btn33008: TRzToolButton;
    btn33107: TRzToolButton;
    btn33108: TRzToolButton;
    btn33207: TRzToolButton;
    btn33208: TRzToolButton;
    btn43201: TRzToolButton;
    btn43202: TRzToolButton;
    btn43203: TRzToolButton;
    btn43204: TRzToolButton;
    btn43205: TRzToolButton;
    btn2003: TRzToolButton;
    btn2004: TRzToolButton;
    btn2405: TRzToolButton;
    lbl130: TLabel;
    lbl131: TLabel;
    lbl132: TLabel;
    lbl133: TLabel;
    lbl134: TLabel;
    lbl135: TLabel;
    lbl136: TLabel;
    lbl137: TLabel;
    lbl138: TLabel;
    lbl139: TLabel;
    lbl140: TLabel;
    lbl141: TLabel;
    lbl142: TLabel;
    lbl143: TLabel;
    lbl144: TLabel;
    lbl145: TLabel;
    lbl146: TLabel;
    lbl147: TLabel;
    lbl148: TLabel;
    lbl149: TLabel;
    lbl150: TLabel;
    lbl151: TLabel;
    lbl152: TLabel;
    lbl153: TLabel;
    lbl154: TLabel;
    lbl155: TLabel;
    lbl156: TLabel;
    lbl157: TLabel;
    lbl158: TLabel;
    lbl159: TLabel;
    lbl160: TLabel;
    lbl161: TLabel;
    lbl162: TLabel;
    lbl163: TLabel;
    lbl164: TLabel;
    lbl165: TLabel;
    lbl166: TLabel;
    lbl167: TLabel;
    lbl168: TLabel;
    lbl169: TLabel;
    lbl170: TLabel;
    lbl171: TLabel;
    lbl172: TLabel;
    lbl173: TLabel;
    lbl174: TLabel;
    lbl175: TLabel;
    lbl176: TLabel;
    lbl177: TLabel;
    lbl178: TLabel;
    lbl179: TLabel;
    lbl180: TLabel;
    lbl181: TLabel;
    lbl182: TLabel;
    lbl183: TLabel;
    lbl184: TLabel;
    lbl185: TLabel;
    lbl186: TLabel;
    lbl187: TLabel;
    lbl188: TLabel;
    lbl189: TLabel;
    lbl190: TLabel;
    lbl191: TLabel;
    lbl192: TLabel;
    lbl193: TLabel;
    lbl194: TLabel;
    lbl195: TLabel;
    lbl196: TLabel;
    lbl197: TLabel;
    lbl198: TLabel;
    lbl199: TLabel;
    lbl200: TLabel;
    lbl201: TLabel;
    lbl202: TLabel;
    lbl203: TLabel;
    lbl204: TLabel;
    lbl205: TLabel;
    lbl206: TLabel;
    lbl207: TLabel;
    lbl208: TLabel;
    lbl209: TLabel;
    lbl210: TLabel;
    lbl211: TLabel;
    lbl212: TLabel;
    lbl213: TLabel;
    lbl214: TLabel;
    lbl215: TLabel;
    lbl216: TLabel;
    lbl217: TLabel;
    lbl218: TLabel;
    lbl219: TLabel;
    lbl220: TLabel;
    lbl221: TLabel;
    lbl222: TLabel;
    lbl223: TLabel;
    lbl224: TLabel;
    lbl225: TLabel;
    lbl226: TLabel;
    lbl227: TLabel;
    lbl228: TLabel;
    lbl229: TLabel;
    lbl230: TLabel;
    lbl231: TLabel;
    lbl232: TLabel;
    lbl233: TLabel;
    lbl234: TLabel;
    lbl235: TLabel;
    lbl236: TLabel;
    lbl237: TLabel;
    lbl238: TLabel;
    lbl239: TLabel;
    lbl240: TLabel;
    lbl241: TLabel;
    lbl242: TLabel;
    lbl243: TLabel;
    edt1: TRzEdit;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBJFB: TFrmBJFB;
  procedure pbjfb(AHandle:THandle);stdcall;

implementation
uses UDM;

{$R *.dfm}

procedure pbjfb(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBJFB:=TFrmBJFB.Create(Application);
  try
    FrmBJFB.ShowModal;
  finally
    TFrmBJFB(FrmBJFB).Free;
  end;
end;

procedure TFrmBJFB.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBJFB.btnQueryClick(Sender: TObject);
var
  i,j:Integer;
begin
    if edt1.Text='' then
  begin
    Application.MessageBox('请输入预了轴日期！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  with DM.qryBShutDownDaysQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from v_了机天数 where 预了机时间=:ylzrq');
    Parameters.ParamByName('ylzrq').Value:=Trim(edt1.Text);  //信息不及时性造成的，"今天"只能看"昨天"的数据
    Open;
  end;
  if DM.qryBShutDownDaysQuery.Eof  then
  begin
     Application.MessageBox('在查询的日期内没有相应的机台了机！','提示',MB_OK+MB_ICONINFORMATION);
     edt1.SetFocus;
     Exit;
  end;
  DM.qryBShutDownDaysQuery.First;
  for i:=0 to DM.qryBShutDownDaysQuery.RecordCount-1 do
  begin
    for j:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[j].ClassType=TRzToolButton) then
      begin
        if  (TRzToolButton(Self.Components[j]).Caption=DM.qryBShutDownDaysQuery.FieldByName('车位号').Value) then
        begin
          TRzToolButton(Self.Components[j]).Color:=clRed;
        end;
      end;
    end;
    DM.qryBShutDownDaysQuery.Next;
  end;
end;

procedure TFrmBJFB.RzToolButton1Click(Sender: TObject);
var
  i,j:Integer;
begin
   with DM.qryBShutDownDaysQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from v_了机天数 where 预了机时间 is null');
    Open;
  end;
  if DM.qryBShutDownDaysQuery.Eof  then
  begin
     Application.MessageBox('无空闲机台！','提示',MB_OK+MB_ICONINFORMATION);
     edt1.SetFocus;
     Exit;
  end;
  DM.qryBShutDownDaysQuery.First;
  for i:=0 to DM.qryBShutDownDaysQuery.RecordCount-1 do
  begin
    for j:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[j].ClassType=TRzToolButton) then
      begin
        if  (TRzToolButton(Self.Components[j]).Caption=DM.qryBShutDownDaysQuery.FieldByName('车位号').Value) then
        begin
          TRzToolButton(Self.Components[j]).Color:=clRed;
        end;
      end;
    end;
    DM.qryBShutDownDaysQuery.Next;
  end;
end;

procedure TFrmBJFB.RzToolButton2Click(Sender: TObject);
var
  j:Integer;
begin
   for j:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[j].ClassType=TRzToolButton) then
      begin
       TRzToolButton(Self.Components[j]).Color:=clSkyBlue;
      end;
   end;
   end;
   
procedure TFrmBJFB.FormShow(Sender: TObject);
var
  i,j:Integer;
  pz,yljsj:string;
 
begin
 with DM.qryBShutDownDaysQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from v_了机天数 ');
    Open;
  end;
    DM.qryBShutDownDaysQuery.First;
  for i:=0 to DM.qryBShutDownDaysQuery.RecordCount-1 do
  begin
    if  DM.qryBShutDownDaysQuery.FieldByName('品名').Value<>null then
    begin
      pz:=DM.qryBShutDownDaysQuery.FieldByName('品名').Value;
      yljsj:=DM.qryBShutDownDaysQuery.FieldByName('预了机时间').Value;
       for j:=0 to Self.ComponentCount-1 do
     begin
      if (Self.Components[j].ClassType=TLabel) then
      begin
        if  (TLabel(Self.Components[j]).Caption=DM.qryBShutDownDaysQuery.FieldByName('车位号').Value) then
        begin
          TLabel(Self.Components[j]).Caption:=PChar(pz+'/'+yljsj);
        end;
      end;
     end;
    end
    else
    begin
       for j:=0 to Self.ComponentCount-1 do
     begin
      if (Self.Components[j].ClassType=TLabel) then
      begin
        if  (TLabel(Self.Components[j]).Caption=DM.qryBShutDownDaysQuery.FieldByName('车位号').Value) then
        begin
          TLabel(Self.Components[j]).Caption:='';
        end;
      end;
    end;
   end;
    DM.qryBShutDownDaysQuery.Next;
 end;
end;

procedure TFrmBJFB.RzToolButton3Click(Sender: TObject);
var
  i,j:Integer;
begin
  if RzEdit1.Text='' then
  begin
    Application.MessageBox('请输入要查询的在机品种！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  with DM.qryBShutDownDaysQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from v_了机天数 where 品名 like ''%'+Trim(RzEdit1.Text)+'%''');
   // Parameters.ParamByName('pm').Value:=Trim(RzEdit1.Text);  //信息不及时性造成的，"今天"只能看"昨天"的数据
    Open;
  end;
  if DM.qryBShutDownDaysQuery.Eof  then
  begin
     Application.MessageBox('没有此品种在机！','提示',MB_OK+MB_ICONINFORMATION);
     edt1.SetFocus;
     Exit;
  end;
  DM.qryBShutDownDaysQuery.First;
  for i:=0 to DM.qryBShutDownDaysQuery.RecordCount-1 do
  begin
    for j:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[j].ClassType=TRzToolButton) then
      begin
        if  (TRzToolButton(Self.Components[j]).Caption=DM.qryBShutDownDaysQuery.FieldByName('车位号').Value) then
        begin
          TRzToolButton(Self.Components[j]).Color:=clRed;
        end;
      end;
    end;
    DM.qryBShutDownDaysQuery.Next;
  end;
end;


end.

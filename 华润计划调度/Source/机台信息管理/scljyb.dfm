object FrmSCLJYB: TFrmSCLJYB
  Left = 354
  Top = 246
  Width = 519
  Height = 477
  Caption = #29983#20135#20102#26426#39044#25253
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rzgrpbxFileSelect: TRzGroupBox
    Left = 0
    Top = 0
    Width = 501
    Height = 57
    Align = alTop
    Caption = #23548#20837#25991#20214#36873#25321
    Color = clSkyBlue
    FlatColor = clScrollBar
    GradientColorStyle = gcsCustom
    GroupStyle = gsStandard
    TabOrder = 0
    VisualStyle = vsGradient
    object lblFileSelect: TRzLabel
      Left = 27
      Top = 24
      Width = 98
      Height = 13
      Caption = #35831#36873#25321'Excel'#25991#20214#65306
    end
    object btnFileSelect: TRzToolButton
      Left = 400
      Top = 18
      Width = 89
      Height = 30
      GradientColorStyle = gcsCustom
      SelectionColorStart = clHighlight
      SelectionColorStop = clActiveBorder
      SelectionFrameColor = clHighlight
      ImageIndex = 0
      ShowCaption = True
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsGradient
      Caption = #36873#25321
      OnClick = btnFileSelectClick
    end
    object edtFileSelect: TRzEdit
      Left = 128
      Top = 20
      Width = 233
      Height = 21
      Enabled = False
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      MaxLength = 100
      TabOrder = 0
      OnChange = edtFileSelectChange
    end
  end
  object rzpnlFileContent: TRzPanel
    Left = 0
    Top = 57
    Width = 225
    Height = 373
    Align = alLeft
    BorderOuter = fsGroove
    Color = clSkyBlue
    DragKind = dkDock
    TabOrder = 1
    object lbl2: TRzLabel
      Left = 53
      Top = 31
      Width = 113
      Height = 13
      AutoSize = False
      Caption = #24037#20316#34180#20013#30340#24037#20316#34920#26377':'
      DragCursor = crDefault
      DragKind = dkDock
    end
    object lstFileContent: TRzListBox
      Left = 28
      Top = 64
      Width = 169
      Height = 281
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object rzpnlImportSetting: TRzPanel
    Left = 225
    Top = 57
    Width = 276
    Height = 373
    Align = alClient
    BorderOuter = fsGroove
    Color = clSkyBlue
    TabOrder = 2
    object lblBeginNo: TRzLabel
      Left = 29
      Top = 66
      Width = 108
      Height = 13
      AutoSize = False
      Caption = #24037#20316#34920#24320#22987#34892#25968':'
      DragKind = dkDock
    end
    object lblEndNo: TRzLabel
      Left = 29
      Top = 165
      Width = 108
      Height = 13
      AutoSize = False
      Caption = #24037#20316#34920#32467#26463#34892#25968':'
      DragKind = dkDock
    end
    object btnImport: TRzToolButton
      Left = 30
      Top = 256
      Width = 81
      GradientColorStyle = gcsCustom
      SelectionColorStart = clHighlight
      SelectionColorStop = clActiveBorder
      SelectionFrameColor = clHighlight
      ImageIndex = 1
      ShowCaption = True
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsGradient
      Caption = #23548#20837
      Enabled = False
      OnClick = btnImportClick
    end
    object btnExit: TRzToolButton
      Left = 175
      Top = 256
      Width = 81
      GradientColorStyle = gcsCustom
      SelectionColorStart = clHighlight
      SelectionColorStop = clActiveBorder
      SelectionFrameColor = clHighlight
      ImageIndex = 2
      ShowCaption = True
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsGradient
      Caption = #36864#20986
      OnClick = btnExitClick
    end
    object edtBeginNo: TRzEdit
      Left = 136
      Top = 62
      Width = 110
      Height = 21
      Text = '3'
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
    end
    object edtEndNo: TRzEdit
      Left = 136
      Top = 160
      Width = 110
      Height = 21
      Enabled = False
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
      OnKeyPress = edtEndNoKeyPress
    end
    object cxprgrsbrImportProceed: TcxProgressBar
      Left = 15
      Top = 333
      TabOrder = 2
      Visible = False
      Width = 250
    end
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 259
    Top = 62
  end
  object ExcelWorkbook1: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 307
    Top = 62
  end
  object ExcelWorksheet1: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 347
    Top = 62
  end
  object dlgOpen1: TOpenDialog
    Filter = 'Excel'#25991#20214'(*.xlsx;*.xls)|*.xlsx;*.xls'
    Left = 387
    Top = 62
  end
end

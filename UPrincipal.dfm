object fmPrincipal: TfmPrincipal
  Left = 0
  Top = 0
  Caption = 
    'S'#243' Emissor - Emissor de Nota Fiscal Eletronica e Nota Fiscal de ' +
    'Consumidor.'
  ClientHeight = 526
  ClientWidth = 1011
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzBackground1: TRzBackground
    Left = 0
    Top = 0
    Width = 200
    Height = 124
    Active = True
    Align = alNone
    FrameStyle = fsFlatBold
    GradientColorStart = clWhite
    GradientColorStop = clTeal
    ImageStyle = isCenter
    ShowGradient = True
    ShowImage = False
    ShowTexture = False
  end
  object Panel1: TPanel
    Left = 359
    Top = 89
    Width = 625
    Height = 410
    Align = alClient
    Color = clMenu
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 42
      Width = 623
      Height = 24
      Align = alTop
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExplicitWidth = 86
    end
    object Label2: TLabel
      Left = 1
      Top = 97
      Width = 61
      Height = 24
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object pnClienteVenda: TPanel
      Left = 1
      Top = 1
      Width = 623
      Height = 41
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Venda'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -27
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object DBGrid1: TDBGrid
      Left = 377
      Top = 123
      Width = 220
      Height = 259
      Align = alClient
      DataSource = dm.dsItem
      FixedColor = clMenu
      GradientEndColor = clMenu
      GradientStartColor = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Courier New'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGOPRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Caption = 'Descri'#231#227'o'
          Width = 64
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'QUANTIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Caption = 'Qtde.'
          Width = 64
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Caption = 'Vlr. Uni'
          Width = 64
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Caption = 'Total'
          Width = 64
          Visible = True
        end>
    end
    object Panel11: TPanel
      Left = 597
      Top = 123
      Width = 27
      Height = 259
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitTop = 112
      ExplicitHeight = 270
    end
    object Panel13: TPanel
      Left = 1
      Top = 123
      Width = 376
      Height = 259
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitTop = 112
      ExplicitHeight = 270
      object Label3: TLabel
        Left = 1
        Top = 35
        Width = 103
        Height = 24
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 0
        Top = 96
        Width = 122
        Height = 24
        Caption = 'Valor Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 1
        Top = 153
        Width = 83
        Height = 24
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 1
        Top = 211
        Width = 46
        Height = 24
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 1
        Top = 278
        Width = 85
        Height = 24
        Caption = 'Sub Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RzLine1: TRzLine
        Left = -8
        Top = 264
        Width = 203
        Height = 20
      end
      object edCodigo: TEdit
        Left = 0
        Top = 0
        Width = 185
        Height = 30
        BevelKind = bkSoft
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edCodigoChange
        OnEnter = edCodigoEnter
        OnExit = edCodigoExit
      end
      object edQuantidade: TEdit
        Left = 0
        Top = 60
        Width = 185
        Height = 30
        BevelKind = bkSoft
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = edQuantidadeChange
        OnExit = edQuantidadeExit
        OnKeyPress = edQuantidadeKeyPress
      end
      object edTotal: TEdit
        Left = 0
        Top = 236
        Width = 185
        Height = 30
        BevelKind = bkSoft
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        OnExit = edTotalExit
        OnKeyPress = edTotalKeyPress
      end
      object edDesconto: TEdit
        Left = 0
        Top = 176
        Width = 185
        Height = 30
        BevelKind = bkSoft
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnChange = edDescontoChange
        OnExit = edDescontoExit
        OnKeyPress = edDescontoKeyPress
      end
      object edValor: TEdit
        Left = 0
        Top = 120
        Width = 185
        Height = 30
        BevelKind = bkSoft
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = edValorChange
        OnExit = edValorExit
        OnKeyPress = edValorKeyPress
      end
      object edSubTotal: TEdit
        Left = 1
        Top = 302
        Width = 185
        Height = 33
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = 13041663
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
    end
    object Panel14: TPanel
      Left = 1
      Top = 98
      Width = 623
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      ExplicitTop = 87
    end
    object Panel2: TPanel
      Left = 1
      Top = 382
      Width = 623
      Height = 27
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 6
    end
    object edDescricao: TcxLookupComboBox
      Left = 1
      Top = 66
      Align = alTop
      DragCursor = crHandPoint
      ParentFont = False
      Properties.DropDownListStyle = lsEditList
      Properties.KeyFieldNames = 'DESCRICAO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.dsProduto
      Properties.OnChange = edDescricaoPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparency = ebtNone
      Style.IsFontAssigned = True
      StyleFocused.BorderColor = clWindowFrame
      StyleHot.BorderColor = clWindowFrame
      TabOrder = 1
      OnEnter = edDescricaoEnter
      OnExit = edDescricaoExit
      Width = 623
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 499
    Width = 1011
    Height = 27
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Panel4: TPanel
    Left = 984
    Top = 89
    Width = 27
    Height = 410
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
  end
  object Panel5: TPanel
    Left = 27
    Top = 89
    Width = 305
    Height = 410
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
    object Panel15: TPanel
      Left = 0
      Top = 282
      Width = 305
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
    object Panel16: TPanel
      Left = 0
      Top = 0
      Width = 305
      Height = 282
      Align = alTop
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object RzToolButton1: TRzToolButton
        Left = 1
        Top = 234
        Width = 303
        Height = 48
        Alignment = taLeftJustify
        ShowCaption = True
        UseToolbarShowCaption = False
        Align = alTop
        Caption = 'Limpar Venda - F5'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton1Click
        ExplicitTop = 42
      end
      object RzToolButton2: TRzToolButton
        Left = 1
        Top = 42
        Width = 303
        Height = 48
        Alignment = taLeftJustify
        ShowCaption = True
        UseToolbarShowCaption = False
        Align = alTop
        Caption = 'Cliente - F1'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton2Click
        ExplicitLeft = 2
        ExplicitTop = 50
      end
      object RzToolButton3: TRzToolButton
        Left = 1
        Top = 90
        Width = 303
        Height = 48
        Alignment = taLeftJustify
        ShowCaption = True
        UseToolbarShowCaption = False
        Align = alTop
        Caption = 'Produtos - F2'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton3Click
        ExplicitLeft = 2
        ExplicitTop = 98
      end
      object RzToolButton4: TRzToolButton
        Left = 1
        Top = 138
        Width = 303
        Height = 48
        Alignment = taLeftJustify
        ShowCaption = True
        UseToolbarShowCaption = False
        Align = alTop
        Caption = 'Editar/Cancelar Item - F3'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton4Click
        ExplicitTop = 42
      end
      object RzToolButton9: TRzToolButton
        Left = 1
        Top = 186
        Width = 303
        Height = 48
        Alignment = taLeftJustify
        ShowCaption = True
        UseToolbarShowCaption = False
        Align = alTop
        Caption = 'Concluir Venda - F4'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton9Click
        ExplicitLeft = 2
        ExplicitTop = 194
      end
      object Panel17: TPanel
        Left = 1
        Top = 1
        Width = 303
        Height = 41
        Align = alTop
        Alignment = taLeftJustify
        Caption = '   NF-e / NFC-e'
        Color = clTeal
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -27
        Font.Name = 'Segoe UI Light'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 304
      Width = 305
      Height = 106
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object RzToolButton5: TRzToolButton
        Left = 1
        Top = 42
        Width = 303
        Height = 48
        Alignment = taLeftJustify
        ShowCaption = True
        UseToolbarShowCaption = False
        Align = alTop
        Caption = 'Cadastro de Emitente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton5Click
        ExplicitLeft = 2
        ExplicitTop = 50
      end
      object RzToolButton6: TRzToolButton
        Left = 1
        Top = 90
        Width = 303
        Height = 48
        Alignment = taLeftJustify
        ShowCaption = True
        UseToolbarShowCaption = False
        Align = alTop
        Caption = 'Cadastro de Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton6Click
        ExplicitLeft = 2
        ExplicitTop = 98
      end
      object RzToolButton7: TRzToolButton
        Left = 1
        Top = 186
        Width = 303
        Height = 48
        Alignment = taLeftJustify
        ShowCaption = True
        UseToolbarShowCaption = False
        Align = alTop
        Caption = 'Gerenciamento NF-e / NFC-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton7Click
        ExplicitTop = 127
      end
      object RzToolButton8: TRzToolButton
        Left = 1
        Top = 138
        Width = 303
        Height = 48
        Alignment = taLeftJustify
        ShowCaption = True
        UseToolbarShowCaption = False
        Align = alTop
        Caption = 'Cadastro de Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton8Click
        ExplicitLeft = 2
        ExplicitTop = 146
        ExplicitWidth = 1009
      end
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 303
        Height = 41
        Align = alTop
        Alignment = taLeftJustify
        Caption = '   Configura'#231#245'es'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -27
        Font.Name = 'Segoe UI Light'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 1011
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Label8: TLabel
      Left = 0
      Top = 0
      Width = 1011
      Height = 24
      Align = alTop
      Caption = 'Empresa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 84
    end
  end
  object Panel9: TPanel
    Left = 332
    Top = 89
    Width = 27
    Height = 410
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 5
  end
  object Panel10: TPanel
    Left = 0
    Top = 89
    Width = 27
    Height = 410
    Align = alLeft
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 6
  end
  object pnStatus: TPanel
    Left = 0
    Top = 41
    Width = 1011
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    object RadioGroup1: TRadioGroup
      Left = 28
      Top = -4
      Width = 303
      Height = 52
      Caption = 'Tipo Emiss'#227'o'
      Columns = 3
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 2
      Items.Strings = (
        'NF-e'
        'NFC-e'
        'SVF')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup1Click
      OnExit = RadioGroup1Exit
    end
    object RadioGroup2: TRadioGroup
      Left = 359
      Top = -4
      Width = 623
      Height = 52
      Caption = 'Ambiente'
      Columns = 2
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Produ'#231#227'o'
        'Homologa'#231#227'o')
      ParentFont = False
      TabOrder = 1
    end
  end
end

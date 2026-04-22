object fmCliente: TfmCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cliente'
  ClientHeight = 372
  ClientWidth = 754
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 114
    Height = 372
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object RzToolButton5: TRzToolButton
      Left = 0
      Top = 144
      Width = 114
      Height = 48
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alTop
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton5Click
      ExplicitTop = 104
    end
    object RzToolButton6: TRzToolButton
      Left = 0
      Top = 96
      Width = 114
      Height = 48
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alTop
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton6Click
      ExplicitTop = 152
    end
    object RzToolButton1: TRzToolButton
      Left = 0
      Top = 48
      Width = 114
      Height = 48
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alTop
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton1Click
      ExplicitTop = 0
    end
    object RzToolButton2: TRzToolButton
      Left = 0
      Top = 0
      Width = 114
      Height = 48
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alTop
      Caption = 'Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton2Click
      ExplicitTop = -6
    end
  end
  object PageControl1: TPageControl
    Left = 114
    Top = 0
    Width = 640
    Height = 372
    ActivePage = Cadastro
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 632
        Height = 344
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dm.dsCliente
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Clique no campo que deseja filtrar'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.HideSelection = True
          OptionsView.NoDataToDisplayInfoText = 'N'#227'o existe dados para mostrar'
          OptionsView.GroupByBox = False
          Preview.Visible = True
          Styles.Content = cxStyle3
          Styles.ContentOdd = cxStyle4
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NOME'
            Width = 218
          end
          object cxGrid1DBTableView1Column8: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'CNPJCPF'
            Width = 117
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'ENDERECO'
            Width = 257
          end
          object cxGrid1DBTableView1Column5: TcxGridDBColumn
            Caption = 'Cidade'
            DataBinding.FieldName = 'CIDADE'
            Width = 78
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'BAIRRO'
            Width = 156
          end
          object cxGrid1DBTableView1Column6: TcxGridDBColumn
            DataBinding.FieldName = 'CEP'
          end
          object cxGrid1DBTableView1Column7: TcxGridDBColumn
            Caption = 'Estado'
            DataBinding.FieldName = 'UF'
            Width = 41
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object Cadastro: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 2
        Top = 56
        Width = 27
        Height = 13
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 122
        Top = 56
        Width = 71
        Height = 13
        Caption = 'Razao Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 4
        Top = 102
        Width = 103
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 122
        Top = -3
        Width = 92
        Height = 13
        Caption = 'Tipo Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 2
        Top = 1
        Width = 38
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 122
        Top = 102
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label7: TLabel
        Left = 264
        Top = 102
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object Label8: TLabel
        Left = 233
        Top = -3
        Width = 92
        Height = 13
        Caption = 'Tipo Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 3
        Top = 146
        Width = 25
        Height = 13
        Caption = 'Placa'
      end
      object Label10: TLabel
        Left = 122
        Top = 146
        Width = 33
        Height = 13
        Caption = 'Veiculo'
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 188
        Width = 593
        Height = 153
        Caption = 'Endere'#231'o'
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 9
        object Label11: TLabel
          Left = 7
          Top = 21
          Width = 55
          Height = 13
          Caption = 'Logradouro'
        end
        object Label12: TLabel
          Left = 470
          Top = 21
          Width = 37
          Height = 13
          Caption = 'Numero'
        end
        object Label13: TLabel
          Left = 7
          Top = 64
          Width = 65
          Height = 13
          Caption = 'Complemento'
        end
        object Label14: TLabel
          Left = 149
          Top = 64
          Width = 28
          Height = 13
          Caption = 'Bairro'
        end
        object Label15: TLabel
          Left = 326
          Top = 63
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label16: TLabel
          Left = 552
          Top = 63
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object Label17: TLabel
          Left = 7
          Top = 106
          Width = 59
          Height = 13
          Caption = 'Codigo IBGE'
        end
        object Label18: TLabel
          Left = 149
          Top = 106
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object DBEdit7: TDBEdit
          Left = 7
          Top = 36
          Width = 448
          Height = 21
          DataField = 'ENDERECO'
          DataSource = dm.dsCliente
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 7
          Top = 79
          Width = 128
          Height = 21
          DataField = 'COMPLEMENTO'
          DataSource = dm.dsCliente
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 470
          Top = 36
          Width = 121
          Height = 21
          DataField = 'NUMERO'
          DataSource = dm.dsCliente
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 149
          Top = 79
          Width = 164
          Height = 21
          DataField = 'BAIRRO'
          DataSource = dm.dsCliente
          TabOrder = 3
        end
        object DBEdit15: TDBEdit
          Left = 326
          Top = 79
          Width = 211
          Height = 21
          DataField = 'CIDADE'
          DataSource = dm.dsCliente
          TabOrder = 4
        end
        object DBEdit16: TDBEdit
          Left = 552
          Top = 79
          Width = 39
          Height = 21
          DataField = 'UF'
          DataSource = dm.dsCliente
          TabOrder = 5
        end
        object DBEdit17: TDBEdit
          Left = 7
          Top = 121
          Width = 128
          Height = 21
          DataField = 'IBGE'
          DataSource = dm.dsCliente
          TabOrder = 6
        end
        object DBEdit18: TDBEdit
          Left = 149
          Top = 121
          Width = 100
          Height = 21
          DataField = 'CEP'
          DataSource = dm.dsCliente
          TabOrder = 7
        end
      end
      object DBEdit1: TDBEdit
        Left = 2
        Top = 71
        Width = 105
        Height = 21
        DataField = 'CNPJCPF'
        DataSource = dm.dsCliente
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 122
        Top = 71
        Width = 473
        Height = 21
        DataField = 'NOME'
        DataSource = dm.dsCliente
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 2
        Top = 117
        Width = 105
        Height = 21
        DataField = 'IERG'
        DataSource = dm.dsCliente
        TabOrder = 4
      end
      object DBEdit9: TDBEdit
        Left = 2
        Top = 16
        Width = 105
        Height = 21
        Color = 13041663
        DataField = 'CODIGO'
        DataSource = dm.dsCliente
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Left = 122
        Top = 117
        Width = 121
        Height = 21
        DataField = 'TELEFONE'
        DataSource = dm.dsCliente
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 264
        Top = 117
        Width = 331
        Height = 21
        DataField = 'EMAIL'
        DataSource = dm.dsCliente
        TabOrder = 6
      end
      object RzDBComboBox1: TRzDBComboBox
        Left = 122
        Top = 16
        Width = 95
        Height = 21
        DataField = 'TIPODOCUMENTO'
        DataSource = dm.dsCliente
        TabOrder = 1
        OnChange = RzDBComboBox1Change
        Items.Strings = (
          'CPF'
          'CNPJ')
        Values.Strings = (
          '0'
          '1')
      end
      object DBNavigator1: TDBNavigator
        Left = 368
        Top = 3
        Width = 220
        Height = 34
        DataSource = dm.dsCliente
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        Hints.Strings = (
          'Primeiro'
          'Anterior'
          'Pr'#243'ximo'
          'Ultimo')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object RzDBComboBox2: TRzDBComboBox
        Left = 233
        Top = 16
        Width = 129
        Height = 21
        DataField = 'TIPOIE'
        DataSource = dm.dsCliente
        TabOrder = 11
        OnChange = RzDBComboBox1Change
        Items.Strings = (
          'Contribuinte'
          'Isento'
          'N'#227'o Contribuinte')
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object DBEdit11: TDBEdit
        Left = 3
        Top = 161
        Width = 104
        Height = 21
        DataField = 'PLACA'
        DataSource = dm.dsCliente
        TabOrder = 7
      end
      object DBEdit12: TDBEdit
        Left = 122
        Top = 161
        Width = 121
        Height = 21
        DataField = 'VEICULO'
        DataSource = dm.dsCliente
        TabOrder = 8
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 48
    Top = 274
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 16245198
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 56
    Top = 274
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15463915
    end
    object cxStyle4: TcxStyle
    end
  end
end

object fmProduto: TfmProduto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Produto'
  ClientHeight = 519
  ClientWidth = 707
  Color = clBtnFace
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
    Height = 519
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    OnClick = Panel1Click
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
    Width = 593
    Height = 519
    ActivePage = Cadastro
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 585
        Height = 491
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          OnDblClick = cxGridDBTableView2DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dm.dsProduto
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Position = spFooter
              Sorted = True
            end
            item
              Kind = skSum
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ###,###,##0.00'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Clique no campo que deseja filtrar'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = 'N'#227'o existe dados para mostrar'
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Preview.Visible = True
          object cxGridDBTableView2CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
          end
          object cxGridDBTableView2DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 505
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object Cadastro: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 2
        Top = 56
        Width = 95
        Height = 13
        Caption = 'C'#243'digo de Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 138
        Top = 56
        Width = 55
        Height = 13
        Caption = 'Descri'#231#227'o'
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
        Width = 46
        Height = 13
        Caption = 'Unidade'
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
        Left = 72
        Top = 102
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object Label7: TLabel
        Left = 198
        Top = 102
        Width = 22
        Height = 13
        Caption = 'NCM'
      end
      object Label3: TLabel
        Left = 302
        Top = 102
        Width = 25
        Height = 13
        Caption = 'CEST'
      end
      object DBEdit1: TDBEdit
        Left = 2
        Top = 71
        Width = 121
        Height = 21
        DataField = 'CODIGOBARRAS'
        DataSource = dm.dsProduto
        TabOrder = 1
        OnClick = DBEdit9Click
      end
      object DBEdit2: TDBEdit
        Left = 138
        Top = 71
        Width = 457
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = dm.dsProduto
        TabOrder = 2
        OnClick = DBEdit9Click
      end
      object DBEdit3: TDBEdit
        Left = 2
        Top = 117
        Width = 48
        Height = 21
        DataField = 'UNIDADE'
        DataSource = dm.dsProduto
        TabOrder = 3
        OnClick = DBEdit9Click
      end
      object DBEdit9: TDBEdit
        Left = 2
        Top = 16
        Width = 121
        Height = 21
        Color = 13041663
        DataField = 'CODIGO'
        DataSource = dm.dsProduto
        ReadOnly = True
        TabOrder = 0
        OnClick = DBEdit9Click
      end
      object DBEdit10: TDBEdit
        Left = 72
        Top = 117
        Width = 97
        Height = 21
        DataField = 'VALOR'
        DataSource = dm.dsProduto
        TabOrder = 4
        OnClick = DBEdit9Click
      end
      object DBEdit4: TDBEdit
        Left = 198
        Top = 117
        Width = 83
        Height = 21
        DataField = 'NCM'
        DataSource = dm.dsProduto
        MaxLength = 8
        TabOrder = 5
        OnClick = DBEdit9Click
      end
      object DBNavigator1: TDBNavigator
        Left = 368
        Top = 3
        Width = 220
        Height = 34
        DataSource = dm.dsProduto
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        Hints.Strings = (
          'Primeiro'
          'Anterior'
          'Pr'#243'ximo'
          'Ultimo')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = DBNavigator1Click
      end
      object DBEdit5: TDBEdit
        Left = 302
        Top = 117
        Width = 83
        Height = 21
        DataField = 'CEST'
        DataSource = dm.dsProduto
        TabOrder = 7
        OnClick = DBEdit5Click
        OnEnter = DBEdit5Enter
      end
      object Panel2: TPanel
        Left = 0
        Top = 144
        Width = 585
        Height = 347
        Align = alBottom
        BevelOuter = bvLowered
        Caption = 'Panel2'
        TabOrder = 8
        Visible = False
        object cxGrid2: TcxGrid
          Left = 1
          Top = 0
          Width = 583
          Height = 346
          Align = alBottom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridDBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dm.dsCestNCM
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.TranslateIn = True
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
                Position = spFooter
                Sorted = True
              end
              item
                Kind = skSum
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ###,###,##0.00'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = 'Clique no campo que deseja filtrar'
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = 'N'#227'o existe dados para mostrar'
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Preview.Visible = True
            object cxGridDBTableView1CEST: TcxGridDBColumn
              DataBinding.FieldName = 'CEST'
            end
            object cxGridDBTableView1NCM: TcxGridDBColumn
              DataBinding.FieldName = 'NCM'
            end
            object cxGridDBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Desc. CEST'
              DataBinding.FieldName = 'DESCRICAO'
              Width = 296
            end
            object cxGridDBTableView1DESCNCM: TcxGridDBColumn
              Caption = 'Desc.NCM'
              DataBinding.FieldName = 'DESCNCM'
            end
            object cxGridDBTableView1ALIQFEDNACIONAL: TcxGridDBColumn
              Caption = 'Aliq. Nacional'
              DataBinding.FieldName = 'ALIQFEDNACIONAL'
            end
            object cxGridDBTableView1ALIQFEDIMPORTADO: TcxGridDBColumn
              Caption = 'Aliq. Importada'
              DataBinding.FieldName = 'ALIQFEDIMPORTADO'
            end
            object cxGridDBTableView1ALIQESTADUAL: TcxGridDBColumn
              Caption = 'Aliq. Estadual'
              DataBinding.FieldName = 'ALIQESTADUAL'
            end
            object cxGridDBTableView1ALIQMUNICIPAL: TcxGridDBColumn
              Caption = 'Aliq. Municipal'
              DataBinding.FieldName = 'ALIQMUNICIPAL'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
end

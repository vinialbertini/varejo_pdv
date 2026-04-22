object fmPesqNotas: TfmPesqNotas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pesquisar Notas Para Reimprimir'
  ClientHeight = 383
  ClientWidth = 871
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 0
    Top = 0
    Width = 871
    Height = 383
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitWidth = 583
    ExplicitHeight = 346
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dm.dsNota
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
        end
        item
          Kind = skSum
          Position = spFooter
          Column = cxGridDBTableView1TOTAL
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'R$ ###,###,##0.00'
          Kind = skSum
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = cxGridDBTableView1TOTAL
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
      object cxGridDBTableView1CODIGO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CODIGO'
      end
      object cxGridDBTableView1NUMERO: TcxGridDBColumn
        Caption = 'N'#250'mero'
        DataBinding.FieldName = 'NUMERO'
      end
      object cxGridDBTableView1MODELO: TcxGridDBColumn
        Caption = 'Modelo'
        DataBinding.FieldName = 'MODELO'
      end
      object cxGridDBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'NOME'
        Width = 297
      end
      object cxGridDBTableView1DOCUMENTO: TcxGridDBColumn
        Caption = 'CNPJ/CPF'
        DataBinding.FieldName = 'DOCUMENTO'
      end
      object cxGridDBTableView1SERIE: TcxGridDBColumn
        Caption = 'S'#233'rie'
        DataBinding.FieldName = 'SERIE'
      end
      object cxGridDBTableView1CHAVE: TcxGridDBColumn
        Caption = 'Chave'
        DataBinding.FieldName = 'CHAVE'
        Width = 331
      end
      object cxGridDBTableView1DATA: TcxGridDBColumn
        Caption = 'Data Emiss'#227'o'
        DataBinding.FieldName = 'DATA'
        Width = 79
      end
      object cxGridDBTableView1TOTAL: TcxGridDBColumn
        Caption = 'Valor Total'
        DataBinding.FieldName = 'TOTAL'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 616
    Top = 144
    object ReimprimirPedido1: TMenuItem
      Caption = 'Reimprimir Pedido'
      OnClick = ReimprimirPedido1Click
    end
  end
end

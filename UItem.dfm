object fmItem: TfmItem
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 410
  ClientWidth = 829
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 829
    Height = 410
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI Light'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dm.dsItem
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Clique no campo que deseja filtrar'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'N'#227'o existe dados para mostrar'
      OptionsView.GroupByBox = False
      Preview.Visible = True
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CODIGOPRODUTO'
        Width = 70
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
        Width = 178
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Qtde.'
        DataBinding.FieldName = 'QUANTIDADE'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 77
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Desconto'
        DataBinding.FieldName = 'DESCONTO'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Unit'#225'rio'
        DataBinding.FieldName = 'VALOR'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 95
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = 'Desc.Desconto'
        DataBinding.FieldName = 'DESCRDESCONTO'
        Width = 184
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'TOTAL'
        Options.Editing = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end

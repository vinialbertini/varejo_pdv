object fmPesquisaCliente: TfmPesquisaCliente
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pesquisa Cliente'
  ClientHeight = 427
  ClientWidth = 889
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 889
    Height = 427
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

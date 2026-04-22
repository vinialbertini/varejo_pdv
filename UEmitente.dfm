object fmEmitente: TfmEmitente
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Emitente'
  ClientHeight = 443
  ClientWidth = 730
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 17
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
    Left = 256
    Top = 17
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
  object Label3: TLabel
    Left = 256
    Top = 63
    Width = 41
    Height = 13
    Caption = 'Fantasia'
  end
  object Label4: TLabel
    Left = 122
    Top = 63
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
  object Label5: TLabel
    Left = 120
    Top = 110
    Width = 61
    Height = 13
    Caption = 'Certificado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 271
    Top = 230
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label9: TLabel
    Left = 592
    Top = 231
    Width = 27
    Height = 13
    Caption = 'CNAE'
  end
  object Label10: TLabel
    Left = 120
    Top = 230
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object DBEdit1: TDBEdit
    Left = 120
    Top = 32
    Width = 121
    Height = 21
    DataField = 'CNPJ'
    DataSource = dm.dsEmitente
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 256
    Top = 32
    Width = 457
    Height = 21
    DataField = 'RAZAO'
    DataSource = dm.dsEmitente
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 120
    Top = 78
    Width = 121
    Height = 21
    DataField = 'IE'
    DataSource = dm.dsEmitente
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 120
    Top = 125
    Width = 591
    Height = 21
    DataField = 'CERTIFICADO'
    DataSource = dm.dsEmitente
    TabOrder = 4
    OnClick = DBEdit4Click
  end
  object DBEdit9: TDBEdit
    Left = 256
    Top = 78
    Width = 457
    Height = 21
    DataField = 'Fantasia'
    DataSource = dm.dsEmitente
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 120
    Top = 152
    Width = 593
    Height = 73
    Caption = 'C'#243'digo de Seguran'#231'a do Contribuinte - CSC'
    TabOrder = 5
    object Label6: TLabel
      Left = 7
      Top = 22
      Width = 13
      Height = 13
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 134
      Top = 22
      Width = 42
      Height = 13
      Caption = 'Tokken'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit10: TDBEdit
      Left = 7
      Top = 37
      Width = 112
      Height = 21
      DataField = 'IDCSC'
      DataSource = dm.dsEmitente
      TabOrder = 0
    end
    object DBEdit11: TDBEdit
      Left = 136
      Top = 37
      Width = 457
      Height = 21
      DataField = 'CSC'
      DataSource = dm.dsEmitente
      TabOrder = 1
    end
  end
  object DBEdit12: TDBEdit
    Left = 271
    Top = 245
    Width = 306
    Height = 21
    DataField = 'EMAIL'
    DataSource = dm.dsEmitente
    TabOrder = 7
  end
  object DBEdit13: TDBEdit
    Left = 592
    Top = 245
    Width = 121
    Height = 21
    DataField = 'CNAE'
    DataSource = dm.dsEmitente
    TabOrder = 8
  end
  object DBEdit14: TDBEdit
    Left = 120
    Top = 245
    Width = 135
    Height = 21
    DataField = 'TELEFONE'
    DataSource = dm.dsEmitente
    TabOrder = 6
  end
  object GroupBox2: TGroupBox
    Left = 120
    Top = 272
    Width = 593
    Height = 153
    Caption = 'Endere'#231'o'
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
      DataSource = dm.dsEmitente
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 7
      Top = 79
      Width = 128
      Height = 21
      DataField = 'COMPLEMENTO'
      DataSource = dm.dsEmitente
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 470
      Top = 36
      Width = 121
      Height = 21
      DataField = 'NUMERO'
      DataSource = dm.dsEmitente
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 149
      Top = 79
      Width = 164
      Height = 21
      DataField = 'BAIRRO'
      DataSource = dm.dsEmitente
      TabOrder = 3
    end
    object DBEdit15: TDBEdit
      Left = 326
      Top = 79
      Width = 211
      Height = 21
      DataField = 'CIDADE'
      DataSource = dm.dsEmitente
      TabOrder = 4
    end
    object DBEdit16: TDBEdit
      Left = 552
      Top = 79
      Width = 39
      Height = 21
      DataField = 'UF'
      DataSource = dm.dsEmitente
      TabOrder = 5
    end
    object DBEdit17: TDBEdit
      Left = 7
      Top = 121
      Width = 128
      Height = 21
      DataField = 'IBGE'
      DataSource = dm.dsEmitente
      TabOrder = 6
    end
    object DBEdit18: TDBEdit
      Left = 149
      Top = 121
      Width = 100
      Height = 21
      DataField = 'CEP'
      DataSource = dm.dsEmitente
      TabOrder = 7
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 114
    Height = 443
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 10
    object RzToolButton5: TRzToolButton
      Left = 0
      Top = 48
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
      ExplicitTop = 8
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
      ExplicitLeft = -16
      ExplicitTop = 139
    end
    object RzToolButton1: TRzToolButton
      Left = 0
      Top = 0
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
      ExplicitTop = -18
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 560
  end
  object SaveTextFileDialog1: TSaveTextFileDialog
    Left = 664
    Top = 8
  end
end

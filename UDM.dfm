object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 501
  Width = 704
  object dtmDados: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=22.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=C:\Emissor\Dados\Dados.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Left = 48
    Top = 24
  end
  object dsEmitente: TDataSource
    DataSet = cdsEmitente
    Left = 296
    Top = 72
  end
  object cdsEmitente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmitente'
    Left = 216
    Top = 72
    object cdsEmitenteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsEmitenteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsEmitenteRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object cdsEmitenteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object cdsEmitenteCSC: TStringField
      FieldName = 'CSC'
      Size = 100
    end
    object cdsEmitenteIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object cdsEmitenteCERTIFICADO: TStringField
      FieldName = 'CERTIFICADO'
      Size = 500
    end
    object cdsEmitenteIDCSC: TStringField
      FieldName = 'IDCSC'
      Size = 10
    end
    object cdsEmitenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsEmitenteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsEmitenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 10
    end
    object cdsEmitenteCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsEmitenteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsEmitenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsEmitenteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cdsEmitenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object cdsEmitenteEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 50
    end
    object cdsEmitenteIBGE: TIntegerField
      FieldName = 'IBGE'
    end
    object cdsEmitenteCNAE: TIntegerField
      FieldName = 'CNAE'
    end
  end
  object dspEmitente: TDataSetProvider
    DataSet = sqlEmitente
    Left = 112
    Top = 72
  end
  object sqlEmitente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from emitente')
    SQLConnection = dtmDados
    Left = 32
    Top = 72
    object sqlEmitenteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sqlEmitenteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object sqlEmitenteRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object sqlEmitenteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object sqlEmitenteCSC: TStringField
      FieldName = 'CSC'
      Size = 100
    end
    object sqlEmitenteIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object sqlEmitenteCERTIFICADO: TStringField
      FieldName = 'CERTIFICADO'
      Size = 500
    end
    object sqlEmitenteIDCSC: TStringField
      FieldName = 'IDCSC'
      Size = 10
    end
    object sqlEmitenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object sqlEmitenteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sqlEmitenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 10
    end
    object sqlEmitenteCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object sqlEmitenteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sqlEmitenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object sqlEmitenteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object sqlEmitenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object sqlEmitenteEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 50
    end
    object sqlEmitenteIBGE: TIntegerField
      FieldName = 'IBGE'
    end
    object sqlEmitenteCNAE: TIntegerField
      FieldName = 'CNAE'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 296
    Top = 136
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    AfterScroll = cdsClienteAfterScroll
    OnNewRecord = cdsClienteNewRecord
    Left = 216
    Top = 136
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsClienteCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Size = 14
    end
    object cdsClienteIERG: TStringField
      FieldName = 'IERG'
      Size = 15
    end
    object cdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 10
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsClienteIBGE: TIntegerField
      FieldName = 'IBGE'
    end
    object cdsClienteTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object cdsClienteTIPOIE: TIntegerField
      FieldName = 'TIPOIE'
    end
    object cdsClientePLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsClienteVEICULO: TStringField
      FieldName = 'VEICULO'
      Size = 30
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sqlCliente
    Left = 112
    Top = 136
  end
  object sqlCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cliente')
    SQLConnection = dtmDados
    Left = 32
    Top = 136
    object sqlClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sqlClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sqlClienteCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Size = 14
    end
    object sqlClienteIERG: TStringField
      FieldName = 'IERG'
      Size = 15
    end
    object sqlClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object sqlClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object sqlClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sqlClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sqlClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 10
    end
    object sqlClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sqlClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object sqlClienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sqlClienteIBGE: TIntegerField
      FieldName = 'IBGE'
    end
    object sqlClienteTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object sqlClienteTIPOIE: TIntegerField
      FieldName = 'TIPOIE'
    end
    object sqlClientePLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object sqlClienteVEICULO: TStringField
      FieldName = 'VEICULO'
      Size = 30
    end
  end
  object sqlMaxCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(codigo) from cliente')
    SQLConnection = dtmDados
    Left = 24
    Top = 256
    object sqlMaxClienteMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object cdsMaxCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaxCliente'
    OnNewRecord = cdsClienteNewRecord
    Left = 208
    Top = 264
    object cdsMaxClienteMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object dspMaxCliente: TDataSetProvider
    DataSet = sqlMaxCliente
    Left = 112
    Top = 256
  end
  object sqlMaxProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(codigo) from produto')
    SQLConnection = dtmDados
    Left = 24
    Top = 312
    object sqlMaxProdutoMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object cdsMaxProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaxProduto'
    OnNewRecord = cdsClienteNewRecord
    Left = 208
    Top = 320
    object cdsMaxProdutoMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object dspMaxProduto: TDataSetProvider
    DataSet = sqlMaxProduto
    Left = 112
    Top = 312
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 296
    Top = 192
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    OnNewRecord = cdsProdutoNewRecord
    Left = 216
    Top = 192
    object cdsProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cdsProdutoNCM: TIntegerField
      FieldName = 'NCM'
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
    object cdsProdutoVALOR: TSingleField
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsProdutoCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
    object cdsProdutoCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Size = 13
    end
    object cdsProdutoALIQFEDNACIONAL: TSingleField
      FieldName = 'ALIQFEDNACIONAL'
    end
    object cdsProdutoALIQFEDIMPORTADO: TSingleField
      FieldName = 'ALIQFEDIMPORTADO'
    end
    object cdsProdutoALIQESTADUAL: TSingleField
      FieldName = 'ALIQESTADUAL'
    end
    object cdsProdutoALIQMUNICIPAL: TSingleField
      FieldName = 'ALIQMUNICIPAL'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sqlProduto
    Left = 112
    Top = 192
  end
  object sqlProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from produto order by 1')
    SQLConnection = dtmDados
    Left = 32
    Top = 192
    object sqlProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sqlProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object sqlProdutoNCM: TIntegerField
      FieldName = 'NCM'
    end
    object sqlProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
    object sqlProdutoVALOR: TSingleField
      FieldName = 'VALOR'
    end
    object sqlProdutoCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
    object sqlProdutoCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Size = 13
    end
    object sqlProdutoALIQFEDNACIONAL: TSingleField
      FieldName = 'ALIQFEDNACIONAL'
    end
    object sqlProdutoALIQFEDIMPORTADO: TSingleField
      FieldName = 'ALIQFEDIMPORTADO'
    end
    object sqlProdutoALIQESTADUAL: TSingleField
      FieldName = 'ALIQESTADUAL'
    end
    object sqlProdutoALIQMUNICIPAL: TSingleField
      FieldName = 'ALIQMUNICIPAL'
    end
  end
  object sqlMaxNota: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(codigo) as Codigo, max(numero) as Nota from nota')
    SQLConnection = dtmDados
    Left = 24
    Top = 368
    object sqlMaxNotaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sqlMaxNotaNOTA: TIntegerField
      FieldName = 'NOTA'
    end
  end
  object cdsMaxNota: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaxNota'
    OnNewRecord = cdsClienteNewRecord
    Left = 208
    Top = 368
    object cdsMaxNotaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsMaxNotaNOTA: TIntegerField
      FieldName = 'NOTA'
    end
  end
  object dspMaxNota: TDataSetProvider
    DataSet = sqlMaxNota
    Left = 112
    Top = 368
  end
  object sqlMaxItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(codigo) from item')
    SQLConnection = dtmDados
    Left = 16
    Top = 432
    object sqlMaxItemMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object cdsMaxItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaxItem'
    OnNewRecord = cdsClienteNewRecord
    Left = 200
    Top = 432
    object cdsMaxItemMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object dspMaxItem: TDataSetProvider
    DataSet = sqlMaxItem
    Left = 104
    Top = 432
  end
  object dsNota: TDataSource
    AutoEdit = False
    DataSet = cdsNota
    Left = 648
    Top = 256
  end
  object cdsNota: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNota'
    AfterScroll = cdsClienteAfterScroll
    OnNewRecord = cdsNotaNewRecord
    Left = 568
    Top = 256
    object cdsNotaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsNotaCODIGOEMITENTE: TIntegerField
      FieldName = 'CODIGOEMITENTE'
    end
    object cdsNotaCODIGOCLIENTE: TIntegerField
      FieldName = 'CODIGOCLIENTE'
    end
    object cdsNotaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsNotaMODELO: TIntegerField
      FieldName = 'MODELO'
    end
    object cdsNotaSERIE: TIntegerField
      FieldName = 'SERIE'
    end
    object cdsNotaCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 50
    end
    object cdsNotaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsNotaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object cdsNotaTOTAL: TSingleField
      FieldName = 'TOTAL'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsNotaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 14
    end
    object cdsNotaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dspNota: TDataSetProvider
    DataSet = sqlNota
    Left = 464
    Top = 256
  end
  object sqlNota: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select nota.*, cliente.nome from nota'
      'left join cliente on'
      'cliente.codigo = nota.codigocliente')
    SQLConnection = dtmDados
    Left = 384
    Top = 256
    object sqlNotaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sqlNotaCODIGOEMITENTE: TIntegerField
      FieldName = 'CODIGOEMITENTE'
    end
    object sqlNotaCODIGOCLIENTE: TIntegerField
      FieldName = 'CODIGOCLIENTE'
    end
    object sqlNotaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sqlNotaMODELO: TIntegerField
      FieldName = 'MODELO'
    end
    object sqlNotaSERIE: TIntegerField
      FieldName = 'SERIE'
    end
    object sqlNotaCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 50
    end
    object sqlNotaDATA: TDateField
      FieldName = 'DATA'
    end
    object sqlNotaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object sqlNotaTOTAL: TSingleField
      FieldName = 'TOTAL'
    end
    object sqlNotaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 14
    end
    object sqlNotaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsItem: TDataSource
    DataSet = cdsItem
    Left = 648
    Top = 312
  end
  object cdsItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItem'
    OnNewRecord = cdsItemNewRecord
    Left = 568
    Top = 312
    object cdsItemCODIGONOTA: TIntegerField
      FieldName = 'CODIGONOTA'
    end
    object cdsItemCODIGOPRODUTO: TIntegerField
      FieldName = 'CODIGOPRODUTO'
    end
    object cdsItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cdsItemQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      OnChange = cdsItemQUANTIDADEChange
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
    object cdsItemVALOR: TSingleField
      FieldName = 'VALOR'
      OnChange = cdsItemVALORChange
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsItemDESCONTO: TSingleField
      FieldName = 'DESCONTO'
      OnChange = cdsItemDESCONTOChange
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsItemTOTAL: TSingleField
      FieldName = 'TOTAL'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsItemDESCRDESCONTO: TStringField
      FieldName = 'DESCRDESCONTO'
      Size = 50
    end
    object cdsItemITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsItemNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsItemCEST: TStringField
      FieldName = 'CEST'
      Size = 10
    end
    object cdsItemVALORICMS: TSingleField
      FieldName = 'VALORICMS'
    end
    object cdsItemALIQFEDNACIONAL: TSingleField
      FieldName = 'ALIQFEDNACIONAL'
    end
    object cdsItemALIQFEDIMPORTADO: TSingleField
      FieldName = 'ALIQFEDIMPORTADO'
    end
    object cdsItemALIQESTADUAL: TSingleField
      FieldName = 'ALIQESTADUAL'
    end
    object cdsItemALIQMUNICIPAL: TSingleField
      FieldName = 'ALIQMUNICIPAL'
    end
  end
  object dspItem: TDataSetProvider
    DataSet = sqlItem
    Left = 464
    Top = 312
  end
  object sqlItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ITEM')
    SQLConnection = dtmDados
    Left = 384
    Top = 312
    object sqlItemCODIGONOTA: TIntegerField
      FieldName = 'CODIGONOTA'
    end
    object sqlItemCODIGOPRODUTO: TIntegerField
      FieldName = 'CODIGOPRODUTO'
    end
    object sqlItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object sqlItemQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object sqlItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
    object sqlItemVALOR: TSingleField
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object sqlItemDESCONTO: TSingleField
      FieldName = 'DESCONTO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object sqlItemTOTAL: TSingleField
      FieldName = 'TOTAL'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object sqlItemDESCRDESCONTO: TStringField
      FieldName = 'DESCRDESCONTO'
      Size = 50
    end
    object sqlItemITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object sqlItemNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object sqlItemCEST: TStringField
      FieldName = 'CEST'
      Size = 10
    end
    object sqlItemVALORICMS: TSingleField
      FieldName = 'VALORICMS'
    end
    object sqlItemALIQFEDNACIONAL: TSingleField
      FieldName = 'ALIQFEDNACIONAL'
    end
    object sqlItemALIQFEDIMPORTADO: TSingleField
      FieldName = 'ALIQFEDIMPORTADO'
    end
    object sqlItemALIQESTADUAL: TSingleField
      FieldName = 'ALIQESTADUAL'
    end
    object sqlItemALIQMUNICIPAL: TSingleField
      FieldName = 'ALIQMUNICIPAL'
    end
  end
  object sqlFoto: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from foto')
    SQLConnection = dtmDados
    Left = 376
    Top = 432
    object sqlFotoFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
  end
  object cdsFoto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFoto'
    OnNewRecord = cdsClienteNewRecord
    Left = 560
    Top = 432
    object cdsFotoFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
  end
  object dspFoto: TDataSetProvider
    DataSet = sqlFoto
    Left = 464
    Top = 432
  end
  object sqlDeletaItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmDados
    Left = 384
    Top = 360
    object IntegerField1: TIntegerField
      FieldName = 'CODIGONOTA'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODIGOPRODUTO'
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object IntegerField3: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object StringField2: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
    object SingleField1: TSingleField
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object SingleField2: TSingleField
      FieldName = 'DESCONTO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object SingleField3: TSingleField
      FieldName = 'TOTAL'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object StringField3: TStringField
      FieldName = 'DESCRDESCONTO'
      Size = 50
    end
    object IntegerField4: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42825.946111620400000000
    ReportOptions.LastChange = 42832.815481041700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 624
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftTop]
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 226.771800000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cliente:')
        end
        object frxDBDataset2NOME: TfrxMemoView
          Left = 59.472480000000000000
          Top = 45.354360000000000000
          Width = 650.079160000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."NOME"]')
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 66.031540000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'CNPJ/CPF:')
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.488250000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Endere'#231'o:')
        end
        object frxDBDataset2CNPJCPF: TfrxMemoView
          Left = 81.149660000000000000
          Top = 66.252010000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJCPF'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."CNPJCPF"]')
        end
        object frxDBDataset2ENDERECO: TfrxMemoView
          Left = 74.149660000000000000
          Top = 86.929190000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."ENDERECO"]')
        end
        object frxDBDataset2NUMERO: TfrxMemoView
          Left = 536.693260000000000000
          Top = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."NUMERO"]')
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 107.826840000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Bairro:')
        end
        object frxDBDataset2BAIRRO: TfrxMemoView
          Left = 51.913420000000000000
          Top = 107.826840000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."BAIRRO"]')
        end
        object Memo5: TfrxMemoView
          Left = 258.008040000000000000
          Top = 107.606370000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cidade:')
        end
        object frxDBDataset2CIDADE: TfrxMemoView
          Left = 312.700990000000000000
          Top = 107.826840000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."CIDADE"]')
        end
        object frxDBDataset2UF: TfrxMemoView
          Left = 630.181510000000000000
          Top = 107.606370000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."UF"]')
        end
        object frxDBDataset2CEP: TfrxMemoView
          Left = 47.913420000000000000
          Top = 128.283550000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."CEP"]')
        end
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 128.504020000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'CEP:')
        end
        object Line1: TfrxLineView
          Left = -0.220470000000000000
          Top = 26.236240000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 2.000000000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO DE VENDA:')
          ParentFont = False
        end
        object frxDBDataset3CODIGONOTA: TfrxMemoView
          Left = 170.078850000000000000
          Top = 4.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGONOTA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset3."CODIGONOTA"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 0.220470000000000000
          Top = 192.756030000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 204.094620000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'C'#243'digo')
        end
        object Memo9: TfrxMemoView
          Left = 56.692950000000000000
          Top = 204.094620000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Produto')
        end
        object Memo10: TfrxMemoView
          Left = 423.307360000000000000
          Top = 203.874150000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Quant.')
        end
        object Memo11: TfrxMemoView
          Left = 468.661720000000000000
          Top = 204.094620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit'#225'ro')
        end
        object Memo12: TfrxMemoView
          Left = 555.590910000000000000
          Top = 204.094620000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
        end
        object Memo13: TfrxMemoView
          Left = 631.181510000000000000
          Top = 204.094620000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
        end
        object SysMemo4: TfrxSysMemoView
          Left = 480.000310000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[TIME]')
        end
        object Memo17: TfrxMemoView
          Left = 440.425480000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Hora:')
        end
        object SysMemo5: TfrxSysMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[DATE]')
        end
        object Memo18: TfrxMemoView
          Left = 578.268090000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data:')
        end
        object Memo19: TfrxMemoView
          Left = 294.803340000000000000
          Top = 66.031540000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Telefone:')
        end
        object frxDBDataset2TELEFONE: TfrxMemoView
          Left = 357.275820000000000000
          Top = 66.252010000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."TELEFONE"]')
        end
        object Memo21: TfrxMemoView
          Left = 59.472480000000000000
          Top = 149.401670000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'VEICULO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."VEICULO"]')
        end
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 148.622140000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Ve'#237'culo:')
        end
        object Memo23: TfrxMemoView
          Left = 46.913420000000000000
          Top = 169.299320000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'PLACA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."PLACA"]')
        end
        object Memo24: TfrxMemoView
          Left = 3.779530000000000000
          Top = 169.519790000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Placa:')
        end
        object Memo25: TfrxMemoView
          Left = 478.000310000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Numero:')
        end
        object Memo26: TfrxMemoView
          Left = 600.945270000000000000
          Top = 107.606370000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'UF:')
        end
        object Memo27: TfrxMemoView
          Left = 362.834880000000000000
          Top = 147.401670000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Forma de Pagamento:')
        end
        object Memo28: TfrxMemoView
          Left = 498.897960000000000000
          Top = 147.401670000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '(     ) '#192' VISTA        (      ) '#192' PRAZO')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 423.307360000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object frxDBDataset3CODIGONOTA1: TfrxMemoView
          Left = 3.559060000000000000
          Top = 1.000000000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Memo.UTF8W = (
            '[frxDBDataset3."CODIGOPRODUTO"]')
        end
        object frxDBDataset3DESCRICAO: TfrxMemoView
          Left = 56.692950000000000000
          Top = 1.779530000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Memo.UTF8W = (
            '[frxDBDataset3."DESCRICAO"]')
        end
        object frxDBDataset3QUANTIDADE: TfrxMemoView
          Left = 423.307360000000000000
          Top = 1.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."QUANTIDADE"]')
        end
        object frxDBDataset3VALOR: TfrxMemoView
          Left = 468.661720000000000000
          Top = 1.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."VALOR"]')
        end
        object frxDBDataset3DESCONTO: TfrxMemoView
          Left = 555.590910000000000000
          Top = 1.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."DESCONTO"]')
        end
        object frxDBDataset3TOTAL: TfrxMemoView
          Left = 631.181510000000000000
          Top = 1.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."TOTAL"]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frxDBDataset1FANTASIA: TfrxMemoView
          Left = 170.078850000000000000
          Top = 5.000000000000000000
          Width = 430.866420000000000000
          Height = 18.897650000000000000
          DataField = 'FANTASIA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."FANTASIA"]')
          ParentFont = False
        end
        object frxDBDataset1ENDERECO: TfrxMemoView
          Left = 170.078850000000000000
          Top = 25.677180000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ENDERECO"]')
          ParentFont = False
        end
        object frxDBDataset1NUMERO: TfrxMemoView
          Left = 521.575140000000000000
          Top = 25.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NUMERO"]')
          ParentFont = False
        end
        object frxDBDataset1CEP: TfrxMemoView
          Left = 521.575140000000000000
          Top = 46.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CEP"]')
          ParentFont = False
        end
        object frxDBDataset1UF: TfrxMemoView
          Left = 340.157700000000000000
          Top = 46.574830000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."UF"]')
          ParentFont = False
        end
        object frxDBDataset1BAIRRO: TfrxMemoView
          Left = 362.834880000000000000
          Top = 46.574830000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."BAIRRO"]')
          ParentFont = False
        end
        object frxDBDataset1TELEFONE: TfrxMemoView
          Left = 170.078850000000000000
          Top = 66.031540000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."TELEFONE"]')
          ParentFont = False
        end
        object frxDBDataset1EMAIL: TfrxMemoView
          Left = 292.803340000000000000
          Top = 66.031540000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          DataField = 'EMAIL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMAIL"]')
          ParentFont = False
        end
        object frxDBDataset1CIDADE: TfrxMemoView
          Left = 170.078850000000000000
          Top = 46.574830000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CIDADE"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 92.708720000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Picture1: TfrxPictureView
          Top = 15.118120000000000000
          Width = 167.362090000000000000
          Height = 63.338590000000000000
          Center = True
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000015900
            000034080600000020EF4BEB0000000467414D410000B18E7CFB519300000A39
            6943435050686F746F73686F70204943432070726F66696C65000048C79D9677
            5454D71687CFBD777AA1CD30025286DEBBC000D27B935E456198196028030E33
            34B121A2021145449A224850C480D150245644B1101454B00724082831184554
            2C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9FBECBDCF5A170092A72F979706
            4B0190CA13F0833C9CE911915174EC0080011E608029004C5646BA5FB07B0810
            C9CBCD859E2172025F0401F07A58BC0270D3D033804E07FF9FA459E97C81E898
            00119BB339192C11178838254B902EB6CF8A981A972C66182566BE284111CB89
            3961910D3EFB2CB2A398D9A93CB688C539A7B353D962EE15F1B64C2147C488AF
            880B33B99C2C11DF12B1468A30952BE237E2D8540E33030014496C1770588922
            361131891F12E422E2E500E048095F71DC572CE0640BC49772494BCFE1731312
            05741D962EDDD4DA9A41F7E464A5700402C300262B99C967D35DD252D399BC1C
            0016EFFC5932E2DAD24545B634B5B6B434343332FDAA50FF75F36F4ADCDB457A
            19F8B96710ADFF8BEDAFFCD21A0060CC896AB3F38B2DAE0A80CE2D00C8DDFB62
            D3380080A4A86F1DD7BFBA0F4D3C2F890241BA8DB1715656961197C3321217F4
            0FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C618A802EAE1B2B2D254DC8A767
            A433591CBAE19F87F81F07FE751E06419C780E9FC313458489A68CCB4B10B59B
            C7E60AB8693C3A97F79F9AF80FC3FEA4C5B91689D2F81150638C80D4752A407E
            ED07280A1120D1FBC55DFFA36FBEF830207E79E12A938B73FFEF37FD67C1A5E2
            25839BF039CE252884CE12F23317F7C4CF12A0010148022A9007CA401DE80043
            6006AC802D70046EC01BF8831010095603164804A9800FB2401ED8040A4131D8
            09F6806A50071A41336805C741273805CE834BE01AB8016E83FB60144C806760
            16BC060B10046121324481E421154813D287CC2006640FB941BE50101409C542
            09100F124279D066A8182A83AAA17AA819FA1E3A099D87AE4083D05D680C9A86
            7E87DEC1084C82A9B012AC051BC30CD809F68143E0557002BC06CE850BE01D70
            25DC001F853BE0F3F035F8363C0A3F83E7108010111AA28A18220CC405F147A2
            9078848FAC478A900AA4016945BA913EE426328ACC206F51181405454719A26C
            519EA850140BB506B51E5582AA461D4675A07A51375163A859D4473419AD88D6
            47DBA0BDD011E8047416BA105D816E42B7A32FA26FA327D0AF31180C0DA38DB1
            C2786222314998B59812CC3E4C1BE61C6610338E99C362B1F2587DAC1DD61FCB
            C40AB085D82AEC51EC59EC107602FB0647C4A9E0CC70EEB8281C0F978FABC01D
            C19DC10DE126710B7829BC26DE06EF8F67E373F0A5F8467C37FE3A7E02BF4090
            266813EC08218424C2264225A1957091F080F0924824AA11AD8981442E7123B1
            92788C789938467C4B9221E9915C48D124216907E910E91CE92EE925994CD622
            3B92A3C802F20E7233F902F911F98D0445C248C24B822DB141A246A2436248E2
            B9245E5253D24972B564AE6485E409C9EB92335278292D291729A6D47AA91AA9
            9352235273D2146953697FE954E912E923D257A4A764B0325A326E326C990299
            83321764C62908459DE242615136531A29172913540C559BEA454DA21653BFA3
            0E506765656497C986C966CBD6C89E961DA521342D9A172D85564A3B4E1BA6BD
            5BA2B4C4690967C9F625AD4B8696CCCB2D957394E3C815C9B5C9DD967B274F97
            77934F96DF25DF29FF5001A5A0A710A890A5B05FE1A2C2CC52EA52DBA5ACA545
            4B8F2FBDA7082BEA290629AE553CA8D8AF38A7A4ACE4A194AE54A57441694699
            A6ECA89CA45CAE7C46795A85A262AFC255295739ABF2942E4B77A2A7D02BE9BD
            F4595545554F55A16ABDEA80EA829AB65AA85ABE5A9BDA4375823A433D5EBD5C
            BD477D564345C34F234FA345E39E265E93A199A8B957B34F735E4B5B2B5C6BAB
            56A7D694B69CB69776AE768BF6031DB28E83CE1A9D069D5BBA185D866EB2EE3E
            DD1B7AB09E855EA25E8DDE757D58DF529FABBF4F7FD0006D606DC03368301831
            24193A19661AB6188E19D18C7C8DF28D3A8D9E1B6B184719EF32EE33FE686261
            9262D26872DF54C6D4DB34DFB4DBF477333D3396598DD92D73B2B9BBF906F32E
            F317CBF4977196ED5F76C78262E167B1D5A2C7E283A59525DFB2D572DA4AC32A
            D6AAD66A84416504304A1897ADD1D6CED61BAC4F59BFB5B1B411D81CB7F9CDD6
            D036D9F688EDD472EDE59CE58DCBC7EDD4EC9876F576A3F674FB58FB03F6A30E
            AA0E4C870687C78EEA8E6CC726C749275DA724A7A34ECF9D4D9CF9CEEDCEF32E
            362EEB5CCEB922AE1EAE45AE036E326EA16ED56E8FDCD5DC13DC5BDC673D2C3C
            D67A9CF3447BFA78EEF21CF152F26279357BCD7A5B79AFF3EEF521F904FB54FB
            3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC15BD1E90FFCBDFC77FB3F0CD00E
            5813F06320263020B026F0499069505E505F30253826F848F0EB10E790D290FB
            A13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0D108E3887511D7221522B9915D
            51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C1E5EA5BD2A7BD595D50AAB5356
            9F8E918C61C69C8845C786C71E897DCFF4673630E7E2BCE26AE366592EACBDAC
            676C4776397B9A63C729E34CC6DBC597C54F25D825EC4E984E7448AC489CE1BA
            70ABB92F923C93EA92E693FD930F257F4A094F694BC5A5C6A69EE4C9F09279BD
            69CA69D96983E9FAE985E9A36B6CD6EC5933CBF7E137654019AB32BA0454D1CF
            54BF5047B8453896699F5993F9262B2CEB44B674362FBB3F472F677BCE64AE7B
            EEB76B516B596B7BF254F336E58DAD735A57BF1E5A1FB7BE6783FA86820D131B
            3D361EDE44D894BCE9A77C93FCB2FC579BC337771728156C2C18DFE2B1A5A550
            A2905F38B2D5766BDD36D436EEB681EDE6DBABB67F2C62175D2D3629AE287E5F
            C22AB9FA8DE93795DF7CDA11BF63A0D4B274FF4ECC4EDECEE15D0EBB0E974997
            E5968DEFF6DBDD514E2F2F2A7FB52766CF958A6515757B097B857B472B7D2BBB
            AA34AA7656BDAF4EACBE5DE35CD356AB58BBBD767E1F7BDFD07EC7FDAD754A75
            C575EF0E700FDCA9F7A8EF68D06AA83888399879F049635863DFB78C6F9B9B14
            9A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E291D216B845D8327D34FAE88DEF
            5CBFEB6A356CAD6FA3B5151F03C784C79E7E1FFBFDF0719FE33D2718275A7FD0
            FCA1B69DD25ED40175E474CC7626768E7645760D9EF43ED9D36DDBDDFEA3D18F
            874EA99EAA392D7BBAF40CE14CC1994F6773CFCE9D4B3F37733EE1FC784F4CCF
            FD0B11176EF506F60E5CF4B978F992FBA50B7D4E7D672FDB5D3E75C5E6CAC9AB
            8CAB9DD72CAF75F45BF4B7FF64F153FB80E540C775ABEB5D37AC6F740F2E1F3C
            33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070E8F09D91E891D13BEC3B537753
            EEBEB897796FE1FEC607E807450FA51E563C527CD4F0B3EECF6DA396A3A7C75C
            C7FA1F073FBE3FCE1A7FF64BC62FEF270A9E909F544CAA4C364F994D9D9A769F
            BEF174E5D38967E9CF16660A7F95FEB5F6B9CEF31F7E73FCAD7F366276E205FF
            C5A7DF4B5ECABF3CF46AD9AB9EB980B947AF535F2FCC17BD917F73F82DE36DDF
            BBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1A7D44F9FFE050398F3FCBAC4E8
            D3000000097048597300000B1300000B1301009A9C18000078E44944415478DA
            B47D077C14C5FBFE737BBDE5D27B48A1240144C582BDF7020A0AD2155041C48E
            1DEC0888CA57B1A060415150515414A5F7D07B0FE9BDF75CDDBDFFFB6EEE30B9
            DB48F1F79FCF67E1B23B333BF3CE3BCF5BE69D59D5F1EE89F8FF90E2E8BA5EE1
            7E3E5D9BF8878A2E49A58243ADEEAC0E1DBCDE2B058FE71C95DBD55D258A892A
            4932CB4F542AD1AB56D74010EA258D26CFABD1147B55AABDF4E0C829DA758E4A
            F4F4135CEE4CFA3F81EA8CF4D507AAAB96EA2994B4BA23925A9D45770F079556
            A922551EF708B5C3713EB54D477F7B7C4F44485228B5CFA2F856417078B5DA63
            A24EBFDF2B086BE94E61C0F30CC1611FAB763A93E9B9B3DD13AE379CEA3505D5
            A956B7507B7345ADEE10D1621BDD39708663C4F4BC5C70BB7AAB3C9E2E10C518
            95D7AB69AB5B68F1AA3525448BC344DF3D7467F3D930816252A932049773208D
            6B14F5D54EFD33513BA2981D7CFD35D3DF6101F4B113FD72459D8EE8A7DE4277
            4E35CE1D925725DCA569697A44703A05AAABE333EE2EFDEB315B4A3C3AFD747A
            B762DDD4D6DE6A7BEBABEAD6D6D0C03ACEA82DDC1DAF17A2D55A290AEA1A6D63
            43E6D9D4A25209705B43B2A8BE1C8DBDF552A25B48003F5AA82FA18AC505C1CD
            BC23E9F4FB88D73706D293FA1A4163F496A6B9B99B3C373A3CA4776B34705BAC
            EB68FECE229E717432CE63D5CD4D4389BFE87730CDF98E68B1E678B4DA37A99D
            4567D0F9AE2A49BC82E63061822791F8368EDAA06EF75E0FCD8D6AC60749AD29
            F26103CFE782F695E845116AEA8BF79F5B7DE9EAA9F03E9E5BD9673E46ED48F1
            FF09645FA5EB1585FB9FD3F510FF60467311C0BA88613B0CA34AD597006722EA
            6A6F737AC458972504EE9010884623BC5A9D3CC84458A89C4E10F842DBD20C83
            BD15467A2E86866DA5A777529EEA76F585D0608C13EAEA46B85B5BCF77184D54
            5F2844931192CE20A3BD971987EA53B7B4C0D8DC002BD52F58ADEB9C660BB7F7
            3BF99D8086186393C3E9ECD74C75D0C04125F98788FED7E92069B4F0E5F5BD5B
            9E0E00B553DDD8086B23D5AD55BB5CA1E1B34541784ED596D74CB4C86B96BC51
            AD54AFE076B72306D7AB87484CADF2D7EBAB53E5A2F63653DF9BA85E8F1B6A8B
            65A7CB62FD9CDAF559873674A42DB76F84BAB16194D8D878A543A335B86CA1F0
            98CC900C0606EE365AB85C105A5BA1675A381DD0994C079D56DB579220BC4FED
            90FE035F588886E5CD0EA7D949E32E109D417D13F58636BAF1A5D5D2B8F8C6F9
            24FDA87F4D4D3035D62384B0D86B0B5DEE3218A7D2E4DC79CA37AAD53D544D8D
            C7EA0D263823224140DB9124820A1E0281F09626183CEE23047C4A134DA396C4
            A226B536B639342CA88E33492A1A031ECF30A71D0462A8098D004F75EACBE957
            42E3A422FA8513DF7B1BEAD1407D9334EA7FF831908EED398A79C04338D44CF4
            A4B236150998D0F06F09ECC6511BE48E11F8FC6C87EAEE065B1868EE74A88340
            0B5A6AAF8DDA2E88EE174980BD1DD447B5FA0A6F63C3C67A9ABBCC5F02F15347
            9A0B90A8CEF0D666E8447105CD859B4F4134FEF73E7563FD839E8686AB9D5A9D
            DA456D1369BE88CCB72CF4647E51F9B0C1218F918678D8EC76421B1EE1A6FE3D
            48FDFBDA4F037AAF7C49FF08115626CE53787B7FBA7E3FEB01C7FF3F905D4AD7
            0085FB77D0F507032C77CE4E8C204F6A7E2208061A8CF7A4B292092D161BDC97
            5E01DD25974197D1139AA818E8C2C3A1321A64DC713BEC701368B969E2B9AA2A
            D152510EEFF66D88DBBE096A95EA7192CE1F30C1A9DE07559515AFB53A5D718E
            3EE7417DC5D5D09FDB179A8444E8C323189864828B04528EFA7A38ABAAD07422
            1BAD599B61DDBA11090D759022237F70ABB543545E4983CA0AB738722C84071F
            9107D22BF2C4686BBFCE4A8A040DB8B7DD64E109C5EC69A7B6DA4B4B51B37F2F
            BCBF2E41D7ECC3508587FFEC566B061168657ACB4B0FE3D9A9C03D4381FA3A1F
            377B41F31F3A9B0D5E025AF8EA15B8BDF4CC49806DAFA8400BB5B779C73698B2
            3622A9BA1C8888FCCBA5D50D26866AEA4079B5FA72A1AE76B6ABB6EEC296B4AE
            505D792D74175C0C5D6A1A332134F41E821248D42727B5D759538D96C242B96E
            CDE675482ACA832E346C1F09A91154F7C1B3E20A49BA118D0D2BDC8F4D8674ED
            8D50D5D6406726E3C4626DA31BE1B79EC64445A0CF7F33FDB8D74E1A677B5929
            1A8F1D45CBDAD588DBBA0111441C4768D8FDF04D1C65EE26023637FD2909EA5B
            8DDFFC08897849D5D4912C1A028D521AC1E6C98FA3EBEA3FE18C8A89A6DB551D
            3279A51EDEF2F263C27353A179682254044E679B3444E34A12EE0DC30622CD45
            3CB4F83719F4181C4E37A9F57A14141442337C00A27A9E03CF5BEF413604DC9E
            367E24FED0B5A3637B721028C249CA84BDAC0C75478FC0FEFB2F48DBB30D06AB
            7597D360BC90C1DE5B5A5CA91A3C224AFBE64C90C2E3E3731FD611A0E7114F58
            9F9D8470A7E30BB7C1383690E6DEDADADD888A3EDFF0F52248094950D1FB3AD0
            40A745618B1DAE27262075D7D65A127E3174DBA3DC5975A4D0D2F2B5ABA2FC36
            7B4A1A70DD4D32DF6A9392896FC3DBF8562D503FBD3278BBED7638692E7B687E
            1020A32E271B613F2F467865D96EB7C97C81BFDA004D962DD012BA4202DEDE40
            170364F3590F38CE0E6419D9EF409BD6CFD467D58BD5F5B7E82A459B25C00D8E
            0D28E7F1DDAB61906537818725324B20B5BA274DB825F6A6A60CA9FF3D081DFF
            2822AEB8026C336A4EA34176BAB27EFB1DC609A31162328E21CDE84BD2C63E77
            17178F739CD717E6F1931071D720848758613A455DDC9962EAD5D1B56BD1FCC1
            2CA46F5ECB83B9C0A5D1CE7315166CE8BAF42F84DF70D359119BA7F7CE9C3C54
            3FFB047A6D5C0D3132F26EAFDB534E2092D56BF566987AF53EE33A3D3EA21FDF
            BA1D35EFCF44C6EA3FA00F0DDFEFD4EB2F24DABA7DC2E671A9A870762B0B2B12
            106143472232B94B104729A532BAB20F1C42C9DC8F91BA6421C275DA56BB35A4
            274DC682D328DE21799D8E2745B7E7BDCC4DBB60ECD2E58CFBCAFA508EDD8503
            DF7F8B8899AF23A98584972DB42F69707B94F2D3A4BBD87124779BEDA517D0E3
            F569FF4AC3D52FBF88E88FDF832626E63A02A2B51D3248527F4759D9AF99CB56
            C27AE5D567DCEEC0C410BD35B32BFADC7413E2FFF7C959D571E2D021E4F6EE8D
            3EEFCD40EC93CF9E551DACB6EEABAE45CED41791F9D34268C3C2668A6AF5ABF6
            ECFCD6948F3E42CC438F28963BB87C391A1F1882106BC8E39256FB4100D5073A
            8EE62D89FA780E52C74FECF4DD8D746D7AE421242E2219191BCFD643B09B46AD
            4E444D7596DDE94C141E7A1491D49EC8D45458CFA08F87DC124A6EB91A5D0EEC
            DEEF8A8C3ED77F3F0064AFA26BBD42F1D574DDE0FB9D4AD7F3ED9E315470F165
            74FDFD6F6D385D9055F92AE4C4FE8D4B14F244D0554B172385927F70375D1730
            C0BA49E238488310DA0036191565075A556AAB65C66C24DD3F06B63320A23FED
            F8F61B884F4F94CC61A1FDE1116F7014953E218C1987F819EF212EE44C86E59F
            94555583FCC726E09C55CBE0B5588A5C822621FDCF3582253DE3ACEAF3A75587
            8FC1396A30BA9517EEB7AB842C44443D9C41206B8888F84FF5EEAC6FC2F1C7C6
            E39CE54BA18A8C7A9BCCFB1769E09E75E7E4CDF05C7209A23FFC0C09E79C43E6
            DE9927764A6D7DE30DA47FF40E422C96BD2EBDE1FC4EDD129D24A9B666AED02D
            FDA19EAB364163D09F753F59BD583E6F3E925E7B1EE17AED2AB74E7F63502659
            A3AAD9EEB6855D94B96537CCA4F57496B817EBE6CF83F1C5A76009B54D92D49A
            391D9EDB5B5F94F486B7D297AF832935F5BF0C511B2D4F9C405EBF3E387FFABB
            887A70C259D5B173C1576819FD00CEF9E37784DF76C77F6ACFB6DA06940EBF07
            3DF76CAD778684CE74D6D4BC99B6E81721E2C6602B9E9165E7F4B7A07FFB15B2
            0893AE65D2B5A7B958565A801E195D7A6ED80E3DBB2B3A49ECC8DD34733AC266
            BC065D74CC3D64512EE99081DD880DF587ED4E57A6ED932F903AE85E745E5BE7
            29A7B00885F7F6474C71DE0A8F2DEC64870240F619BADE5128CE92F925DFEFC7
            E8FA9F429E31747DF96F6D0804D978BA3E429B66CA5AAADF63FD005D357491BD
            0E76524706D4C33E8BFEBEDF6C3ECC5378D7A734E127F0C46480F5B04F4E108C
            DEEAAA3D0E2FD2A3BFFB19A9D729AD959D3AB126B26DCE07D0BFF29CDB101179
            C25E509CA99FFC1C7ABC395D6EF07F49EB0B8AD130F46EF4D8BD0BEEBEE72163
            D566684DC6FF542783C4FA179F47CAA7EF7B3D2A9568BCFC6A4DC66F7F43F59F
            6A6D4B1B8A4A507FDFDDC8C83D5AE8888C7EDD7322679E74EDF548FDF1574498
            CDFFA9EE6CE2C85D0F8C449FDF7F8418133794FE5C7426E5DD25459B2DB70DB8
            2CFDFB2567524C311D737970F8BE41E8B961A5E88C8E49A05B15ED9FAB54C26D
            F623B97F447FF40152264C3A657D5B57AF86E3E1FB112DBAE67A8CA6F1ED9F79
            2ACABFD35F7CE9D05ECBD7FCE77673DABB7E1DEA6EBD1617FDB51696ABAE39E3
            F2EC58D83CF56518DF7E0B99646558327A9E711DED1303CDF2B99F2262CA6418
            0DFA5A51A3B5F5F86B9DDADC233D282F6BE1FBC68F43D8E26F5C888B4F419BB1
            E3ABC8FBA0E344C167098B7F44C2C07B4EF9DE8D3FFE08D593131066D0BF2AEA
            74AFB57FA612C5671D454533C20960BB8E7EE0ACFB76F8E021540E1F84E8DAAA
            1F3DD690C1EC1E64E5CEC0EE997F94849FE81AA450BCBD3FF62BBA46073C6759
            C1005AE3FB3B8D2EF6DDF89552C64F6720C80E052FF4744C0CB68C2A6CAD5D44
            D77685C630DAFBED315E2C1AA790673499AF0B449F162BBB09DCAEF9F692D231
            D1DF2D41EA5D03CF9A9032D3BDFB0EACAFBD00C929423372247ACE5B70561A5B
            60E24E2F9F3D1B514F3E89289288DD7FF855319F2479D174F810BC95E5ACF9B0
            9487F5BCF33BAD77FDD75F41F7DC63D0D7352164FC78743B4BB33130B1EB64E5
            DBD390F4FE34082E375C695DD17DCD16848686FEE7BA39AD5EB701DE874721C1
            D9BAD66D325F7706458DAE82FCC2C8675E884C796DDA1914534EECE5DBFCEA54
            44CF9E0E212EFE6642D515271FB22FB7B2225B4AECD2ADD7963DD01B4F2D6AF7
            67E7A09C26639792FCCD2E5BD815ED9FB9CB4AF2ADFD0725A77CF439BCBCE8E5
            5B64F1BA5CD05A2C505B3BB7941CB5B56D8B472AA1CDC7ACD562EFFFDE83F0D9
            47E8B3F3000C31B18AE544A703EEBA7A7925BF7D12D46AD44A128E8E1E86C823
            FB917E381F1ABDB255D074FC38C4D262785B9AA18E8C86A55F3F089D88F2ED6B
            D7A275EC7044D45601E75E80CC551BA1D106CFA012A70BD977DD86E81D5B8E7B
            A263FE416141D088850595C2259787F55AB1FEB4DC7C3B76EE42235974F12D8D
            4BDC66CB3FA8AC52993C8505159A9B6EB3F45EF23BCE3E96834CEA1DDB65A523
            5CF27C241A4D8F32C86A897EACC9B65B6AE4689FA4C021401B8096FBFEE668A3
            C048108E3C686FD5B3700E9CC8758120FB3E5D4F0464FA86AE51BEDFAC1204F8
            60E4C47E8BD5BEDFFBE93A47214F2601EB51A7CF172BA85469CE9CDC1CD3B887
            D0F3C3B99D12A9B1B4148D8BBE8523FB98ECC8667056DB6CD08484B099015D72
            2ADC5D5290F7C5E7307EF905A48CEEC8C8DA0373275A9B93CAD77DFB355A776E
            87ABAA021A9309968BC8941EFB30048D326BEC387010E5979D8FBEF78F414227
            6D3DBC7C39EA46DEC32BD4907885536F80E5F2AB9036F70BE862E382F26FFBFD
            37B81E7D10E6C24A44BF3B03894F29FBD54A8949EAA6BF219B16BC12AFA1096D
            BDF472C4507B3B4B591B36C24E6D09ADA844FCBA2D88BDE452C57C2C6AABFE5E
            8ED6F56BE02C2C60CB02C6EEE9881CF3200C09CA6EA45CD620870E42D78D2B9B
            DD9131CC98A7B70AA4529DE3CCC9DB9FF8F15CC48D7948B9AFBB76A17EE69B10
            3C6D0B386A6B08621F9E28F73730718E2D733E84E1B5E7610C8F18E655ABBF3F
            F92AAF77943DBBE0EBD8AFBF4697E1A3703A29BFD58123C3EF45F2A635D59EA8
            E864BAD57AF2A1247DAB32998743AB8357F2ADB6D344759655206DDE5788B8BD
            7F507D4CDBE3BFFC8CE6A71E81D6162A2F2ACA20ABD6C07DE238CC175C8CF4BF
            D72902481D09C713E34642BF6E15101DD3918CBC324F02DD7DE430AC77DE85F4
            453F2B8FD3A14328B9EB1698CA4A2011AEAA7406E8BB67A0EB17DFC0D4B35750
            FEFDBBF7A0FAFEA18838700C06A243FAB73F28D69B7D220725F7DE89E8AAF29F
            3D21B67FB43F8FE7157B51F1ABC9CB5620F6FA1B713AE9686515F287DC8D94A3
            FB8FB8C222FE51C725E93E4769C9F7294BFE40F48D9D071EB45454A079C35A88
            4505A45DD8A1B258A126BED54545C3D025595ED4DDBB6E2DECC3EE86CD647E57
            D2E99E6190D5137F697881AF2DB28081F3B042F58C637E1F2EFB884E0041C3C5
            58F878BBBFD9821F1B90E7A34090E578C8CB02323D8A3617022706DC1101CFD9
            7FCE9CC056309B6DF9085EAFE27B69BCB869278095D8DFE2B0BFE5B2DB5FECB1
            712742BA76532462FEAA15A81A3B12120191DA887D825EC70B6A5EAF28864A6E
            31C2EB41BC60D68608660BB466131C8525887EFF43244F7854B1BEDAA222E43F
            3014EED59BA1D6A14C30E98E490E57B4DB819E11041CDD162C5204DA13357538
            7C612F5C31E111843FFB72D0739EF0596FBE06C3EBAF429F9238156AF536D278
            6E69CD2B7F32FDE71F107EF7BD416576FEF20B9C8F3C2087607559BC14510A13
            95B5E8ACE727433F631674A1BAAD344BEBA456679ACB89F4F8C94F2065E6FB8A
            FD3C7422170557F44577D25CBAFFAAEC936FF588C8796A125A3FF984CC27B4A8
            CD9A7D5E49D4B89BBD1719325354197FAC8621352D9886DCF6271E45FC577321
            C52772C8CB3E9C4EF2788638EBEA1675FFE54F845E7155D06366A26DBEBE6A43
            751BA9AFC5AE3A671F6A4BAF5E9B77F3A24C50FE9D33DE8671DA5468E2136EA2
            FC2BE50782A0158B0A4B5517F68BECB57AD3695B331CF3B7F3F14791B0602EBC
            7189BC0ABDFBE443D2D2BC2EE7A3524B4B77024A7EB587C6F75CB7D37153FA9A
            ADB05D7851307DB93F4F4E42C8EC39923A21FC4B62DB7A59FFF512FB56D53F10
            3A614278D7FF7DACD896A30464C5375D89D89ACA4364E2FED2EE115BBA3A4105
            93BBA26E5CE4F3CFE952DE98AE58C7F66F17C03DFE018444477FE6351896C0E3
            EED39C5DF24ECADBAF23FEF92941F90FEED8899AD143603D928B88A92F20B913
            6B63FF9A3568BCFF3E846A356F4B7AFD8B3EFA447A72724BB5FDEFD2F65AFCCB
            696B9EC5D49903A3862265D92F1E775C3CAF84CAAE07A9BE6EA1909C362C73C3
            366815B469166005DF2F44F58B4F43AAA8F0C04D53900C581A6C8DCAA4834065
            34A1E1D065F6828BA380724FB0053080A8FF9B02C8DE0F659FEAC970534A3C81
            95A4CE7074B4FC9514CC51ED41966D9E4A20C88DC91CE48F47E4F58F4044DC4A
            975F55BA9B2E25D1FA03756708876DB126CB9D7317151E37F51FD83DB3138959
            5E538363575E8CD0BCDCC3AAB4D421CC070A0B2DE110C5442F07243B1D933C46
            D3EDE91B76C01C1B6C82710CC6FE91F7C1F0ED626832BA8C27AA7F4BF5B5C8A6
            6573F3BB624BF3533DB7EE83B15BF7A0B2058D4D3878FD15B8FAF99760193438
            E8799B9FEA41842D5EE0465CBC5EE603B7FB46774BCB0A0695907EC19AE4B6AF
            BE8477D283D08758D1EDAFF5B09ED327280F3B7A0E8C2613EEB79F9ABD71F1BC
            1E28C7358935D5F3610D79A037B557ABB058769C34AC63979E87CBA7BC8A7005
            8D97CDA47D733E8063D2E330A7C4CC87C9F412D1A2428E4450A906B61ECA5D92
            F6CD97881A717F50593942E285C98898F31E19585D2EA63F77E03492D4D2FC9A
            D7649E9ABE6A334C09098A7DDD3F722822972D29F3C627F2DA00C152DD47A2C9
            FC48CFACBD3044765C06E076EC79F23184CE27F99FD885A5415EDB8BA4E7EC79
            85D3937F5F8ED89B6E516E0BC741076C826141B9FE7FB311F2C68BF4AEA8915E
            41F8F65FFBD3D8305588897B2D63DD56E814DC053C910E0FBD07112B96557B63
            E2A24E3EE039909DD718377D86B533EB65EFEAD56826200BD36927897AFD9CA0
            0C5EAFC65954E84CFC789E10376A4CD0635E9CDA3EED4D18DE7903BA98D873A8
            2F07892EF18EE2929294790B107DDFB0A032FBD612789202622EAE44DC17F3A1
            542FA7EDF4CCFBEC249822224792F5D0462397F323474DCD235DD76421E2FCBE
            CAF422600B5460784E664D7909511FBD07754CF48D5E9540AA3B047751C121DB
            A80733BA7DD489D5B8772F6A2E3D9F17865ADDA929ACF57C447475511FB574F5
            243996EE75BBBA4A0D0D1769743A8B2A32EA17BAF789D7E7E631BADDED9D266C
            DE8F57780DBB3CE7FB7EB39FF549853C8C8539BEDFCCB3C540903F26BD3DC8F2
            4A61A0679F7985250C4BEF14F819B9636AAF32B3587D4E21CFD3F4E6F73C3E90
            A5DF3D1D39F98712C8744C181B6C3A3294EEFE780EC4C993608E8ACE115A5B76
            78D502DBDC3A5F273C3E5E7251660769074DEEFAE6AB7443EEEB92B1E07B28A5
            E3070EA0FCF6EB11A1562D168DA6FB3A3080C3C1B1267332566C80410164F3C9
            AC393E7420AE9DFE0EB41705075694927977FCEEDB10B56D73B6181DD343AEB3
            A9711A22A25E485FB911C6A8A80EF9B9E13BDE7E13DA17A7407FC9F9C8648DCB
            141C5C56D4DC821377DD8A987DBBF692097BD2C12B39EC8F134ACC96DB9BD635
            A85C4E6E2E721F1E836BE77C0A8D42244485C38523B75E8BC8BD3B8A491B4D0A
            D84091E9CACD3F9CF2D5B7881C323CA82C83DBAEC94F227CEE87046E49A7ADC9
            9260F851D7BBCF3D99440F4161C754416D1D0A4990C51C3CDCE0890CD9C53B98
            9A2B9BFB5A1F7E40C8F8F48B20CE2D2793F9D89D372172FB961C312ABABBCC36
            826070E7E556EA6EB8C5DAEBD7E5411A15F7F2D8679F20A15B3758AF0B366937
            FDF61BBC8F8EE530B599A24EAFC4C72793A7AC64B5F1FA5BAECBFCE937C5E705
            D535C8A3B18B3E7174B3273CE21F1FAF285DEF2C2B5B954ACA4564FFBB82E9C4
            F4FDDFFBD03DF114F4D196E35E41C531BB4695240930181D6E8BF52BB20ACADD
            B5354BD37EFA1D615707BBC559E8EFA7F10F5BF48DC79B90C82E9D72D2C44779
            5A5BBFEEFAEB0A845E747150999DDF7D07CFC407643539EDD795646D5C199487
            57797611289A3F9809757CC2C5A42CED209AC7BB8FE59698C6DC8FCCB9C10A21
            4FD4EC39B39172E9E5305ED051E397A33A08B40D2F3E493A83ED0949A3E1D5FB
            30E2BFDCE897A6867699F21A94D2DE63C77160E2C3C8D8BADE13A2D31678AD21
            5B3D46E3324950B35FBEB6B331937C9B10F41D3721EC42DB6EAFC0C41AA93F1E
            9C77A906FAAC180BDB9B7ABC2F6069409E5CBABAB507598E010BDCBDF1275DB7
            FB7EB336A9B49A3CB4DD7D8E2FBC4621CF1564E76C6680E55D5EA4753EE2B1DB
            3FEAFED73A849C736E5066A6D241D20222972E416D664FB4C62540EDB02B534E
            DE41A38576F74E643CFF22E29E0A9E1B3C983B3E980DD5CBCFB0AFF176628E3F
            DB3F17EBEB3ED1A4A48DCFE4D02205B03B41005DFAD66BB88A25AB82E628FBA9
            06F7477465D94F9E109BEC1BF05456FC61B8E0E2DB32FF5E170410B2E6FBF038
            583F2325F29EFE48FFF157C5E58863870FA37CF05D886CACFD4EB4584F229E54
            57FB91D0ADC72319443F9D82EFF9C8A64D685CB410FDE6B0391A5CF3E1AC2CD4
            0CE98F708DFA7DD1607CAAC343B7FB3E5763E3F7DDD8ACBFEC8AA0B23C36FB1F
            1A83881FBF757AE312589217E33492BBB0609FF5BE117D7A9026A5948E1C3A84
            A393C6C3666F85A43740E571C3DCE73CF47A6B06AC01AE02B90FAB56A1F1BEBB
            600EB3CDF66A756D5A86CBF9BEBDB2EA89B4951B10A5603D943534E060661A2E
            9CF92EC214B4F43D070EA27AF82024D6D72C2730BBED5FBA23B872F24B22263E
            1A9BFADE878A190EEFDA2DD715E9689EE731591EF4DFF73A1C9344D1F341F73F
            D7C2AA1017CDDACC86B75E87B870013471F168DBCE42D6964E0FBDBD056115A5
            6C15AC934242AF4EFF7B9DCAA4E03B2FB13B903DF07644EFDC7A9084B36CBE4A
            CD8DD3610D7D8E4D707D4447AB80DD523BA6BD01C3D4A9506776458F959B6052
            B006D9DA3848D660E4EF4B9AC4F8C4186A97DDDBD2F4B3D3E1BCBB47D61E842A
            08FCFC9C1C9C20ADF3D2C53FC37CED0D41CFB7AD5B87D6B12310E3F5CCF7188C
            AC3D5A08644B625E792D24E985A99D0EC0BE9232E4FFB808C2FAD5301C3D8C90
            EA0A84B08562B16C71992D0B2441F88A94AF935BF3D87A564B525B54014EC6A3
            B29B93A3A5027D12CCD3296893791C4ECE8B5F812145ACCDB53709D8BFF24240
            1EC6C5A1ED41566997166F8D7DDDF7FB5DBA9E4270622DE284AF111C4613683B
            35A9DA3A63E70D08229BE7F575F335A95DC764AED9A2B8329A5B528AA2FE3722
            62FF6168162E8266C040A8EA95D757D41A35EAB43A148D1F872B6FBD056123EF
            0FCAC3CEE27D0F8F45E8A2054ED2BE9265D3B85DF29496AC34DE70F30D19A419
            2881DD81E5CBE1FCFD675CF8F1E78A6DD8BF6E2D1A470D41A8563D990062964A
            102E741CCA5D1FFECCE3A6AEEFCC0ECA5FEC70E204696121AB3620FCB9A79032
            FD5DC57AF7FEB51C2D6387C366344E9174BA37DBB5F72FE335D7DD9CBEF42F45
            FFD7813FFF80EAD001F49EFC7CD03359E0CCFD9444EAE330C6C4DE4BA6E44F1D
            9EB7B64C918CA6D77BFCBD0166850D03A52E0F8E91561FBD6155A11815C363EF
            C2A953B83327BF34F69557F5492FBEA298A1B9B111E54D2DC4EE1A786922B02F
            2E2632024AC172752DAD3876D355301D3BEC454C5C2ABC5201D44282FB786EB1
            71C448F49CAF0CE47BE6CF43F3B80791FEEDD7885658103B5ED7809CC10390B6
            6F478133323AA5D3DE4852374751517622016CFCC3CA01F7BB7F5E02E7236348
            43B33E2D69B4EF9D2CDA503F57484C7E28730D592FE6E0A32ED8A42DABAA4233
            69EA6ADF9E7F81B44BA7D98A82F97311FDFA8B5049A24B7BFE05BA0C1A23B53A
            9803B27372513AF03644D6567D235A434691D593E03E9AB3C978C7AD29994BFF
            0CE271DE6378E08191B091F5A2BDE14A64AC582FEF2C0C4C850D8DC8218B2DFA
            C8FE3D6258445FE2F374C791DCA3B6E726A3C7B499C164A26BD71BAFC233F535
            A4AFF80BE10A8B580772F2503A6C20928B72B7BA42C365C9E82A2C381E3EE6E1
            EE691FFC7BC40D335E81DD89AA7D7BD1B4733B1C599B61DCBD1D711525D08784
            E4392C211369AC96CB74558E2A6005729942D5EC07F7873B2959F89C58B0B79F
            DC6B7C79DB270E22F89F1F64D959928FB685ABF6899D5AFE9513A545B1E374F9
            C33858EDD9A8D098B5345CD7F1E4E6D02DEEA0A7B86893F9F601976774122F79
            60FD7AD40DB819A1F17138677F7650184B60924DD8C10371D1A4C760BEF29AA0
            E7B2393FE05644EDDC924DC0D023E0B1E0CCCBCF8F183F3129EDFD398AF5EFFC
            EA0B9872B2D1F38DA06DDA727F76CEF9001AF66F465BF6486AA1CA59D178536B
            7C24328959C3328363188F6CDF8E9A7BEF80B1A80A71733F41FC83C12E21A6D7
            F64F3F81EAC5A7D8DD70AF57ADF683A1D659909F1F39E1B1F8D4594AB1D10426
            5FCD4798C7839471C1FE585E90D9FDFC64583F7A0FAAA42EEC08EEB07144ACAD
            F94E97DE7368E6EACD1034C187F7E45556A160106949278E6DF684855F81D349
            9278A9A3AC6C4BF2FC8588B967F06915E92CD51414A068DC4860CB46973A356D
            88579296CAFB3D5B5A163B5A5A06F7D8BC1BA13D7A0495AB723A71ECE66B6158
            9F85B8196F22E1D99782F2B0BAB267CC2874F9F5074831B1295EA89477B549D2
            6DAE8AF23F52BFFF0511B7042BBCACFE6C9F3513DAB7A6401F1B7B935725ACF4
            3FF39414AF33DE72FBD5998B97E24C12F3D9F6679E8061EE87E522196F214347
            25749FAB1C03BF9784ACF39E3B1066D0E58846D371776DFD65A4E9D8D27E5F81
            3885957F768715DE720D42F61C8679C23874EF4499387AF0102A06DF89C896E6
            2F448B65ACB7BE6EBDDB68BE2A236B372C51D141F98BABAB917FFDE530EE3F8E
            A42F3F47F4FDC1919DF94E378E90D04EDEB0BAD1132DC7B3D9257BEBA744FB87
            3337EE80213109A793D8055742842F20B0AD5CF41DA27E5D8C7897038ED0F081
            345E27170F033621B0E2F29242756C0EFBA5869285CF8905C256DF6F9696ACFD
            06EEA362BCCCF2832C4FB640DF1AB79B3BCD16226F9761B53AD09666C7F748DF
            6F46F6F7109C6690DAFE3CC7C73A192CBD5E933337BF38EAE9C961296FCD8452
            DAF1CD0238468D46DC9811E836FF9B531238F7E85114BF3819577D3A2F28E485
            D389DC3C1473D84979C96F1E5B68A0B69E46A075226ED607AAC44E82D6B3481A
            2784DAD06552B0EF9B89B4EEED69F07C331F1A5BA8ECD6D0A56722F9E55791D4
            3B38928DA5EF9EE79F817EF6BBF098F5E8FAE332845D176C46C960F8DCD308F9
            64362FECB4F70FF570E6E71F8D9FFD912A4161DBA30CFAFF9B8DB48C7444DE7C
            6BD0735E453F387C0822972FAD9162E33954A9C3C6727771E12ECBA0A17DD3BF
            545EF739B27B37AA48F38870B47E269ACC9DC791B54B5E8F7B8CA7A9797EB75F
            FF82EDE24B4EA748A769DBCE5D28B9EF2EF46E69743A2222AFA009B493352AE7
            D1DCA3D6271F43FA3BCA8267DFA2EFE11837021A97E4091FFFB026F5834F1569
            BEE9B5A988FCE01D68A3A36F2570FC4BB13F0EFB33925AF34E8F3FD6C0AC00E8
            BC6574DFA3E361239E407C6232A98EFE53D7D4ACD1473EF658746A27EDEC2C15
            353421B7FF4D883C76E8786B6D9336E6D55753BB7462156CFCE61BD4CF7C83CF
            23900FFAD1262422FEA9E7D0F5FA1B142DB5DD9F7D0AE929D2C81D1262A6BD89
            A4675F52AC77CFEFBFC33E5EDEBA7E8757A73F603F925710396B06D21416F018
            C4767D40BCFBDC93EC9875C7BE32559BF872B08F955D103B1E9F88F86FE6F1F6
            5AF68DEE5109EA54574951B6BEE739EAD4790B60CE3CB3CD168C769B7F5C82C8
            A9CFB46DBDB6DA92088364B75600C8B20F5729DEACFD4E3606E840E739632203
            A7DF87A9A460B201CDF8E9F0832CFB8C3E0BC8C4ABC67E0F39A3C04A04A7F6E1
            5D1C2670AF429EBBA9834B3D3E905589E279CED2923D89733E47DCA8E09D1C72
            68CED49720BC310D3DD6AC42C4B5A7DE05B67FE92F70FEB408177DBB58F9F9BA
            75681C4DE6BC469841E67C471B5A926E27AD6459675A094FBC1D8F4DC47937DC
            005BFFBB15EB2F2D2F47131F0EE670C8CE9D98D4944ECF05C839700095B75C0D
            8BDB097764B494FED73AC1DC2539285FA504391E356AE5B22A31363EC9471A6E
            EFADAEB2B23FD37EF815E10A20CA2BB687DE780D7D6E274DB9EF0541CF798129
            8F17E98E1FCE12C3C2032D93100281B298975E367599FA8662FB77FDF4235C8F
            8EE5858AC7258DE6039C46921A1BDE55C5C63F95B17203F461E1A753A4D3C412
            61E552EAFB5313100DE92F97D174ABB7A1FE7797467B47C696DDB0C607472ED4
            8A120EDF763D6CDB3667B9A835963B06DEDC591CE8FA6FC9647E7612422CE6E7
            C9CC9FA19447ACA9FE5293D1F3FE8C151BA1D5076FF62CF388383AE80E446F5A
            572092467CF281D7DBC35954782C61F6C7881F371E67920EECDE8B863BAE45A8
            5EB7B9B5AA263DF5AB859151F70C51CC5B55558D3A970B1EF651D2FFD1DDBAA2
            33AA97D5D523EFAA8B11525122B53A5CAED4AFBF3744DD1DBC5B8B85F78E0FFF
            07F5D467A18B8BEF2755554D96E213EEE9B9650F0CE6E0758CF2C6269CB8E14A
            84E665AF71385A85B07113AFE9AA6029B292B2E1038EEA78098688C8D15E4190
            7D3D2AB5FA1A6761FE527558842D8A6815397A2C0C49A77FDE0523DCDF334900
            BCF7160CB6D09724B55A8E496B07B21C45C5216381BB7498C578919D0D6436E5
            D89A09642AC6C2F607983C4DD7AC803C27CF3DF083AC62102DDA409413874928
            CD3A7F080F0B485E494B0978CE8B8B292ADE2842202B1F08238A7712A8FD96BA
            8840EDE6605063117160C410D87EF809D11F7E00736A1AA496166869F258FA29
            07D567CD9C0E5BF611F4FC5CF940A6EDF3E7B5859D44468D20B37B61FB67DED6
            D6E7459DEEEDF4959B604E0E06BB2A62D2A3A495F49BF404740A61566792AAC8
            2CCBBDFD7A184F1CAD212DF0B0B67BFA1599AB36A9D40AEE907C3E37E1EE5B11
            957B7C93181A7672A9D76B6F9D2CAA3533D357517B5382F7D1971388164C7F03
            FD9E794E51AB3FB27B0F69A27723D2D1FAB9C764EE18DA2149FD1CC5C55B53BE
            5C88E87BEF0B2A2B9BC133DF86EEADA93C1ED79199BE16A7913C65257F18AFBC
            F6B6F4DFFE56F421B356D1B8758BBC5B4E6530B2A608755C22AC0AABE09C7225
            2F0E0CEA8FF48DAB0FB963E3A6380EE7FE1CFED6EBE8FAC214C5FC87167E03C7
            885130C7D9F2DCF50DD06464A6A66FDB27C75306A6ED9BB7A079DC70C4B5362F
            749B2D2394EA7397146FB30E1874718F05CABB8A738A4B50C482ACAC68851862
            FBC7112989035C95954BD37EF8ADD343861C151568DD9E0535B7CD1785C1F4C9
            F9F30F60D102684DE65FDD2EE72DDD96ADD2DBCE530E973ADDD444743C3AF00E
            6856FDE952C7272C71B7B4DC45F51A6DE7070B6716DE7B9E7902D6791F1D1312
            127F701CCD9F123BEF73747920D805C0ED3DF0EE4C48C4838684B06C57799DC1
            70FD55493DFE5EAFD88ECDA4218B93C621522DCCF2E80D93FDF7096853C4FAFA
            59EE8A9A41BAAEC9B05C790D2C975D21E38039B3174E95B61F3884FAE103D1A5
            A1E62F97D92A6B24ED40B61FFE31F7DB278E24F0CF37B620F72BE46137437B66
            535230D9C520C711FB41964DD1C0563383F90189E354EE0C78CEFE729EC52C8C
            FE75D70423B07F13029C8E8992DB33A7C7B255302B805671530BB207DD8E9803
            BBEC4EAFCA2892B9E36812113B6E24BA7D1EBCA0C128BEE9F147916C3523F5CD
            60C583C34E76BE32450E3BD1C4C65E4A266007C28A95157F6ACFBBE0D69EECEC
            57082D3AB17F3FAA66BC894BE711801BCFEECC02170175DD2F3FA1F4EDD779B9
            B55293D865B4ABA86094F5DE61433B5B6D3F4C6679F5D0BB11E1B4CF25406E53
            7B542A02ACB2F5BA0B2EBCAAE78A0D8A8B13C7B76D43C3375FE2A2399F2AD6BB
            6BE952381F1D8710A3FE5949ABEB702886D7E97CDCE372CEEE4E1A5A88828926
            2F908C1E8EB05F7FB07BE5D56534E1D4497015E69F087FF091D4B4F73F52CC90
            73E4288AAEBA08D6EA66784334D40E0F786355E2AC7790F0C43341F9F9A559CF
            3E8DE82F3EAE24D3D2E3898A89EF49A069B4042F24D510FF6C1D791F8C9BD691
            3E92084F4323AC31D1B8F0F715D0464406E53F4400594C744F3E716C9F2B2C5C
            E17C5195D59597971FF9FCCBE129AF286BFB07376F962777985A784FD41B9E3E
            49DFD6D6174483715AC6F2B58A07CDB0D5B4EF8947A1FEDF4710F8E4DD76FCA8
            3399A08A88FCC8D3D8D02A44444E669FB92EFCEC0E14E239D3F0D79F2821BE76
            EDDCD6A84FEA324E6C6C4C106262DFCF58B3453E5E333055102A1DB97700A2D6
            AF3CEAF2887AD539E7A5F65A9705ADC29C292541BFF39EFEB01E3F0C6F540CDC
            353588A4B97EFED2E524D882158A3D070FA166C43D48A8AD5AE5B6583B9AEF6D
            3C7EBED4D438C25353730BE1634F7574144C7DCE43F8BDC3103D6234A052DE2A
            9CC3278C0DB90B4987F61E768747F462F06790D5B4816C6707BEF02AB49FE93A
            3B8785B1B0FD82196BBB816AF6C9730F18645935E69D544141B4685BD8622AF2
            697A816A11FB33FC529A0F4EF84AA1319F53A50F89BEF8584EDE96E697A410DB
            9B19CB56C3A8A0391ECFCB47E93D646A5594ACF3586D83C9C4BA8C4CACA5091F
            7E86F8310F06E567B360C780DBD09BB49ED8975F0D7ACEFEB15D4F3E86882F3F
            852A3E21C6DB16FBDB960421C57928373BE2C5C99AB44EFCC3BBBF9C0FF5FA35
            38F7AB8538DB5442A6D386C17723E3EFD5D0F54A9D2F7A31CE999D571333E5E5
            F02E533A31CB97FC04D7C471BC3A3D84CC72D9B65509423FFBA1DCADD1D35E47
            4A275ADBCE4F3F8696DBFBFD4F8ACFB3162C806AF2A330DB6C23BC1ACD3F9D62
            4BA320FFA0EE92CB7B659259AFF4BD8A829A5AE4DF761DA20AF33678C2C24FEF
            CC3F952AD999939713F7CE7BEAC4494F2A66D9B178315C8F8C812D3C6C36F5F5
            4F6A4B9DA7B4E4350293DBFA1CCE8310709A13DB733B5E7A01A11FBF0B77831B
            D1733F467227A759353737A3282707121F882E9F572D222C34140904B42A0580
            28728B383862309257FFD9E4898E6506AD0BC8729E33377F4F97CFE623A69380
            FD1D0BBF85F8C47858C2C31F2233F5E42A925853FD8D36B3F7888C957C2E4030
            D89489120EF5BF05715BD61788B1716CB3B73F649637CE1CF794972E345C75DD
            B04C02ACB33D504836A5273C8CC44F3F43788F84BD2EADFE7C4F71D1F7C6EB6E
            BA2FE3E7658AF5E69595A380B4F398BCE3F6C6FA1663D2925F117F477FE5FAEB
            EA505C40B863B6C8DBE04502B6A88808C4464640E9AB12D91CD5711F09B6BD3B
            0EBB2322C70A1EF7F934386EA21D2B7F1CC7DAFE247B93D7E1B8D55D5D39C1DD
            245D1FFFD42424BFABECB5CAABAA46FE4052D84E1CDBE6090BBB84FBC5202BB4
            812CF3FE308562BC32FBA3EFB79285CF328ADD077E1C61A7FCB1803CDC5EE61D
            79071B832C3B757F09C8C4BB18DA02BC9517C538313AF803D938205389CB1FA4
            8ECD0B00D9970964DFC8F8730D8C0A3E96A364261F1B700B7AEFD959E7E89238
            44F27A235D3535DFA52DF90361D704075E973A9C3870E9F9B860D468443E191C
            23CB9AEC9A57A722FEED37C87489F9D2ADD73301ED34F8BDA492E2C9768D2E39
            9D63FC3282BF02C294DA326A2852A3A2D0A593816CCA3981E6756B482B3F1721
            17F753CCC333654B6109AA1F1ACDC7C9D538C322DE721497BC9A32FFEB906885
            807FD92C7F673AF46FBCCC66F963C4F5BBF953319EBCE267DD49F111995B76C1
            A270B008F775EBBD7721C1E302EF34534AEBC834533D701F12749ACD765B2877
            AA4CC56E9E8686D1CD650DD7277EBB0089C3472A963D40DA4FCB887BF9D8C0A9
            04D0CAD2213049D22DCEB2B2E5698BD9E77D7BD063F9E8BC5933FC7DEDED55A9
            0EF1C9FF9EEC9C9DBA4B2FB980CFD90D044359A37E782C6C9F7D012F8D7DCF8D
            3BA0EBFC33466794B8EEEDCF3E83B8CF3F04E2E27941A3E3A777DCAEA1AEC6A6
            EFBA2DFD0BA1975E16549E1DE71CB6647CE74DA813933A94779714EEB20E1ADA
            B7C717CA8B8A1CBA58C86E8692C20DA2CD1628C4B88371AEBCFCADE10F8D4F48
            EBE440A1D6AA4A34FCB94C9E5BA10A0BAA9C7852EF6F68C2D1C71F41EF654BBC
            5274CC58475EFEFD91E3275E95DA4984CD21B2906A47DE0B6B4E1184DB6E442F
            B204FE6F28DE8644FBC63D802E3F7FEFF0C4C6195A9B9AA0723860247346A312
            2A048DA642D2698F41AD2922217C843766A85A5A06365634DD1C3AF12164CC51
            DE197664EF5E540FEE8F70B7E3338FC9F2B0C617C2E55BF4E2B0D3C0C05E7EC4
            26863FAA44699BEC5EBADA9FFCC4B1805FFF5B1E06D94E83687DBF9516C538C9
            5F39F0FDEE74D7044DE0831D40D6E594DD05E97FAD8349C124E5E5BA15DF2E84
            97265D7C6529846617106943CF9D8714B763E6E417E044DF9E38EFE9C98879E9
            55456267EDDE83BCC727206DFF6E9A8C821C8BE82282BB621390F4DE8748BBFD
            4EC5722575F538724E77F49D310BE1C347073DE7B6EE7CEA71A8DFFF005A32EF
            C2478E41DA8773A1522BEFDE5EF6DD7708232D32542354399C2E7DD7A57F8784
            2A1CDEC2137DD7904108FFE167A84275F2A73A9CBC1539A52BBA7E3C0F890A93
            9B536145254E64A422E5AA2B91F6ABE2C238B2C994DBF6D463E8F2EB8F30F3C1
            217C189A24C26132236CD2D3E8F9E214C51394587BDC3FEE7E98177F43865172
            7722E2099C46F23AEC4F90EEF07E0F1A6F8BC24A3CF7F5E0F0C188FCEE477863
            AD47485BABF2D4365E48168829F5A75F91A0A02D95B8DCC8BEFD3A58576D42CC
            8F8B91F81FC3C2DA275EE059FFD95C98A63C037368D804D2A63AF85DA4969637
            791B72FA9A2C18E3820FFE91D714C68E46D8CF8B5A08A4599B693B064FA50A75
            E5E41544BDFC4A48B282C5C569EFCA9568BEF52644F0072A0CFF30116FC81368
            8CD4213634363791C2F01E12273E1E545E8E81FE680E1C8F4E82494F8AE48D37
            C9E77168153673705ABD790BA431C390E46C39DA545DAD8B9FF5615AC278E573
            3F76FDB018EE874641ED702179E53A44FF1F1C5EEE4FAC1C6C9CF62622A7CB67
            D4A2E5D167D06A0D816BF70E780BF3A1AE2C87868057686D81A6A559FE0C9587
            6861BDAD3F325F7B0BE64ECE26DE35FF73484F3F0A435CEC5049502FD2F22767
            F8CC82B6EDB04ADFEDE283C3FDA0C483CB110981939911BDFDAA254BA5C06069
            C6CB9391370CB2F968536DDB27F623F9C3B178FF6EA05DC49148BCE2CD2A333B
            8638C430706EF2BD783E14A63DC812C75CE42C28D89EBA6031223B991C3CA1F7
            EED90BC7D62DF0E4E521BE7B37F41EFB90FC3DA6C07460E346545E7D15D2EEE9
            8FD4CE8E21A46B5F6E1EAAD7AF83A6A8001A3E6D2A3919B137DD8AC49868C532
            AC4DEE7EE11978A7BF8B9E07F7C3D22B381C8B77341C1A7827A2D7FC75440C0D
            5BD45250F55AD72F3E43CC030F2AD6B9BFA40C45F7DE89B47D7BE0EAD60D1904
            12FA802DB79C1A5C2EECFA943495827C082613344623CCDD7B20EE96DB106B55
            FE5623DB307B5F2659F9D674E8FAF440CFCD3BA1B1281FC177A2B61EF96B57D3
            E01F8596DEA58F8E46C4E55722A54F9F4E8FA83BB27A151AA8ED96F0B0C5924E
            7F1F4E3389BCF1A44BCA98CCB559723F8268D8DA8AED4F3E0EC321521AA8AF02
            4D226D6C1CE21F7D0269D75EA7B85076ECF011945D702E22FAF646E6E6DDA775
            ACDE99A4AC55ABE01A3702516AD5C71EBDA1C304F25455FEACEF7BD1DD3D1576
            F2712A6E69C589BB481BDDB7F3801819F5CFA203F1BD23BF607BCAFC05881EA6
            6C29EC59BD1AA55F7F0193C5DCC1ACE6D3BBDCECEEC8CB816DD96FC4E73F23E2
            CEE02DB9BC38C587F784CDFBA851151BFF4E734EE933092F3C634B9EF68EE2FB
            723D220E0DBE1BDDD7FD2D364B905217FDACEDCCDAD831633AD4CFBF00CBB041
            E8B9F0A7FF93B38FDBA70D8BBE8730761842BB7547F75D87E5CF02F1F6A316A7
            0BCD955570D7D0D5D0002F0919FE449135AD1B1292123B3DC89B85F721C204DB
            AABF786B31BB096BDB1D0CC36E0225FFDF57683B3B9B939285CFA9FD21DD0C6A
            BCED39508AB53FF74006598E8AF67BBA79B995E9C748ED0F52E7FF03F7FFB1E6
            7AA1EF37AFDA29D9A68C787771651D4096EA7715159585F4BF2BA6C74265BFA1
            3F3138B2B668F0F54629ED58F035C447C6F00E0F646EDF7FCAE065AE8FD9F754
            E7F2676F588FAA1BAE85AD670FF4D8BA175A43F099A479155528B8EB1644E765
            FFE689881CE0CACFCBB2DE72FB25E94B9629D6C966D1EED12390B860213477DC
            884C32B914755ED25A9C825A666E956F504E752A7CF6FAF5A819741B2C564B6D
            6B79A535F5EBEFB4518387FE6B19D62058FB39D5725E2569F427AEB904D6E27C
            D11B97100F49AAC469264F69F166F3ED032E4BEF64ACDD4E272A9B5BE022ED44
            723AE4EF5485C7C722ACB3FAE8DAF3D26478A6CD42DA9A5588E924C48F79A7F9
            E001A8F8D8C4F6AE04F6C79160319090D545290BD8FDC78EA362D840245594AE
            7585D83AF8A8DCF9F98743868FCAECDE4924CBB1A3C7503E6400A26A2B7FF058
            6D2763ACE89D23DD2DCD0BBAF1D9019DB895DCD4B666957F23ED3F495E38A6EB
            E03B331036F50564EE3904B3827BAB42F2E2C8E00124F4FF2EF4C425248BD555
            1F90809BD473F32EA815BE52C0A0BC69CA4B887D771ABC71F1E8BE7C0D591BCA
            0775EF1F350CA66FBE47DA810308EFADFC9924FEF65CF3BEBD6D0BB2ED5D3C4C
            738F1BC6D4AE9D6AD53BB2B6A2AEFF4D48E99288EE3B0E2AFACBCF241D5EB102
            4D43EE843932F27351AB7B48FE3C19F1828FAEEC26530A8A67DCF3FB1E942C7C
            4E1C20E05FE4E7CEF0F65A3F9C309179F8D8ECF51F1C73CACFCFB05FF6B8C2FD
            F62A334744BFAA9087C317DE560059FE68DCD3CEE2E25969DFFF8488FE677F58
            B71C53FBEA1498664FB78B2E8FD146A0D2FDABEFCEBA3E7F2ADABA550E78D716
            54C03CEC1E642CFC5131DFE11D3B504D923DC2E3FC4C349A1E965A9AA931A6D7
            335767411F1F1F949F270A9B45D697A62066C258A47D3C0FFF17A978E74E94DC
            73078C2D4D55888DBBCC5359F199262EE1DA9E597B14B5C73349B53535C81972
            3734591BA1494D1BE09524F94414AFEF8A20ABD64D3FEA79D536789557C7C1F7
            514F3E15D1D9D6E1334D397B76A1B4EF8588B8E30612522B15352A6ED7E12FE7
            A3F9D1716D11046A4D87A7CEFC0AC4BF3E05C9535E577CC709D246B349C34BDD
            BEB1CA15257F75C1BFF012EDCCCB2F8E7D7D9A3669F20B8A65F7AEF81B2D6347
            C0A6D7BE461AFFABFEFB5273F34C5548C864763318A295C1FDDF12F3CE8E2103
            11BA730B320FE743AB5710FAE5152818485A7441EE7AD1167A0D3C9E01EEFABA
            A5EC3FB65DA6BC396FDDB7DF423D7624C2CFEB831EEBB7292A13A524F80EF4EA
            8AAEE79F876E8B95AD45B6FC0EBE331D4EB2A63471D11D3F03EE95E02CAE44F2
            9C0F11DF893BE210597979D75E8A5E315148DD785A07BB759A2A6A6B9177FD15
            3017E73BBC3171A992D75BCEAE02C33F07C370849192A4933743F87E2B7DBD96
            950B7623F877E60AED7E779A4E05B28C808C306CC1FB052CCF5A0EEFF247FEF3
            DE60A533E54E1EE4CD85E4730BF81C59D9C12440ACAB3D22793C19EC3608BFF9
            DFCEE2E83CB1FF8B1DE6914B161E2062FEED2C287C268698BFCBEB6777F2BEFC
            11459A9C952F3F0B83A3B5D1E574D8A3263D1D93F2F62CC5FC72603EEF4F0FE5
            C07CED07A4E15D43C2636DDA2232E7EE18A05866FD4F3FC17DEFBDE8F5CEDB88
            7BE679FC97C45A5DF1B70B50499A9DBEB9C121C4275EE615C53D2AB5FA52476E
            CE163E69AA1B69907CC0F9D9A4F2F56B51F4EC13501FD80F6D5ADA935EAF7736
            6B25220D6184464034997459AD7684D078C6D1EF720F036DBB0A24A997A3A8F8
            60D29C4F11D7890BE58CDA73F8100A06DC09D5893C74A53645F43E47315F85DD
            8EA3D75E8EF0837B2AA598B829B213DEFF492515445741F92B110F8D4B4AEB64
            FBA87CB6EC848790B87801BCB1B1995EA88ECA0FBCD255CED292F5C95F7E8FE8
            81F72A96DDF6E9C76D5BA1A3633A9C0BE1A92CFF5DDFEF8A3B7AFEB1F2AC4CED
            62BB0347FAF5415A4C2CBAAEDCA098E71009FDDAA177235CF47C221A8DBC1D30
            D691935F9238739610FFF8D38A65B66FA732375E81F46BAF43EAD2E58A79F804
            BBFC4177E0F25FFFEC343EB590003E8FAC9DF08A926C293C62069FB98E3610E2
            EFBC0824D866C44E79C1D6A593736A8B490BDF7DE5C538870CA5CEDC7EA7936A
            727290FBC03068F7EC803A25ED0E9A0F7FF8CF90D5F257B2DBB44F362A038D59
            36FB5933E269C5963D2F7A45FAFE66FE613F1D6B70A7770A7CBBA42A4E6F33AF
            FD9F2DE7C46ABFA3EDB3F7365FE5FE2F33CA5FBF465B4897FFB3348508FEE617
            5B22F2A9F9F2876EA8BE28BD0EA256830A971B4EFE7EA24613E7AEACD820B9DD
            DDA2273E89A807C691399176CA06FB13BFBCF0440E8A460D41787EF63E313CF2
            3CAFC3F18EABA8F499903B6E47CC634FC376F5B5A7C5D0FCC9E9BA75AB51F5C5
            6770FCBD1CBA50DB1FAAF088D98EDCDC6F53972C8B89BAF576C5729BFE371BC6
            979F822E21E9069A502C50421CC7F24BE3DF7ED39CD8C9D6C47DCD76E4F64CC6
            2D5F7C03E30DFFFEB9F9CE92ABA585DABB06550BBE40EBEF4BA1B7851C1022A3
            861343B5B978DA0672A4332F6F81A1576FC43EFD3CC2EF1A04B5E1D49F61F148
            92BC31A072E1D768FAF17B68DDAE7A7542D218D206F84C4E84D0F318D25E7338
            06A6B6111F57D523C362C61FC931E0C09812B7E7A4462B9BC84D8D0B32D66F87
            45C1BC3DDD24EF4BFF621EAADE7819202D34E2EDD790F67CE72734ED59F43D5C
            6386C19CDCE55949250439245DC5852B426EB9F3C61E3F747E7EC08A055FC3F6
            E40432372346496A8DBCB7DB6BE7453CBCDF6BCF51E8153EE7C39655D6CB2F22
            74F674A893BAF4A1C9ED77B9699CD9F9D991CF4E4E49ED2454F054E9584D1DF2
            12C271EE4B5311D7C91180DBFFF813E2A87B608D8898286934F289E0A479EF0F
            1B3EF29C6E9DC463F30EA25DE764E0AA010310F3A6E20637ECFAED37188AF2D1
            6BE2639DB66FFB7BB320BC48C23E2D793009A520D3CF7922FF60E4430FF64A9D
            F3996279765DFDFDC424A417E622FDE73FCE5810359797A16AE102547FF63134
            6525D074491EEF95BC73BD5451405401EF02513AC99E17F1FD5FA46400E6B526
            86197F181D635D15DDB0EB89BF13B56AF9109F065192150BC64FBB6FBB6E60DB
            55393E4DD6FF50F6D15125D1A4A99453052D5451E0C282DF54A4741BFE893068
            9F98B9FA70EB6CACE5505BDFAC6B86A4D561428495EA17504893D1A5126CAAD6
            E6F75C251563B4A95D60B9E472187A9D035D972E047461270FF9E54396DD0484
            22818BBBAE169EC27C38F2F268E08E41A0FBBCDA4B1AF234D690C99C9DE42A2C
            78516532C79A2FBE0426322D75DD7A401F1171126424EA9793EA715755C271FC
            185A7664C175E8208BDE226D42E2C75EB57A3A44B1AFA7BE7E57ECB32FC2D227
            38269D55FBFCB99FC0B27E15BC11916C52B2E0E10356761B2EEC777EC29393A1
            942A9A5A50F4CE3464DE7C0BB4E79D0F894C53AD3504EA7FF90E154717B81A1A
            E0AAA880F3F8116AEF36380F1D805AF4946912923E8546338DFAED8924F00BD3
            A8D148FDABF448FC3DFA1B3DE565B3C4D6D63E4C0773BFCBE4731578B14DEB3B
            689AC7D1D5D808574D0D5C278EA365D77638D89759DFE0D0C6C7CD83D1345D92
            C49270AA3B9AAE5C526397882ACCC92D42A5D377929C5A8BCBC32CF8253E0266
            4185630E579B5FCEED7A9E80FFEDA40FE6429FDA0D02F7917D83EC1B235ED084
            58E9FD2A761FC9474CFAE361B94D4EEE6F5E2E1A376F44DDEFBFC0BE611DF456
            6B0909EA84E8E7A6C2D6BB378F75F064A37B4533A6C1B47FB724454587F259C3
            DC765E3CAAF1B44D346F63E3224D72CA908457DE523CC58AE7C1A1AD6451CEFB
            1816AD762601961C1BE86D69F91851D11312A7BE01ADC211931C7F5AFCEE0C58
            77EF90489B33A920EB139C22DC1595D50476881C7076EEB1FC7DFBD038750A92
            C73F08DBADC1D130AC6E9DF86509B42418D51111ECA8964F8E9248C8A9E39346
            26BEFEB67C625D509BC9C23CFAD2F348277A862AF8F0E5DD662BFE46744A2A42
            3232E4CFEE04A67AE283D2D7A7C052985F23868547B2521541EFF2D0FFB5C487
            BC5E4DF36293E1DCBE97C7D37C520250AEF5D0F2E5D0FFBC583EC05E9790C882
            0ADAA868A82D56995FFDF397DBE46E6E9631C15D5A4273F8A83C273C478F4317
            19BA8E14A4E70833B687531B4CEC277638E5E81CDF48B3AB53E9FB47F22E2ED9
            774B795D6D5AEFC9B632966939D651AB452DF1EB92C65674D569D09B94C716A2
            899ACA24D0FBAA69EE35D0DFED3153D585B44B8118CD6CB6C881DB9C62436D18
            AEF66288C58848426CBBE43DD9397E296B2A4D54518D28DDC25FA055FDF36546
            FEDF408D5B6C56A9BE48A4BA9B5C4E7CA3B762624E31417D0BAE0AB3618CCD84
            5BAC2658E8BDA5C4F86E2F2E7636350E166B6AAEE5F00A3277437CA7F4FBDECB
            DF54F2B639D0BD929D54ED2AB54E93A30EB1EDF45AAC5B6C6A61A98DF3D2C542
            A1DEEBB5894EC768B1BAFA76C9E5EA43F5C5CA9F183E591F6466A149EA528952
            993AC4BA4E1D1ABA56A7D5FD60123D762B71450554494E95B046AAADED26B5B6
            4029F1CE18D11AF25DA8A01AAE6BA84703F5C51311799FD8D4F8BD5857A75846
            4B03A1898A819D409E34A39326844AD5B9EC6ED75E91DA5BACB65A37727B355A
            ED8F561A8A5076C5D0C06F2270FBA3A119D7594CB8CD66463309B20A519E1443
            3D35D5778ACD2D97432324AA048130F01F7061B0922D6A8F58AA311977AB42C3
            D6EA0C8625C4D20591DC5E6ADA71BB13DFD73561577A2F6CAB6B941795FCA2D6
            4000E9A0D79CAF96303D360237DA2C28A377577AC41ED4B39D5EB7CBCA8242D0
            E9E5A30C1954551A2DD40454FEBEF1043A09B21C56D6D4087759292412846ABD
            7EBB3626E60341AD5925A954BF8B0DF517894D9D6F3693DD2321B689D12AEFC7
            26EAE7767B9B30B8D864402BBDAB52C28D5EA7E357B1BAAA538735AF604BB6D0
            4A4992AE8FD5C841F1AC745C4CA0BD4CACAA8CF2CADF21EB98E445CAB0308866
            CB8C50AFF7F9505254D8B54274105C6AE1536F73F3839DF1C5A9928668A38989
            859B0422F55F991F899E5268D84E03BCD7C469342D0C14E592B79FDB6E5F2B71
            5F15788CC141171303170191581FDC36799714D74BBDF3B4342BBE975D801AEA
            37CDC57BE2042CE163F9B7B53860A6F99DE171A259AD41ABC93C8CC6EC6B025B
            C5601079A3405838449D36C75351B15F74B83248EB89A1791B2EF36AC01CF1FA
            BEB346BCDB44A05E2884856DD0D9427FA7FE2C6765C342F37D43732BF2DD2206
            99F488A0A245343F5BBDDE67858E07707314A340D7542AB79BCB95D1D886D19C
            D2A09DF9AE828C83CBC812FDA4B6099B5A1DD0F201E7C4CF7CDF40E586D19CBB
            3FD4822E84992D92B743DFDAFE63C66C6C68FBCD8B05C40C3D09BAD309A99B7C
            D2CBAFE99E6BD06202816557BDB6ED8ED7373338834C0815EAA8A13F34B4604E
            753D72488B31D000D65556526BF5BCCF14FDCC7A4C880AC35566A33C18AC6DB0
            BADDE811638880C94488289A985AD662D51A8D4804E6C63537B5B656DBB4DA92
            10A351649860E9C21FF77BB7BA016ECAFB68A40DA9D42E26163359A3DB632673
            B32B6954B1842D265F3FBC1E51AC26F02D336934F966559B7CAEA67AB2556A64
            1340DCAA1348C0682C756EF106016D006F773864ADDA4213B0B5B59543419A12
            ADD6D5FB9B9A919B94422F91D0ADA204A256776E8BDB9DAAE3A31D7D5F1D50F1
            5BFDD4168422AACF4D0C6273389D4E87DD61335BCC669D6F2FBD9BDE6F77D8E5
            301653DBC215D7524F6D2CA5C1CCB1A809CDA84D35A42514BBDDD84403BF476F
            C21F3504F40D0D721DC3C36D18116E455FA31E2C34446230975AAD6E16C56E68
            A3451833ADDC24A26D6353538556ADCE8BB55AED1AAABB9698A482DA9145CCC4
            F5AF6C6C4115D571DE35D792965B87FD070EC8C0CEC94C20CBE7BFD6FBDEFD78
            74188647D8D0C7A063732AD5E574DC40DAAB8E2C080B35C5489D71ABE0D5D320
            44FB88E3F6B8DC36AFE8B1719F1B1B9BBC82565B6A0A0FDF6FF762674C887527
            6FDF6CA5BE9274D09069792D4D2C0EF3A5819360B73BE41D543A1F48EB04A134
            442D6CDF6B77E1CB86567C5DDB000F957D80DA3496AEF368D2119F25D93D9E0B
            649EA63A84B68F7B9E9C54DC33AB5A9D65125415CB9B5A21123DEEA049443C1A
            45652F57B79B801DC042108AC3D4C2CE132E3716D434228ADA753F8D838DEAAF
            727BAEA1910CF597F14F43DE76ADE649ED8F25F7D5CB07BCD84910330FF01CA0
            71CAA17EC410DD6D4C6FFFB66AE631A603597E1EB264FEACF088D2B2FA66D9AA
            B993DA4C15A63689E2B9EDF5D80E6D1784726A979EE65D982A204F1B7BA878C7
            2F4B62C5F841D96F2808792641D8B78DF8E5F39A067C57DB080B8DC7F4CB2EC6
            4DCD75886D6D46AB5AD3DD2349BDFCEFE0FE7908270CBE33A57981DC2C08AB0C
            82AAD945F75BBCAA086A64B4ECB6F4F2994BDEF627D13432DFD2BB4BE866B995
            E8CC161C9BEFC79C2EACA531FBB4B2168EB804F4A38E0FB3376368542842599B
            6F0780ED51F0B8D34D00DA88BF4940C4503E7FA8005FA1D4C64AAA7B437DA39F
            2850F81C1652087BFA12DF3707822C0FB095D4F1C6C646595A4492695D4313C6
            E374A2B3C48B1E43690019E4DCF238B57D4593571289E058D5EAC4CE96B693C0
            BAF7E8216FB5ABACAA0261099A8908C4F56D8DD269D19380A037358C1B735D48
            9B19C6A606D7C98CE726827B7D1D4A20ED318B4CEEFD75F5246954F2C9F1CB5A
            9CC8258945E629C288D8579396DC83FEE78E5E465A55121F7A2CA8A97D3EBF0C
            D5A52506D08B1E1C25A638E096646D790D098496C4241410785D5C5341133204
            9964E2F2411ADC380B69FB1A3E24BCBE1E3632F15913FFA3A40C1F96D5E08249
            8F63D0E597E1E85BAFE1FCB242249276D048F4E33EA87C13C1F7F293CCCB93C4
            44F4609AD4D737C0C1214C94F424882C560B5C44A7A6E6A693206D56AB904BF7
            76517FD9D7B4DDE1460E4DE65AD242785FBEAEA505A4459F043FDE6A7C13D1C2
            B5672784D070A48A2E5C407476F8345F6F5B60B69C6269CCEBA8EE659535F227
            48B69316904B74286C6EA7C5535FAEB9F24AB9FF070F1E3CF91E13C7F2123FB0
            2524F904B299B497516166DC43602FD23DD167497019A1CDAD83F62CCAE5991E
            2E0243E63F7EC6F5C558CCD85C5681EDC44F4D6436DE4E6A75AA4AA209D8464E
            358DAB4C2B022A0709418D8F6F16D3645958DF82567ACE3CC9BC81363020E113
            82C1615699EF5910AB792196DAC5EDF42B1256BA57403CB5AEA515F32BEB64D7
            D518520A2ED7A949B968533CFC794F92876941E5D613DFCFADAA4789AB6DCDE4
            4AB2086F26BEBEC84C3A260D9CDF3BE813713018F432D8B87DDAB1BF5E06522B
            09741280F2734E2C48B8CF249B89A724DFB008F23DA357C441122C9F131FEF6E
            6DE3A53B89FF1F20C583959840ED2A1022DA66539006866028E9981822797CBF
            214BE73B7AB7D40E7CEEA479D1B06B07BAEDDD891189A431531BFC4E4EEE1F5F
            ACB0C047F33D6475B0BB2992C6F43236A19877FEE5DD26E2991D1E2FAA4818E5
            51B9BD54FE84F39F73E4BBA4A6CA878DA3B6061711CEDC60616BC6FBCF08A858
            4B55C9ED5A48C05CED722BBF48A36366E3B357DA4AFAAD625F5F65FCE31F0AEE
            9493201B429A2C6B415C382A2A8A14D93A7920F96F7F4527D575BE175819ABF4
            5EE568861E04B2B5B5B5A8AEAE96B5409E0C3C19258506E9D96CA406DB89F036
            3241121313919D9D4D80D3F6BDFB271F7B0C5B8E6763DB5FED564279A2998C68
            2542CB75B61B641369E52269E8F1495D505E512E4B4D66E65EBD7A21FBC811D4
            F217177406D98485E88685FACEAA565575751B6DE5CF29EBE5BE8F1E3D1A1104
            00D3A74DC39871E3104E803FEBDDB6D0A489E3C7E3EADB6EC7D8E79E43D391C3
            38FFBCF3B067EF5E58F9F3E5344199916460F3EDE5E6C13013680C1E3C188387
            0CC6942953B073FB76B9AE8BFAF5C38354FFCE9DBBF0D9DC4F7D63AC2381A682
            9DC0A4830465ED8D182339B90BA9F94DB236E907BF2B6FB801A5AD76E46CD90C
            9044475909AC048889C47865656568A0BEFBC7F1DD59B3504C96C6FB3367B6D1
            C3E5E0C138C954FE74F5D557CBE0B797FAD61E6479B234D1FB99FE6A1F88B735
            5C23FB602DC45F6E0250278D514868A89CD76FF2718A8E8D95057D0E8DF5679F
            7F2E4F822FBEF80243060DC453CFF8FCDB895D408D864082C4CB1FE4A47798A9
            CCC4891371E8E021AC5CB5929AED38F94E160A166A1B03305F6D8A8074B25D49
            7171B2F5131E1E2ED3A3AEA6864F7E6AFB320387A6314F73763EAD46AB6B0B05
            73B4CACBE6DCBBB6BC521B0C715C67003FEB88D75C3C697DF342E57369F969CE
            276D894493CB4970959797CB7DF7CD58B9AEB46EDDE4BE7DF8E187C8CFCD951F
            F521BE8A255A656565A1C96739303DF95EDEF1E3704B4A735005B5CAB782E377
            4F09C2C979ED430BD696E5F6F893DA6759891ECF3F3CE7D7E07C7D811F5898E6
            0CE292D801331E9F34097F6DDB8E63DBB7C987EFB777B3A4676420B3674F2CFD
            E597B6F7731BBD3E58222545555D258FC53FDD5075FC9FDEAB65252C340CA8A9
            56C49EB4B434194BCACACB71CAE4AB37D03AE1BE188D46B95F7E81A004B29D57
            AB523D40199A09FC44667C2E1C4A83C613C919A0C9FA2A262B5945D69A57EB7F
            09DFE749C6D2B63D23FBFF6790ADA7095D4993982724979125713B866009CD26
            9B83FD946C3ED0730D01720C11BB24E7645C2F464F9880B2FC7CAC59B9529ECC
            5C0F83989ECAF06F6E03FFE67BFCB79906A085FE4F4D49460B6925154C6C1513
            BFAB0CDEF442ADD96C126832781904AE24866781B37FFF7E141515F91B47B863
            C0A0818370C9A597E0CD37DFC4C30F3F8C06D2FC3F9CD9B65A3C66CC180C1B36
            0C23468C90274C66DFBEF201D746F63311A3B8B85FDC5FB1A32FEFF64183F018
            098EFFFDBFD6EE03DCD2A24A17709D6E928880571FE210464005258918194509
            8A8A88390C5EBC8A8E8E0103282A2820481025290A7815415131000A824403D8
            8AA42B41044518409A30080C0ACDE9D3536FEDFDEDAEDE9CD38DF7DEF53CE739
            E7ECFDEFFAAB56ADF5AD6FADAABFF6E14794334F3FBDBDFFA46A78BBECB24BB9
            FAEA6BCAF74E3A7110C080A9CF4ECE6F4EFD840A0C8CE26EC0507F573D2D55F5
            3B7B6A6A215D79C10B5ED002E66F7FFBDBB29231D514DFC67C207BDB6DB795A9
            6A309E285BA6061163FAE30DD797630E7FE4D7E544189A36FF5CF5FF87EAD031
            30BAF6DE0395498F074E7338598146C0DC70C3A79639175DD436C65BC42C2393
            5E509E5AC103C85EF28B5FCC3EE8F0C3977AA8B2F393BF7D72D976BBEDCAD187
            1EDAC6B89ADA61BDFAEEA1C3ACB4EA6A65A595562C2F7DE94BDB7CCDA9C0D3F4
            53FBB34C05B6F9C3D20E80957637E0A8E3077E82D5E3EADCB09715577C5CB3CF
            8786A0D5F72B76C53EB5B3180F2D23B0F5C7D4D444F589651E7E78516634F198
            E59D7636B085DAF6EA6BAC5E9EF5AC67958B2FBEB8DCD9EC6D21C77CFA33B72C
            AF7CE52BCB31C71C53EEF94B5B572DEB5BA0AAFE79F9E5978F74B84C9DDB273E
            F189E5B6FA7999DF640D34FA1B22B3A0FA6603F645FAF22878EAECD90BCA2010
            D608BF748D3A930B16BD7ED857C4089057FBECC70B1376DB6DB772719DF32BAE
            BCF21181E89FD6DFA0ACBFFE7AE5C2B3BA47C0D588EBE756A8B6F0B71AC05A76
            F7F7EEFBFD26864B3F1DE8AF5CE7F1BF2A913297EC248067FED759679D068C77
            DE79674B0E4AF798ECC4B0CECB2662B7F9AC71F440FAD8E142E703439D8F816C
            FDD82C85F2694F62B7067266FDC00E611EB9A10F6FBAE9A6ADB13FD5281AE631
            5E7CD6A900AB9FE73EF7B94DB93FFFF9CFDBEBFEE6983E3F67CE9CF6790E4921
            8FAF8EB7E38E3B36F0D5966BA4A177DDB5302A716006044CF4D16704008CD2C0
            AFBF7EE123C8CBD5C95E77DD7547FFFFFEF7BF1F296E8D35D6285B6CB145F9D9
            CF7ED6CA22C09BF3703E3F1903A30EE3BCE1861BDA4F40DC6B00118B5B7BEDB5
            9B5E7EFAD39FB6F7D75A6BADB2E5965BB6FE6345DAD4BED76EBCF1C69625C449
            5DABFFAB5726F5CB5FFEB205216DACB7DE7AAD4D63E248E6C27D57AA6CF8D65B
            6F6DED34B0A9AC65F3CD376FFAA2975CAF4DBAC1B8E9F77BDFFB5E5973CD35CB
            0E3BEC508E3FFEF8F61E5D5E7DF5D52D4378DDEB5ED702CA2DB7DC52AEADAC5E
            5031E7FA651CC0CB3D8DD1E71818DDE88BF6CDADFEE9CF1F9D7435D5BEB1BC01
            9BD7622BAEA393E73FFFF9E5924B2E694188FE9239999756D3AD40677EF5C7DC
            CD1ED628E991EE81B079D327FFEFBEFBEE6D4C679C71460B1A5E5B7378BE854C
            2CC0EAF5A4A6ABACB24A6B571F389FF1EBAF3191ADB6DAAA8D158899939B6EBA
            6964DBFA69DC5756C0F8E71AA8B4AF9DDE67F4D1DFDA65D7F4436740CF38BCEE
            7FFDE6C8CFA8C1D87BBF19663129DDE99BF964ABFE0E3B6C258E31B04FE6A01D
            3E609EF886F6F5511FD87732537AD0C7BE1D60F49CE73CA70564FA7F6858EA72
            1D9DEA8BC02A0BED414A9F7CCEB50245EF8BF447B7F1EF0465F7EF416AB22B07
            F6E36123FA0F0FCC9B71D15BFFD980621FDC971EAD6D3CDCFA30CA1EA703C0A1
            3E5AB9A8FE20815EFB7BB2E2217E68C7FB792D73E1F5A11EB1AD69BFE1B8ED58
            A88DDC542762151F7AE08185353883A424838CA2C641560729F4FEE16AAFD42B
            9D3451DAE4381895B63908A134CAE58C14A79CC04800CE35D75CD314B4C1061B
            88400D64189BCF734CF748FD0F6003A796FED6F7561CA6A5DAD237E9F8F7BFFF
            FDE62C3E1760658494179663AC1CEC5BDF1A3C31B65165937146CE9F7B69DB8F
            FB30387F2798D00747E4B0F4E57A201883DF64934D5A1F942A801ABDFAECAF7F
            FDEB06BCEE7FF3CD3797EBAEBBAE39BAC0A01D8033605C2B966DB6D9A681A060
            61BC7BEDB557D973CF3DDB6B3EFFDDEF7EB7ECB1C71EE5A935153BF0C003DB7D
            E878EEDCB9E5E9950569C778009E31FFE4273F69BAD317C0BDEDB6DB36677AD5
            AB5ED58093EE00FFF39EF7BC063C3E6B2E03220C0F607BDD18EF19AE9E6FBCF1
            C66D4EBD6FFCF4CE798DD7D838B5F7CCAFFFCD817102AFD888D7B547F7EEE1B3
            020187A7DBA5865BFC7CD6F8CCD73873742D7D1B1F20D60FF3A64F6131829039
            A07B84C03C020CF7D72E9D69877E04B3F3CE3BAF7DD6EBECC76F63D1A70468F3
            C1E68C53DFE96EC30D376CF76013C684C1D2FD28632A83D28B4067EEE99E005D
            F66C9C00D7B803FC013A9FF37E802760300E32C69BF7F5910DF15D36C2B69421
            02EC7EE8401BE621A0DC970F035221145FFCE2E0CCE0B7BFFDEDE577BF5BF8F5
            71E9673ED30363DFDFBC67CCFACCE78321C9B4F5A31F7B9FB9C6A7C7D3F99900
            B61F4B9FFAFB3F81B37F2FEF2F528B9D9ABAA2FEBFF98CF7195EB8653590DF84
            4D4CD741836807557434DAEFB660315C380022261A4862940CA82F3900E33E12
            F692F738AFBF39309065DC18700C84005D0E4CD45CD65F7FFDC608532F61D849
            5D3FFFF9CF972F7FF9CBA336C665E79D776EC680B1BEE8452F2A97D5149FC1D2
            83B1702A63EE830F36052C01582F3E07F0DFF0863734A03CF5D453DBB5F4E0F3
            58307D7060BA93E2724C812C0E28158F78CFF50093D331340E99B170BCADB7DE
            BA0584934E3AA901897E3DE5294F1931E01FFDE8478F48E1B5E3B5EC44D017D7
            031E0030D3DCD035D03196B6BA5DE7DDF8BC07808C873D0079F32360198FB639
            6BC0D3670290C648F7BD04083024E3D50636A51F805F40F279013001539F80D9
            76DB6DD7982D50609382B9D7CD41D86AC6643C6C26ACC53D8D2F36E61ED107BB
            F43E60C4F6627FE62063093B8CBEC3F2CD0B1D63AD17D5D459BF8C1101707DC0
            D4B501D271769779A277BAA4F3F46171C27ED9101B9E1CDB7626EB4C26689CB9
            5F4A24846D666B67FA1020CF4226313F82A8FFDFFAD6B7966F7FFBDBD3AEB92C
            4EC218175796D1B704B55ECC83D7B2B614104ED9643CF8F6B6B660B83B235948
            5F1208C8B6C5C52173FD7B57BE18EACC57495C36539F27BAC63CC8BD777F7303
            CA2295FF43F3534F75E36C9BF13F2030F19914AFE954A2706A1B7E871112ED32
            302C56DA14561CB6E2FA7EA2230CC03D02AEFA9B52445EF3BEF6F561BCCEE247
            9FBDCEC88C0B50022A06A3BD7C569FD25F0E1AA6A27DFD085B081811EF7388B0
            E538E1669B6DD61CCF8FFBF56D03A0B09438F86B5FFBDAC6F08016A010CC1892
            3EEA3F66A91D0C14C002A130F23047E34EBA15314E60649C7EB4991A660C0CC0
            03A99E7927EDF41941D0385D0BBC8D8D6303350CD86F73E25EC6483F98129D32
            EA30D5E850BB8F6DBB2DFEDA3EE73AFD6A5B7DAADEFBFA99B1B08FD8A5CFBB3F
            C6AA5D0CF5C73FFEF1C8693860BF26F0D7EE6BE68104C62BE07A2FFD3137FA6C
            6E033EF3875F599EEC254E9F3E26FD44349085043F9F0F981943BF70E87D63A3
            CB80063D1A17B69F31D3095BF2DBBD7A3B0F4B8CCF65C1AF0718761B3D9B9BF8
            5FE635626EF46BFE701BD9782D32C42AB2EBAEBB9657BCE215E5B0C30E6B6C78
            3AD15ED861DA1A2F5BF4AC31FEDF035F2FF4B3EC70FB578263DFC6220B9D6510
            C4F2DAEDC3BA7ECF5A93E98E630D5DE69ADEFE8738E28098E90EFFEEFBB348FA
            7F459DE84D83DC8C04FBE823A08127454A8753E389D233484A509BE57C294A07
            785D0B1414F5313E6D60A0AE55B7536FC388DA3EC13A399FFBDCE71A2B8D7CE2
            139F682BAFDEEF5310EDA6FFEE73CA29A7940B2EB8A0A5313DFD8FA47DEC1003
            7DDFFBDE573EFCE10F8F263A5B8E0887518FFDE8473F3A62813FFCE10F1BE3D2
            F60F7EF083F6F92C1C1A3327C760C22438BE71034D60A2F6E9FE1FFFF8C75B3D
            589A3DD8FBF9F7E6F016A430B34C36868501013F7AE30C7E0342E500A9AC7B01
            5ACC59CD5B598000B773CF3DB77CF0831F6C00A39F1C183019D7673FFBD9E62C
            8CC87C9803755D6508C1CFEBEAB39833DDEEB7DF7EE56B5FFB5AEB8B31017B6D
            6A8BC8303EF9C94FB61D09C0589B82B012C541071D3462B0871C72485B300466
            01AD2CA4FA3F6CD13CEA9FF9F09EA07CE69967B66B01147DD12F317E7AE04CF4
            FF810F7CA06CBFFDF6CDD1D82F5D28B9BCF7BDEF6DD72C37DCD52220115985B4
            FDF4D34F1F05D09EC1117DC2B25FFCE217B77B9947BFC3ACC37AD8B531A7662A
            F8284B446423DA343E7D7CE73BDFD9742E28781D9B67C76C3EF5CAEF7CE73BAD
            8413DF1C2FE3B9D7873EF4A1761DF9D8C73E565EFDEA57B7949E00672CF64B5F
            FA5239F6D863473EAB5CC4AF64756CCD9C0858679F7D76D39571F540E81EAF79
            CD6B5AB0674B32077EA26CC56723EAFBC71D77DC488FF151FFB345190A9B9025
            00BB0B2FBCB0FD760DFB38BC5B90453ADEF18E77B4D25C6AA8E68B1FECBBEFBE
            8B304D20BCCF3EFB34DFE21F2142D625DC8FFF8E03FB38EB9FA9F4505F9F575F
            B30830FDD6865C1700191AD093AAD3DE506F3291627B5FE7EAA31803F2BACFF9
            5BA7B2A8905A9D4149219724AE3368C240B1086CA4DF160168A4F68C90C1727A
            4A5E92981C13681BCCE2445A6D22DCE7652F5BFC813522350337D67E32D44039
            420C8D2130AC5EDEF8C637B68955F304C0A9C902AE9904730520D23BE00D9C30
            2FE3D757C077CE39E73400D31FF738E184134659C6B8089CD8365D0B0A1C2235
            D35E00A85D1340C27B8CDEB822C0FA1BDFF8460371C1427078E6339FD9E666BA
            B1F7C2BE30472005E430F825C937BFF9CD06C6110105C0F5923A3680020E009E
            C3CE24EC539FCD1987C43A013079CF7BDE33AA31CE24800AD89B0FAC37CC2A75
            5702A805BB5E803D10733DFBA40FB62A18CC24990FFE062866CF5EFC771328E1
            08780092DFCC24FC0A40D91D43C733898086ADB6332CAA7ECF3AEBAC66933309
            1B1414892D8A82F2E2C49890068421A525F296B7BC6594997DE52B5F69416826
            E127CF7EF6B347A53E6544763693083A803D624EE09CB90CC1EAEBBF63ECD877
            A11F5A9620133D900D4174B7DAF8B1B366CD6E75429BE4EFB8636E05D401A59F
            D53677977680F6C27461417B7D830DD66F132F0D119D3804278C60A261086F7B
            DBC2AF036738DFFAD6C9B58DC182D989279EB8883311693276325840FB5B8BFA
            F686661103538A70DA306C408029707AA2560A5462A02961606CC0535AFCE4E1
            09FEFE572FE30856E231BE08BD49BDFA3A9F08EBFAA4D2F4B0F2D841221C499F
            36D964D3EAE05796430F3DB47CE42383EF6D336EF52CFA091B24D82C235D7EB8
            E7537F93C270562502C0C0991814C0EBF576D249DF6C7383C94418FC673E7340
            0D16CF6D8C6E3A47549FEE03D94B5EF292E658118B67EACB98ACB1EA9FDF1C51
            D08A588DFFC52F7ED102490F8A6CC302C99557FE9FCA209F304AD31FDF9D392A
            D80A1C18062665EE08C625B08C8B3E0A3A24E977761CBCE94D6F6AB542990816
            1311C480658039A4A2776836F5D5AF7E75E427B11B4EFCC31F9EDA02D05D77DD
            594162C521237E42034F4E9C9D03BD60766CCDBDE80C233CECB085C741CA0065
            57C6C31E2282083DF5B5736362D75955376E7D344E630E40E9ABA083ADEBDB0A
            C32F9EC4646D49CC6A3CBFC6B4DD1FD3F55E246537630A2B265FFFFA09D5361F
            6A40BD42F785966AD832537D94291273E29EC6C11E7A520373CC03E21161DF32
            A5238E38A265679133CFFC4903E31D7678E9A8444764A2B0C60F5F23279F7C72
            EBDBB87F60C9F424C3983F7FAAE11C2C4B397190A5CF6FEFC11EBA19D4C21758
            AD7C54DF513E51A6FF92E6EA49B35E528AA7D8D47C9E58965DE671E5A17998CE
            BCC1C746C7270C8E2D98354B4AB7708515E3020E985D149BED551469712CB2F2
            CAEB9607EAF5CB2CFB4005AE35476924F60454A2C08D367A72354C857A00B972
            35965995013CD0D84622A676397F524E693D0394BA924F7DEA533346544A044A
            31568E8C2D917EC23822A7DA69A79D1A038858A84BDF0F38E0805602200C8473
            30BE0B2FBCA01956328FDB6EBBA58D99003ACE8F7901447A14D9012E87CCB6AE
            AC303378E06AACA96F724E7B7DC90D375C579EB6D15665DEC3836CE6B4D37E52
            75B84905850B2B589D5E23F82095D49F8C93D1664B9AB6E99EC362783D3BCD8A
            BBBE785D5F31367DC024571A7EE3E979E79D5BF5B8F00B48CF3BEF9C7ABFC177
            4FDD7EFB5FEA7DD6A96D3DD656CB6A430FD6F4F69406D2C42291F43F75E23028
            ECD74E04CE2728B32D404FF6DCF32335700DC00A43E5E011E9EBD7BFFEF5D63F
            01C5F800BA7EF7F5D988D28A15776261D1DEE5E9250F605A001B1C33BFC9261B
            D420FABB06168006A02813B07DC206D922A1C77EDB62822DD13F6CFBBEFBEEA9
            41E557D5AE3E5D33BF0DCAF9E7FF6C340FEC76BAFE4787B22EC28EEC4639FFFC
            F31BF1A05764009353BE627FC45C2AF30868C88ACFF36741055821481E1489EC
            B4D36BAA0E7FD0FE7ED18B5E58F576FE280B153CBEF0852FB479301F24191F91
            3D9E76DAC2A30DD9B8B11F79E4E03BF5F823668BF8F0E3C841071D5CC732382A
            942F5E7DF55595700CBE0E48894436C796833902B272187286B9B325E34700DA
            56CF058F2B0FB7A750CD5FB2D360E38236C7CB2EFB4F751E6F1B5E33A12E35FD
            773C8DC9C48BB759F4F90637AFE0B5F276DB4FDD54ED7AC5F640D13C8B3D2B56
            877AB03AE0BCB2DCB21E7F1C3E5433513BFBB85965FFFD26CA9F6F9CDD224122
            3D00024444BDC6E00198282E0565747BEDB55FB9F6F7279497BDBC94833F2B3A
            9D531D6BDBD104608731B86DB7797DF98F5B4F2932AA5FCDA9863F24C9404984
            269CA867C952D92C2610F7C44A92D60114EC4CCD8A3131CA082683CD613ADAC4
            D4068EBC6763A09FFEF4A7478E627C808933317AEC0420BA9F0DD94A0302D01D
            77DC530161EDB2E5B3FEABFCB4DAF4A9A79E5775B468CACB7138B5D48DA3A79F
            8034B5DEEC38C04EA4DAEA761C386517F22FFFF2AAF2FBEB4EAB46BD6A39FEB8
            B9E5D6DB962E8307E21EAECE30F8C200CF3A5C79E555758C83944A60A10BBF09
            46838512F5F37FFBB7C159EDEEA37E6C9E818420065000519FBDACB1C6936B10
            B9BEBC60EB8972F8E7ED6DDDAB3ADDE04CD15B6EB9A3ACB7DE6AE5E53B2E2817
            FDB2949A30B56012C03CF8E0835B5F380310F02388080A5991C7443093DCF3B8
            E34EAECCE4CD658BEACF737EB57A4DFB6E7B84D163C740C2AE936422C04C6622
            333267E6DAEF94315CC78E6237E6F6E28BAFAAB6B84BF9CC81EC4CFD755679E8
            C179EDB4AB77ED860DBEB2660903004104F43D3552C01EDF604FC64A040D7D69
            0FD20C6BBBE6FDFEFB279B734B36F7DBEFD00A821F19D90AA0F03B3B8004DFB7
            BFFD1D956DFEBA1C75D4D13503F8F747E840C90AC395C11181A0678F11C0A64C
            71C4114755DDFCADB63DAB5C7AE95515E807C1E2C4134FAFFEB953F9F82794F4
            AA2DD504ECAF7FBDBF06D9019B652FFC28DB2B89B283F50B36C3B7D7181E706F
            4EF97BCF7AF9B6FAB0729F4C66E0C3B754BB59ABFCCF5D2D7ED6CF7D4FB9EFEC
            1A9C07999831C93CDD2735FA8800C2AF8C3D4165A9A596AEF8315998F67DF7D7
            797CF0E1E61B8E39B0166843D4ECA5ECEF5FD05E9F3F59CE9B5A30B1ED62CE74
            5A1464E74DB3CBC2D164B52D87A8FEF8D13553CA76DB4F9473CF5930320C12B6
            31938878DB6DB74D79FF070CAE94DFCCD9B63AEF2005041E1859CF20DFBACB67
            CA9557ED5DAEBCBC1AFDEDA5ACD5E666F90A70378FCA056108A913F72C6D26F9
            CA57BE5C15FCEEFAF3AE0A245F9EF13AA50EC66941884889C3BA620C0440AA23
            91D4BB308DB0BBF5D7DFA2ECF8CACB8AB2D38517AC5901F8BB65ABADA6FF7244
            40E07E003A6CC558B32D878E447F86D5D7101F78605E7D7D9DF2C5636E2FEF7C
            4765719F2F659FBDAB0E6BBC3AB066CAFFA376C511AF6BAEB16BD5CFE02B8B52
            F3E400FA4D2C824819495F034DFA2560027EF3455CFBEE770FBEB8F8924BAEAB
            CEFBD4F2DB4BDBB743970D9F229338B206A7C1377FCC99735D9DFFA7964B2E2B
            E5BDEFA6C3356A20BF71544B361EC00E5C39227B922663A20219760BF4BC17B0
            BCE8A2ABCACB5FBE69D9FF80A936DE676CFECAEAB4C7B7EBA71340C7D9B021F3
            C37E2FBDF4D2C6E0FFD83D69389D9C70C245E57DEFDBAAB2CCFE80FC59E53BA7
            4C9537BE1E40DD5C19D85AA3AC4AB0C8CE196D0B8AE630357A8269D13160D5A7
            9E20ECB8E372E5A28B1F2CFBED7B729D97C57FCDDAC61BAF5F75F9C7EA1BCB57
            E27152CD8C769EF63A760B8804176501E5ACE5663877386B03FD02D0D62F7C7B
            1DF2FFAE765CCA6B5F5783C7A9AB555FBEA9B6319843C19A6DCCB47593D81980
            DC609FF44137C95E955094D3CC89054CF2A94F1D57BEF8A57796BBEEACFE716C
            29EF7E17BCB8AC66B083ADAA02AE077294D22C185A449C4E040FE52AE3D9B792
            C47DF65ED2290D03A918BC5E252B7F7AD420BB98BDBA48F257EFBCBBFCAF760A
            5E65AE8F59DE21294B57A3B2A17D417BB41D33F284E74E3BCE2E3FBB70B91A85
            976B8E801500A5EC214C8D89E198D4D4C97EFCE373ABF10CD2C92BAEB8A66CBA
            E920424A27A44D528BD4678F3FFE8CB2C79EAF28BFBD0C1BA92CEBF9A5ACB3F6
            33CA9F6FBA74D4674E8325602252590B0959993481188CD753B7E2D0C71D776C
            65AC97B7090DA01B0326D3D79D526A0853C720181E11AD45EDBE14E23E29C273
            1E4C97FCEB5B762BE75F787C3B6F226B4DF67732320B09492923CA10982A8693
            7A5A0AFB79F2449DA8AF355E77DDAD65B3CD9E547E7D892781E63780DB72CBED
            2A8BFF4D75E07BCBBAFF5C19C519B32B38FDA582D40080181C2005ECC073A0F3
            E31B13A74F75CBB00EE51029A57E0304C04CA4A20936C71C735ABDE655E5E68A
            7FC7D6D8F5A10FAAF35E5336DF7C30BE830F3AA91CF6855DCA8D7F5EBE6CB2B1
            B3295E58C7B63020CA2CD4C5315BE303AEEC42198AB027D90E474EDDF1C10727
            EBB8D7ABE07B73C99AABD4D5188C09336783113565E5A591430CE7763C8DD5BE
            0C28F60C888E3EEA7BE5691B9F534EAEB7BEFF81A52A404F943F5CFF70D9F0C9
            A5BCFEF5BB57D6FA85A15D5FD1CA13C693D56C229BE3236AE2D96D904C4C0666
            5E955F800BBD0EEEBB5405248033B03BA097A70EB38FF6D65BE7D66C61DF9669
            667794541D6B34D6805544AD3C7BBED994FBD3A95249983BE18BECBC07FE75D7
            D9AABCF95F2F29071EF098B2CA2AF756707C559D9785DF3F881CF021FE4F041C
            80C92F227492F582F1921D9FC0FE7B26BCF3CE7B94BBFFF373E5E73F2BE5153B
            9672F659AB575FFB8FFA99C13A8B351E001A310EB569BE35BEC04CCF7C0BD13B
            A2C2C41D772F3C9E6199DA0567CD587A5A79E5419DF6BE7BA70EAF1CF283035B
            298F4A263E36CD5715B981CCB8CEFFEC6BAF59E34F0B164CAE3D77EE1D8323BF
            565EA1ACBEDAEA55794B97CB2FBFA69D2AF4D8156695EBAF9B5F266629FA0FF6
            A872B41806C9A3B18473EEBFFFFE8B18F6F6DBBFB4328A8587BE00916CCD8951
            5E7FFD0D95196C50D9DB3A1588D62BC71E7B7E6500AFAE93F4FD47184C9C450D
            318B5ED2DE7EEB4C2FEE63D702D020616AEA5559FCC142180CF01544A45289FA
            615D7D1DAF7DF5F8906D658FDDC058F7AF60B14FF9C0FB3F5D9EF5EC0DEA3897
            AA816497D17EC1BE0C41D4A4529BD24616834686BEEEBAAD4E29B556772277DD
            F59FD5609FD002E3DFFF6641E88DE5ACB34EAE0E72470D5E6796BDF77E5B63C8
            EA65BDCEB3A096BE26A31867760C76BA073C7A7DCD997369BDEE992525A7ADB7
            DEA6069B7347D76EBDF5F615E4CE293BBFFAE9E547A7DF509DE70D954D7F7DE4
            8C821260CBD375FAA67619C7F75A6CA4170B94D75E7B7B05E34F5616BC6A05E7
            3B1B238FAD1953EA941814A6037C38341DCAC4D4D30512A20FAB4FF3F5DF64BD
            F54B79F2066B57507E5DF9EE29DFAA99D85FCA1D73ED39BEABF67B9032E77C8D
            F17E027D2C1AD067955EB0B2252AA22E2AF5BDFEFA3F940F7FF893357B3AA592
            05ED0D9822C2D22F46F6F2CEDD762FCF7BFE335A3F04A700299607CC23EAB4B2
            2376A40CC4FE48B618A6AE29805BFCEB1F65DF61875794B37F7A46F5CB59E5BA
            DF4F9573CEB9A002F4D6ED3D6DD939D4AFCD64678BFAB805AAF8896D89B2B1F1
            054D01C1D372E63AF37EE8A147943DF7DC3D479C542C39A462CA1E239BB05304
            D0F25536236824BB1EC71E5912DFB13E8D3F208DB3667B1660C1E80C1C6583A5
            965EB6EA7DFEBD53F327575B66D9F2E0128F26EB64E121A733CA0A95832FB86C
            5605D0A92985615F85B3521D888DD6BE6371B0276D99656CDEFE7B758EC15E54
            CCC10A22013006AD4E89C21B64F66E52A8282FA287E92D4E28F0BEFB96AB6CE8
            19D589D51B0FA846F2F1913378E28A2349FD8051BF10847902C2000931718C14
            23A06CEC8228BC63C1FD38887498C372CCD42A89714907C79F5E9A4E527BEAD3
            2EF5A397BF7CF035377DED931372460C937E801F83352E0E866125151B5F9050
            0639FAE8532AE83CADA6B687D5CF0ED841763864316371E21A4C75BC5ECD21FA
            47AD8D5D266035FC9043167EC5CA91471E5DF5775A05DE2797A38E3AB03AFCA0
            641206B9DC724E65D387B9D5818FAD7632F82E30F3610B52FFACFE92B6EF44E8
            11A0FC69787215910A9B47FD04B259B1C7FEF5D7AAB3A0EA6FACA9DFE1620116
            E0E6E9C6D80D7BC2225758E1A9D5A664137F6AFED003C8E284C36BB72FCFD0B7
            F4981D792DC181202E4A26798880C83A30E50050F6101F7DF4D16DFC4084D007
            C0622BE63E7BCE655859708D58ED4738642D8266024C766EF4763B77EE5FCAAE
            BBBEBFF6776E05D37F1FD55209B28168F56B33096AB2330BC2116330DF7022BB
            38B22D149B07B4D9DD336FDEDFCAFBDFFFB19A015C5B19EA8BCB3EFB2C648A59
            68EBFB188C19D8E3916DDB22B1DEA216BD70975416F2A73B08B289C5A1139738
            B16332B1A4BD76C30EECB7EAAAABEEEDEFFEF13B2C8E12B2C84329615822A588
            B9245136A080D07B06EE21846C44973A5B188870042C33D2D7B3302B8C805160
            3FD21A69E66396F08DADA2A8D4B07FE205FB35D983AD39778D40D9DF521AA9B5
            549A305C20CB30C3484CAC1A676AC352B5D433F50973F079ED443885EB1380B4
            CB496406F776274479F8816E2C04080CC007D305209C30A598E92435BF7E4FA6
            0087BD64FF9F31F4DB76F45550709FC5091622F03CB4987388733FC6AD16A7AF
            56F965093E9BFA993906729C1F78B3AF7EBB1CC62E9348FAEEBA3C480078D485
            7BF643E8068B4ACD372C9D2C723C635974016E26611FC992081B11E47BA6A7EF
            C038E92F8291928B3DD96AFA987FBF57733AC9363EA00B409724FA02E8FB0702
            901076D4AF932877619CE38FA9D2553F7EB54D7E42FA759299248B96C6CD4633
            E694D588B25A5F1A13F0F97E9834FFA54F7D637FFAB038E17FD90E86C8F45B16
            31680128248A4F026D634FD6CB2EF2346A74488644E277D5463659A2E2A79B8B
            2531993C6C501D81156C919BE760068063657DDCB118705FEBEA0568884C26C1
            8A66FF589D7D70FD8303794A2CC2684C44525A113FE94C9C4B5DC922110362E0
            4B12D7537E7F6DD214C2E1A59211ACC70426EDC042817DBFBD496ADF3FEA0730
            B0A308E3C10419C6748579CC15A311E10516C5FC8CB92FBDA83501416C0873A7
            0BCCA1DF5B4930242C1C735352E9772170F43C5546FA8524C2C0B18CA47C3389
            D5622505600B08C6173DA56C36A84B4F01ABD20CC0155C04089FCD1E598EE6E9
            1DE3C1242D32A64E9C60DA4BBF0899ED82FA21D88F071DF627A8B32340ECDED9
            B6E65E9C8C4DF7003D9DB001F3DE9FC9D1F7833DF57BAB49BF720EF4D80910C1
            E0D43CC71FCA502F1440B2F8D867393349CA62004E3D332CB917DBC2D8424A0D
            3236F74FA08A2004EC9AAF46D82146E833E33A029C024288109D9AE3884C247E
            325EAE1214041CF64EFA5A2DC152F57995B1AF5467F7F4925A3D710D509EAE3C
            A806AE2D4C96B463568707CBF4A785E54952EB11D5A79F557F2E9978B485D84E
            26966448916A7872F99BEAC44DE4FC029D919603C1AC9A068039585846FF3AF1
            59462CAA02087BE0F2944D224B8E8623528B306E8ECA11C23CD47CF22C3AE7A2
            A83057BF0146EE9B273672CC5C9EEE704F7D759F3C1E0CBC4D9436189A604257
            EEABEFFAA1EF1CD4FB526ACE0660BDA72F00C3FDDD1333C24AF3FC3BC3CBF800
            18E0CB99AC52AA18A636A44B160A804BBFDF38CFFFEB1B874D0D586D1553E4E0
            C6A52D8B0D320E9FE1C8FA2E10194F4EE0CA4136F48BC5E4E916D771D87C0342
            1E7D4DE44FF4C716FAC3D8316EDBBC8C1933E2801C82D055E60690684BE0717F
            D7D3B1B1CB10CC852068DE5C8F19B94EFFF2BC39DDE538466D854D9A1FFDD0B6
            D7F5D19E4D01B03F27C28FCF0B7CDAA39F3C421B22628CFDCABB7E61C674615C
            FA47EFFAE03581AA7DBB43BD8F7BE7043163CA53447492455AF6A82C9395753A
            4342FA67E9D950EC3B677A1863CA18E69F3DE6F157B68014F047F7150C9462B2
            7F389916A14B76C6BED885F161D8FD1EDE9EF103500B6A82987601B776FB545D
            5FF977EEC17E531F759DBE05B8E8370FDB782FA7FFE55A82102140DA3466FAF3
            6044CE7018C71AF3E11E390F43E0CBE960212D398E72BA0C8CDD573B3DB9EAF9
            CDFDD927FF10C8FE2317D70EED56957C6CE8744EBE21525C8AE6A8E347838D0B
            E7614CAE4D3419BBCFB427F818707FD8456F20C026A7883144A033DDA1120428
            B9360EAFBC6032B29ACC688D479B314C2019E063381CC2A4DC33C317E3E591C9
            1CE811478AD170A4BE66D80BB0F7C378181AC3C7EE15F2B13F8B6BDED7669857
            4EAD12B9B1C57EE3B671582D074E7D5D358C5FED8CBE19ACB9BBBD3B453EFD7F
            34623E80480EA3B97F9A2F3B0452E61F88CB76FCAF1F39EE2F7A9285F8710D30
            EECF2A4D3BEE23DD375FD9DD8019E6F1E0DE3E7AA10FF3D33F46EC7F0072EFF0
            9B2580129DE46848F39C05C608FB673BE6823DA957C61FF2504E0EDBD1FE740F
            0CB03373DC1F9834934CE717C924C725073A85619B97F113D60456E331B69974
            D5F7539B7CA03FE4653ADD0EF683DF51FE7FCBE27085AFD15F8E445CFC01EB0B
            DB8B5E73E64930A63B9671B2BEBF5ABDECEEFE88C37FB0DF8F1E67873738A3B2
            829799987BBBAF3A912A8AAA71D030CF44EC0C2AE76E72920054BFB73607418B
            8E9CCC020FD6C1D1288E418AA01C13F0698B5239574E1D6210D8A9FEEA97D738
            14A7E0C4C0CA3D6DF5F25B54F45ED82550F1448C724116E4BC2F9DD5376DB887
            7B03427DC37A45498B2EC6A68410D6CC803D2C013C809CE7D8638CAE513FE62C
            524DFD566671ADFBB97FEADB56992D3871187DC2CA18846B0180BEB9B7D7E82C
            C0906088997076F7550BCBD3520936FA40BF0280E092C3DAE9D07CCA36B4ABFD
            041AEDB2033F1886F9D3AF9C8C65FEF5437F7D967EB56DFE725E69CE2F708DCC
            44F03577FA0524C238FAA3FD809B7BB01B6301347964DB7D121CF465FC6847E3
            342E7D305FF68AFA3FC040BF525773614EB5A15D6C5A59C5980572764547C0A9
            3F328FB8567FB59B13B17C463F73229D3E1AAFE0E6FD1CBCCD3600724EF7EA41
            3A35657AC9D9C54A4A49755D17BB0BD0A414920C8CFED93D9B4572720E82FBE4
            0C063AA24F6D7A5F26C0EEB140769693E9C6412BA766C5F7FBE313B3D73B074A
            456701F7FEF0A6B0CB1CB89331E5ACDEECD8D00F6D7A5F7F72E0791E6DCF0152
            396B257D1A3C463B7F91FA6B3E93838A8638F689DAF681FF37E03AD2CB9216BE
            A601D9C75680B9A10E78B51C7DE775A906230E43657C01558AA048034CBA9C63
            0629813160608CDEC24CCE5105B2FAC7B029C5E7A55E409173622F9494A89D52
            4152493F8C8BD2531F95DE00B1D47D8129A5624A0C8973A9D900BC185F268293
            E803B0A993B9A08240FBA6BC3ABE891C7D87D53050E3C8F181FAAC2F8C96C118
            8BFE7B608163DB26538176C1AF7EF5AB87C34A8CA3FECCAA7D5FAE8244B3BCAA
            57F9CCBCEA48B3E8C0B800540C8C70C2AAF3890A9E53B53F931CC3FB804EFFD4
            570147D2722BBCE62E6C5BFFD488BDAFB6E7F58D36DAC8F8A6AA713F5C817A22
            6332564E2AAD052A18651C99B12790F487042DDBBEF76A9ECF4ED5EB27F51F18
            D1338048301578F433079E1380641EF33456BE6AA8FE4CD4B99AAA6D4EB2B91C
            AB2848654B9E45C87CEB80FE1917DB90C1D0019697BD98B5AD89AA4FECA1DE62
            7222FA0990A99F026EF574FDA1F38CD3B56C3E8C970DD7CF4DD4BECCAF3A9BAC
            F7980016F9660BB620D0E5485173A52DD76827355A63764F0CBB06EA89AAB3C9
            EA2FF393018C9FEFCABEFCC868C60142C0C8295CC3479691AD36DE323CCF24B5
            D41CEB98749ABEC3F8F4DF6F4129C7310E4B72DA9B9CF2D07FDB8BBF7051290B
            4F292D8D9FC8D50376987B9D93091351E7ADB5C726720CA36B52CEE8996EB6F6
            A52C98C7CFCDAFDF752CFAC7A64735F86932857BEA6B6F28FF8F32D1D74D9778
            F1C2DA09FABC561DE882E1A2582E99A790AD7698C70773DE2723CAD7C0A4EE65
            3129DBAC9C3D60C23DB1C490EAC42DA8C63419FA6E72393530B668C1E845640C
            C804023606AF8DA4654921BA53D71B280252057FE096AFB5F0C300AC7E724469
            684E8FCF96190B3F1CF11BDFF8C6C4669B6DB6A082CB641DCB82EA1413492D63
            28FA911A4E024B56BBB5E9BE580863078040BBB6319993E001656DE6F1F5EF55
            EADFB61BA05956381FAEFFCFB225C6F82D22D04B5F1E280B0F9798D48F7C2D0E
            3DA59EC7C839B8B162A07992C7B5400748706A065DF53A5181766AFFFDF79F6F
            C120CCC80E8A6420762A98F73C9A895DBA1710880127507BBD06ACA9AABBF939
            AD2A8762F7470406F4E9DCFC5A0854D291B5C842D89D9A2F27ACE39BAAF33719
            870B3B672BB2073B39B034631550E93DE722A76C421F4A3302497D9F0F4E0270
            9F93D564810B40725C0C58D0B6006A614AF662514F76A37460EE2DC678BDF661
            AA8E6F2A67E7DABD61053C603C5E0A8BD8B62558E8ABBDBB88051290B24AFC32
            EB1839CF02CB1550F5671C80F27F020EDD2653C87EE43EDD96C9D0511E2BEECB
            2C79B8488695735673884CFF6D0761E24A5AAEA3CFF16F1818DFE1309E1DF463
            486D3CB832D301E1D14D16F013E4333EC42975FEDE461FCD17243E5AF96F9E8C
            47CA2FD236A10000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 468.661720000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 574.488560000000000000
          Top = 71.811070000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."TOTAL">,MasterData1)]')
        end
        object Memo14: TfrxMemoView
          Left = 449.764070000000000000
          Top = 26.456710000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Valor dos Produtos:')
        end
        object Memo15: TfrxMemoView
          Left = 472.441250000000000000
          Top = 49.133890000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total Desconto:')
        end
        object Memo16: TfrxMemoView
          Left = 498.897960000000000000
          Top = 71.811070000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Valor Total:')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 574.488560000000000000
          Top = 26.456710000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."VALOR">,MasterData1)]')
        end
        object SysMemo3: TfrxSysMemoView
          Left = 574.488560000000000000
          Top = 49.133890000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."DESCONTO">,MasterData1)]')
        end
        object Line4: TfrxLineView
          Top = 100.047310000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo20: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370130000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Garantia de (     ) Meses')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = cdsEmitente
    BCDToCurrency = False
    Left = 492
    Top = 8
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = cdsCliente
    BCDToCurrency = False
    Left = 428
    Top = 24
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSet = cdsItem
    BCDToCurrency = False
    Left = 556
    Top = 24
  end
  object dsCestNCM: TDataSource
    DataSet = cdsCestNCM
    Left = 640
    Top = 80
  end
  object cdsCestNCM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCestNCM'
    Left = 552
    Top = 80
    object cdsCestNCMCEST: TStringField
      FieldName = 'CEST'
      Size = 10
    end
    object cdsCestNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsCestNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsCestNCMDESCNCM: TStringField
      FieldName = 'DESCNCM'
      Size = 100
    end
    object cdsCestNCMALIQFEDNACIONAL: TSingleField
      FieldName = 'ALIQFEDNACIONAL'
    end
    object cdsCestNCMALIQFEDIMPORTADO: TSingleField
      FieldName = 'ALIQFEDIMPORTADO'
    end
    object cdsCestNCMALIQESTADUAL: TSingleField
      FieldName = 'ALIQESTADUAL'
    end
    object cdsCestNCMALIQMUNICIPAL: TSingleField
      FieldName = 'ALIQMUNICIPAL'
    end
  end
  object dspCestNCM: TDataSetProvider
    DataSet = sqlCestNCM
    Left = 472
    Top = 80
  end
  object sqlCestNCM: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select cest.cest, cest.ncm, cest.descricao, ncm.descricao as des' +
        'cncm,'
      
        'ncm.aliqfednacional, ncm.aliqfedimportado, ncm.aliqestadual, ncm' +
        '.aliqmunicipal'
      'from cest'
      'join ncm on'
      'cest.ncm = ncm.ncm')
    SQLConnection = dtmDados
    Left = 392
    Top = 80
    object sqlCestNCMCEST: TStringField
      FieldName = 'CEST'
      Size = 10
    end
    object sqlCestNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object sqlCestNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object sqlCestNCMDESCNCM: TStringField
      FieldName = 'DESCNCM'
      Size = 100
    end
    object sqlCestNCMALIQFEDNACIONAL: TSingleField
      FieldName = 'ALIQFEDNACIONAL'
    end
    object sqlCestNCMALIQFEDIMPORTADO: TSingleField
      FieldName = 'ALIQFEDIMPORTADO'
    end
    object sqlCestNCMALIQESTADUAL: TSingleField
      FieldName = 'ALIQESTADUAL'
    end
    object sqlCestNCMALIQMUNICIPAL: TSingleField
      FieldName = 'ALIQMUNICIPAL'
    end
  end
  object frxReport2: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40401.475989294000000000
    ReportOptions.LastChange = 42872.669820625000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  ReportTitle1.Visible := <Parametros."LogoCarregado"> <> '#39#39';'
      
        '  DadosDesconto.Visible := <Parametros."ImprimeDescAcrescItem"> ' +
        '> 0;'
      
        '  DadosAcrescimo.Visible := <Parametros."ImprimeDescAcrescItem">' +
        ' > 0;      '
      'end;'
      ''
      'procedure ValorTributosOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  ValorTributos.Visible := <CalculoImposto."VTotTrib"> > 0;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 536
    Top = 184
    Datasets = <
      item
        DataSetName = 'Identificacao'
      end
      item
        DataSetName = 'Emitente'
      end
      item
        DataSetName = 'Destinatario'
      end
      item
        DataSet = frxDadosProdutos.Owner
        DataSetName = 'DadosProdutos'
      end
      item
        DataSetName = 'Parametros'
      end
      item
        DataSetName = 'Duplicatas'
      end
      item
        DataSetName = 'CalculoImposto'
      end
      item
        DataSetName = 'Transportador'
      end
      item
        DataSetName = 'Veiculo'
      end
      item
        DataSetName = 'Volumes'
      end
      item
        DataSetName = 'Eventos'
      end
      item
        DataSetName = 'ISSQN'
      end
      item
        DataSetName = 'Fatura'
      end
      item
        DataSetName = 'LocalRetirada'
      end
      item
        DataSetName = 'LocalEntrega'
      end
      item
        DataSetName = 'InformacoesAdicionais'
      end
      item
        DataSetName = 'Pagamento'
      end
      item
        DataSetName = 'Inutilizacao'
      end>
    Variables = <
      item
        Name = ' User'
        Value = Null
      end
      item
        Name = 'LinhasImpressas'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 3.500000000000000000
      TopMargin = 0.500000000000000000
      EndlessHeight = True
      LargeDesignHeight = True
      PrintIfEmpty = False
      OnBeforePrint = 'Page1OnBeforePrint'
      object ValorTributos: TfrxMasterData
        FillType = ftBrush
        Height = 32.015752910000000000
        Top = 695.433520000000000000
        Width = 289.134045000000000000
        OnBeforePrint = 'ValorTributosOnBeforePrint'
        RowCount = 1
        object Memo17: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000020000
          Width = 194.645819410000000000
          Height = 26.456690470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Informa'#231#227'o dos Tributos Totais Incidentes '
            '(Lei Federal 12.741/2012): ')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baRight
          Left = 194.645819410000000000
          Top = 3.779530000000020000
          Width = 94.488225590000000000
          Height = 26.456690470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[CalculoImposto."vTotTrib" #n%2,2f] [CalculoImposto."VTribFonte"' +
              ']')
          ParentFont = False
          WordWrap = False
        end
      end
      object MensagemFiscal: TfrxMasterData
        FillType = ftBrush
        Height = 111.385882910000000000
        Top = 793.701300000000000000
        Width = 289.134045000000000000
        RowCount = 1
        Stretched = True
        object Memo3: TfrxMemoView
          Align = baWidth
          Top = 48.897650000000000000
          Width = 289.134045000000000000
          Height = 26.456710000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Consulte pela chave de acesso em:'
            '[Identificacao."URL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 77.472480000000000000
          Width = 289.134045000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CHAVE DE ACESSO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Align = baWidth
          Top = 18.559060000000000000
          Width = 289.134045000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              'N'#250'mero: [Identificacao."NNF"] - S'#233'rie: [Identificacao."Serie" #n' +
              '#000]'
            
              'Emiss'#227'o [Identificacao."DEmi"] - [Parametros."DescricaoViaEstabe' +
              'lec"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Align = baWidth
          Top = 91.267762910000000000
          Width = 289.134045000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."Chave"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          Top = 1.220469999999980000
          Width = 289.134045000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."MensagemFiscal"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object Consumidor: TfrxMasterData
        FillType = ftBrush
        Height = 41.574768980000000000
        Top = 929.764380000000000000
        Width = 289.134045000000000000
        RowCount = 1
        Stretched = True
        object Memo58: TfrxMemoView
          Align = baWidth
          Top = 0.779530000000023000
          Width = 289.134045000000000000
          Height = 16.251970940000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CONSUMIDOR')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo46: TfrxMemoView
          Align = baWidth
          Top = 20.787369840000000000
          Width = 289.134045000000000000
          Height = 17.007839840000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Destinatario."Consumidor"]')
          ParentFont = False
        end
      end
      object Rodape: TfrxMasterData
        FillType = ftBrush
        Height = 175.637892910000000000
        Top = 994.016390000000000000
        Width = 289.134045000000000000
        RowCount = 1
        object ImgQrCode: TfrxPictureView
          Align = baWidth
          Top = 20.322834650000000000
          Width = 289.134045000000000000
          Height = 117.165322600000000000
          Center = True
          Frame.Color = clFuchsia
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo22: TfrxMemoView
          Align = baWidth
          Top = 158.181200000000000000
          Width = 289.134045000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Contingencia_Valor"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000020000
          Width = 289.134045000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Consulta via leitor de QR Code')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Top = 141.401670000000000000
          Width = 289.134045000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Protocolo de Autoriza'#231#227'o')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object DadosProdutos: TfrxMasterData
        FillType = ftBrush
        Height = 26.456702680000000000
        Top = 389.291590000000000000
        Width = 289.134045000000000000
        OnBeforePrint = 'DadosProdutosOnBeforePrint'
        DataSet = frxDadosProdutos.Owner
        DataSetName = 'DadosProdutos'
        RowCount = 0
        Stretched = True
        object Memo131: TfrxMemoView
          ShiftMode = smDontShift
          Width = 75.590560940000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DadosProdutos."CProd"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo132: TfrxMemoView
          ShiftMode = smDontShift
          Left = 76.031500940000000000
          Width = 196.535599060000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DadosProdutos."DescricaoProduto"]')
          ParentFont = False
        end
        object memqCom: TfrxMemoView
          Top = 13.496065430000000000
          Width = 79.370093390000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."QCom"] [DadosProdutos."UCom"]')
          ParentFont = False
          WordWrap = False
        end
        object memvUnCom: TfrxMemoView
          Left = 79.370078740000000000
          Top = 13.496065430000000000
          Width = 94.488188980000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VUnTrib"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo140: TfrxMemoView
          Left = 173.858267720000000000
          Top = 13.496065430000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VProd"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object DadosProdutosHeader: TfrxGroupHeader
        FillType = ftBrush
        Height = 27.590560940000000000
        Top = 340.157700000000000000
        Width = 289.134045000000000000
        Condition = 'DadosProdutos."ChaveNFe"'
        object Memo121: TfrxMemoView
          Left = 56.692913390000000000
          Top = 14.472448270000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UN')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 79.370078740000000000
          Top = 14.472448270000000000
          Width = 94.488188980000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VL.UNIT')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Top = 1.354328270000000000
          Width = 68.031500940000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 68.472440940000000000
          Top = 1.354328270000000000
          Width = 204.094659060000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Top = 14.472448270000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'QTD')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 173.858267720000000000
          Top = 14.472448270000000000
          Width = 98.267892280000000000
          Height = 11.338572910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'VL.TOTAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object DadosPagamentoHeader: TfrxGroupHeader
        FillType = ftBrush
        Height = 98.401630940000000000
        Top = 536.693260000000000000
        Width = 289.134045000000000000
        Condition = 'DadosProdutos."ChaveNFe"'
        ReprintOnNewPage = True
        object memTitDadosPagamento: TfrxMemoView
          Top = 6.338590000000010000
          Width = 128.504020000000000000
          Height = 91.842570940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            'QTD. TOTAL DE ITENS'
            ''
            'Valor Produtos'
            'Descontos'
            'Acr'#233'scimos'
            'VALOR A PAGAR'
            ''
            'FORMA DE PAGAMENTO  ')
          ParentFont = False
          WordWrap = False
        end
        object memDadosPagamento: TfrxMemoView
          Left = 128.504020000000000000
          Top = 6.338590000000010000
          Width = 143.622140000000000000
          Height = 91.842570940000000000
          DataSetName = 'Parametros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Parametros."QtdeItens"]'
            ''
            '[CalculoImposto."VProd" #n%2.2f]'
            '[CalculoImposto."VDesc" #n%2.2f]'
            '[CalculoImposto."VOutro" #n%2.2f]'
            '[<CalculoImposto."ValorApagar"> #n%2.2f]'
            ''
            'VALOR')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 289.134045000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object DadosPagamento: TfrxMasterData
        FillType = ftBrush
        Height = 14.740159920000000000
        Top = 657.638220000000000000
        Width = 289.134045000000000000
        DataSetName = 'Pagamento'
        RowCount = 0
        Stretched = True
        object Memo19: TfrxMemoView
          Top = 2.000000000000000000
          Width = 128.504020000000000000
          Height = 12.472440940000000000
          DataSetName = 'Pagamento'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[Pagamento."tPag"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 128.504020000000000000
          Top = 2.110233780000040000
          Width = 143.622140000000000000
          Height = 12.472440940000000000
          DataSetName = 'Pagamento'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pagamento."vPag"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 289.134045000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        PrintChildIfInvisible = True
        Stretched = True
        object ImgLogo: TfrxPictureView
          Left = 45.354360000000000000
          Top = 2.677180000000000000
          Width = 177.637910000000000000
          Height = 64.252010000000000000
          Center = True
          DataField = 'LogoCarregado'
          DataSetName = 'Parametros'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object DadosDesconto: TfrxDetailData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 438.425480000000000000
        Width = 289.134045000000000000
        Filter = '<DadosProdutos."vDesc"> > 0'
        RowCount = 1
        object Memo7: TfrxMemoView
          Left = 173.858380000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '- [DadosProdutos."vDesc"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 71.811070000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 173.858380000000000000
          Top = 11.338590000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<DadosProdutos."Valorliquido">]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 71.811070000000000000
          Top = 11.338590000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor l'#237'quido')
          ParentFont = False
          WordWrap = False
        end
      end
      object DadosAcrescimo: TfrxDetailData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 487.559370000000000000
        Width = 289.134045000000000000
        Filter = '<DadosProdutos."VOutro"> > 0'
        RowCount = 1
        object Memo11: TfrxMemoView
          Left = 173.858380000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '+ [DadosProdutos."VOutro"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 71.811070000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Acr'#233'scimo')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 173.858380000000000000
          Top = 11.338590000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<DadosProdutos."ValorAcrescimos">]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 11.338590000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor l'#237'quido')
          ParentFont = False
          WordWrap = False
        end
      end
      object Observacoes: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 752.126470000000000000
        Width = 289.134045000000000000
        Filter = '<InformacoesAdicionais."OBS"> <> '#39#39
        RowCount = 1
        Stretched = True
        object Memo21: TfrxMemoView
          Align = baWidth
          Width = 289.134045000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[InformacoesAdicionais."OBS"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 166.299320000000000000
        Top = 113.385900000000000000
        Width = 289.134045000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          ShiftMode = smWhenOverlapped
          Top = 66.031540000000000000
          Width = 289.134045000000000000
          Height = 58.582691810000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          LineSpacing = 4.000000000000000000
          Memo.UTF8W = (
            '[Emitente."XNome"]'
            
              'CNPJ: [Emitente."CNPJ"] - IE: [Emitente."IE"] - IM: [Emitente."I' +
              'M"]'
            '[Emitente."XLgr"], [Emitente."nro"] - [Emitente."xBairro"]'
            '[Emitente."XMun"] - [Emitente."UF"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          ShiftMode = smWhenOverlapped
          Top = 126.181200000000000000
          Width = 289.134045000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DANFE NFC-e - Documento Auxiliar '
            'da Nota Fiscal de Consumidor Eletr'#244'nica')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Align = baWidth
          ShiftMode = smWhenOverlapped
          Top = 149.622140000000000000
          Width = 289.134045000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#227'o permite aproveitamento de cr'#233'dito do ICMS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
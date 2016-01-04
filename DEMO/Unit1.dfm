object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 317
  ClientWidth = 812
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 3
    Top = 7
    Width = 177
    Height = 82
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 95
    Width = 812
    Height = 222
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 232
    Top = 32
    Width = 249
    Height = 21
    TabOrder = 2
    Text = 'SELECT * FROM EMPLOYEE'
  end
  object Button1: TButton
    Left = 488
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = RESTClientSQL
    Left = 487
    Top = 72
  end
  object RESTClientSQL: TRESTClientSQL
    AutoCalcFields = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    AutoCommit = True
    DataCache = False
    Params = <>
    DataBase = RESTDataBase
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE')
    Left = 459
    Top = 72
    object RESTClientSQLEMP_NO: TSmallintField
      DisplayLabel = 'Numero'
      FieldName = 'EMP_NO'
      Required = True
    end
    object RESTClientSQLFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      Required = True
      Size = 15
    end
    object RESTClientSQLLAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Required = True
    end
    object RESTClientSQLPHONE_EXT: TStringField
      FieldName = 'PHONE_EXT'
      Size = 4
    end
    object RESTClientSQLHIRE_DATE: TSQLTimeStampField
      FieldName = 'HIRE_DATE'
      Required = True
    end
    object RESTClientSQLDEPT_NO: TStringField
      FieldName = 'DEPT_NO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object RESTClientSQLJOB_CODE: TStringField
      FieldName = 'JOB_CODE'
      Required = True
      Size = 5
    end
    object RESTClientSQLJOB_GRADE: TSmallintField
      FieldName = 'JOB_GRADE'
      Required = True
    end
    object RESTClientSQLJOB_COUNTRY: TStringField
      FieldName = 'JOB_COUNTRY'
      Required = True
      Size = 15
    end
    object RESTClientSQLSALARY: TFloatField
      FieldName = 'SALARY'
      Required = True
    end
    object RESTClientSQLFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 37
    end
  end
  object RESTDataBase: TRESTDataBase
    OnConnection = RESTDataBaseConnection
    Active = False
    Proxy = False
    PoolerService = '127.0.0.1'
    PoolerPort = 8080
    RestModule = 'TServerMethods1'
    TimeOut = 0
    Left = 432
    Top = 72
  end
end

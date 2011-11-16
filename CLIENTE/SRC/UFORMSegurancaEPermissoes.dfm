object FORMSegurancaEPermissoes: TFORMSegurancaEPermissoes
  Left = 0
  Top = 0
  Caption = 'FORMSegurancaEPermissoes'
  ClientHeight = 202
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 82
    Width = 601
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 168
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 249
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    Params = <>
    ProviderName = 'DSPRUsuarios'
    OnReconcileError = ClientDataSet1ReconcileError
    BeforeApplyUpdates = ClientDataSet1BeforeApplyUpdates
    BeforeGetRecords = ClientDataSet1BeforeGetRecords
    BeforeRowRequest = ClientDataSet1BeforeRowRequest
    BeforeExecute = ClientDataSet1BeforeExecute
    BeforeGetParams = ClientDataSet1BeforeGetParams
    Left = 30
    Top = 6
    object ClientDataSet1sm_usuarios_id: TSmallintField
      FieldName = 'sm_usuarios_id'
    end
    object ClientDataSet1va_nome: TWideStringField
      FieldName = 'va_nome'
      Size = 64
    end
    object ClientDataSet1va_login: TWideStringField
      FieldName = 'va_login'
      Size = 16
    end
    object ClientDataSet1ch_senha: TWideStringField
      FieldName = 'ch_senha'
      Size = 128
    end
    object ClientDataSet1va_email: TWideStringField
      FieldName = 'va_email'
      Size = 64
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 360
    Top = 18
  end
end

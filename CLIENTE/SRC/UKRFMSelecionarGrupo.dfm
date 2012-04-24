inherited KRFMSelecionarGrupo: TKRFMSelecionarGrupo
  Caption = 'Selecionar grupos'
  ClientWidth = 364
  Position = poMainFormCenter
  ExplicitWidth = 370
  PixelsPerInch = 96
  TextHeight = 13
  inherited KRDGSelecao: TKRKDBGrid
    Width = 364
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    OptionsEx = [dgAllowTitleClick, dgAutomaticColumSizes]
    ReadOnly = True
    RowColors = <
      item
        BackgroundColor = clBtnFace
        ForegroundColor = clNone
      end>
    VariableWidthColumns = '<va_nome>'
    Columns = <
      item
        Expanded = False
        FieldName = 'va_nome'
        Title.Caption = 'Grupo'
        Width = 310
        Visible = True
      end>
  end
  inherited DTSR: TDataSource
    DataSet = CLDS
  end
  inherited CLDS: TClientDataSet
    Params = <
      item
        DataType = ftSmallint
        Name = 'SM_GRUPOS_ID'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_NOME'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_DESCRICAO'
        ParamType = ptInput
        Value = Null
      end>
    object CLDSsm_grupos_id: TSmallintField
      FieldName = 'sm_grupos_id'
    end
    object CLDSva_nome: TWideStringField
      FieldName = 'va_nome'
      Required = True
      Size = 64
    end
    object CLDSva_descricao: TWideStringField
      FieldName = 'va_descricao'
      Required = True
      Size = 128
    end
  end
end

object DM: TDM
  Height = 513
  Width = 776
  object connection: TFDConnection
    Params.Strings = (
      'Database=casas'
      'User_Name=admin'
      'Password=joaobr12'
      'Server=casas.cfydoor5czhr.us-east-1.rds.amazonaws.com'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 56
  end
  object sqlFindHouse: TFDQuery
    Active = True
    Connection = connection
    SQL.Strings = (
      'SELECT * FROM casas')
    Left = 592
    Top = 56
    ParamData = <
      item
        Name = 'pConsulta'
        ParamType = ptInput
      end
      item
        Name = 'pNum'
        ParamType = ptInput
      end>
    object sqlFindHousenum: TIntegerField
      FieldName = 'num'
      Origin = 'num'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlFindHouserua: TStringField
      FieldName = 'rua'
      Origin = 'rua'
      Required = True
      Size = 80
    end
    object sqlFindHousebairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 50
    end
    object sqlFindHousevalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object sqlFindHousedia_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'dia_pag'
      Origin = 'dia_pag'
    end
    object sqlFindHousedata_inicial: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_inicial'
      Origin = 'data_inicial'
      EditMask = '##/##/####;1;_'
    end
    object sqlFindHousedata_final: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_final'
      Origin = 'data_final'
      EditMask = '##/##/####;1;_'
    end
    object sqlFindHouseNomeInquilino: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeInquilino'
      LookupDataSet = sqlFindUser
      LookupKeyFields = 'num_casa'
      LookupResultField = 'nome'
      KeyFields = 'num'
      Size = 50
      Lookup = True
    end
  end
  object dsFindHouse: TDataSource
    DataSet = sqlFindHouse
    OnDataChange = dsFindHouseDataChange
    Left = 664
    Top = 56
  end
  object sqlFindUser: TFDQuery
    Active = True
    IndexesActive = False
    Connection = connection
    SQL.Strings = (
      'SELECT * FROM inquilinos'
      '')
    Left = 592
    Top = 120
    object sqlFindUsercpf: TStringField
      FieldName = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
    object sqlFindUsernome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object sqlFindUsercelular: TStringField
      FieldName = 'celular'
      Required = True
      EditMask = '(##)# ####-####;1;_'
      Size = 16
    end
    object sqlFindUserindicacao: TStringField
      FieldName = 'indicacao'
      Required = True
      Size = 50
    end
    object sqlFindUsernum_casa: TIntegerField
      FieldName = 'num_casa'
      Required = True
    end
    object sqlFindUserobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
  end
  object dsFindUser: TDataSource
    DataSet = sqlFindUser
    Left = 672
    Top = 128
  end
  object sqlDesapropiateHouseDeleteUser: TFDCommand
    Connection = connection
    CommandText.Strings = (
      'DELETE FROM inquilinos WHERE num_casa = :pNum')
    ParamData = <
      item
        Name = 'pNum'
        DataType = ftInteger
        ParamType = ptInput
      end>
    Left = 360
    Top = 48
  end
  object sqlDesapropiateHouseUpdatePayDay: TFDCommand
    Connection = connection
    CommandText.Strings = (
      'UPDATE casas SET dia_pag = NULL WHERE num = :pNum')
    ParamData = <
      item
        Name = 'pNum'
        ParamType = ptInput
      end>
    Left = 360
    Top = 104
  end
  object sqlDesapropiateHouseUpdateBeginDate: TFDCommand
    Connection = connection
    CommandText.Strings = (
      'UPDATE casas SET data_inicial = NULL WHERE num = :pNum')
    ParamData = <
      item
        Name = 'pNum'
        ParamType = ptInput
      end>
    Left = 360
    Top = 152
  end
  object sqlDesapropiateHouseUpdateEndDate: TFDCommand
    Connection = connection
    CommandText.Strings = (
      'UPDATE casas SET data_final = NULL WHERE num = :pNum')
    ParamData = <
      item
        Name = 'pNum'
        ParamType = ptInput
      end>
    Left = 360
    Top = 200
  end
  object sqlInsertUsers: TFDCommand
    Connection = connection
    CommandText.Strings = (
      'INSERT INTO inquilinos(cpf,nome,celular,indicacao,num_casa)'
      'VALUES (:pCpf,:pName,:pCelular,:pIndicacao,:pNumCasa) ')
    ParamData = <
      item
        Name = 'pCpf'
        ParamType = ptInput
      end
      item
        Name = 'pName'
        ParamType = ptInput
      end
      item
        Name = 'pCelular'
        ParamType = ptInput
      end
      item
        Name = 'pIndicacao'
        ParamType = ptInput
      end
      item
        Name = 'pNumCasa'
        ParamType = ptInput
      end>
    Left = 144
    Top = 80
  end
  object sqlEditHouse: TFDCommand
    Connection = connection
    CommandText.Strings = (
      'UPDATE casas'
      
        'SET dia_pag = :pPayDay,data_inicial = :pBeginDate, data_final = ' +
        ':pEndDate'
      'WHERE num = :pNumHouse')
    ParamData = <
      item
        Name = 'pPayDay'
        ParamType = ptInput
      end
      item
        Name = 'pBeginDate'
        ParamType = ptInput
      end
      item
        Name = 'pEndDate'
        ParamType = ptInput
      end
      item
        Name = 'pNumHouse'
        ParamType = ptInput
      end>
    Left = 144
    Top = 136
  end
  object sqlSistema: TFDQuery
    Connection = connection
    SQL.Strings = (
      'SELECT *  FROM sistema')
    Left = 336
    Top = 320
  end
  object sqlUpdateTheme: TFDCommand
    Connection = connection
    CommandText.Strings = (
      'UPDATE sistema SET theme = :pTheme')
    ParamData = <
      item
        Name = 'pTheme'
        ParamType = ptInput
      end>
    Left = 424
    Top = 320
  end
end

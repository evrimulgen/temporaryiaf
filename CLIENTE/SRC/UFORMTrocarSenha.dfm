object FORMTrocarSenha: TFORMTrocarSenha
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Alterar Senha'
  ClientHeight = 165
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    294
    165)
  PixelsPerInch = 96
  TextHeight = 13
  object BVELLayer: TBevel
    AlignWithMargins = True
    Left = 6
    Top = 6
    Width = 282
    Height = 153
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    Shape = bsFrame
    ExplicitLeft = 114
    ExplicitTop = 18
    ExplicitWidth = 50
    ExplicitHeight = 50
  end
  object BUTNOk: TButton
    Left = 14
    Top = 126
    Width = 130
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Confirmar'
    Default = True
    TabOrder = 0
    OnClick = BUTNOkClick
  end
  object BUTNCancelar: TButton
    Left = 150
    Top = 126
    Width = 130
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 1
  end
  object LAEDSenhaAtual: TLabeledEdit
    Left = 14
    Top = 24
    Width = 266
    Height = 21
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 57
    EditLabel.Height = 13
    EditLabel.Caption = 'Senha atual'
    LabelSpacing = 1
    PasswordChar = '*'
    TabOrder = 2
  end
  object LAEDNovaSenha: TLabeledEdit
    Left = 14
    Top = 61
    Width = 266
    Height = 21
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 57
    EditLabel.Height = 13
    EditLabel.Caption = 'Nova senha'
    LabelSpacing = 1
    PasswordChar = '*'
    TabOrder = 3
  end
  object LAEDNovaSenha2: TLabeledEdit
    Left = 14
    Top = 98
    Width = 266
    Height = 21
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 126
    EditLabel.Height = 13
    EditLabel.Caption = 'Nova senha (confirma'#231#227'o)'
    LabelSpacing = 1
    PasswordChar = '*'
    TabOrder = 4
  end
end

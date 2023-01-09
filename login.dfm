object UniLoginForm1: TUniLoginForm1
  Left = 0
  Top = 0
  ClientHeight = 467
  ClientWidth = 309
  Caption = 'UniLoginForm1'
  OnShow = UniLoginFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Height = -12
  TextHeight = 15
  object panel2: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 309
    Height = 467
    Hint = ''
    ParentColor = False
    Color = clHotLight
    Align = alClient
    TabOrder = 0
    object botaoLogin: TUniBitBtn
      AlignWithMargins = True
      Left = 80
      Top = 266
      Width = 149
      Height = 50
      Cursor = crHandPoint
      Hint = ''
      Margins.Left = 80
      Margins.Top = 30
      Margins.Right = 80
      Caption = 'LOGIN'
      Align = alTop
      ParentFont = False
      Font.Color = 2960685
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      TabOrder = 3
      Images = UniMainModule.imageList1
      ImageIndex = 39
      OnClick = botaoLoginClick
      ExplicitTop = 270
    end
    object botaoSair: TUniBitBtn
      AlignWithMargins = True
      Left = 80
      Top = 339
      Width = 149
      Height = 50
      Cursor = crHandPoint
      Hint = ''
      Margins.Left = 80
      Margins.Top = 20
      Margins.Right = 80
      Margins.Bottom = 150
      Caption = 'SAIR'
      ModalResult = 8
      Align = alTop
      ParentFont = False
      Font.Color = 2960685
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      TabOrder = 4
      Images = UniMainModule.imageList1
      ImageIndex = 35
      ExplicitTop = 343
    end
    object editSenha: TUniEdit
      AlignWithMargins = True
      Left = 80
      Top = 199
      Width = 149
      Height = 34
      Hint = ''
      Margins.Left = 80
      Margins.Top = 0
      Margins.Right = 80
      PasswordChar = '*'
      Text = ''
      ParentFont = False
      Font.Color = 2960685
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Align = alTop
      TabOrder = 1
      OnEnter = editSenhaEnter
      OnKeyPress = editSenhaKeyPress
    end
    object editUsuario: TUniEdit
      AlignWithMargins = True
      Left = 80
      Top = 126
      Width = 149
      Height = 35
      Hint = ''
      Margins.Left = 80
      Margins.Top = 0
      Margins.Right = 80
      CharCase = ecUpperCase
      Text = ''
      ParentFont = False
      Font.Color = 2960685
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Align = alTop
      TabOrder = 0
      OnEnter = editUsuarioEnter
      OnKeyPress = editUsuarioKeyPress
    end
    object label1: TUniLabel
      AlignWithMargins = True
      Left = 3
      Top = 174
      Width = 303
      Height = 25
      Hint = ''
      Margins.Top = 10
      Margins.Bottom = 0
      Alignment = taCenter
      AutoSize = False
      Caption = 'Senha'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      TabOrder = 5
    end
    object label2: TUniLabel
      AlignWithMargins = True
      Left = 3
      Top = 101
      Width = 303
      Height = 25
      Hint = ''
      Margins.Top = 15
      Margins.Bottom = 0
      Alignment = taCenter
      AutoSize = False
      Caption = 'Usu'#225'rio'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      TabOrder = 6
    end
    object label3: TUniLabel
      AlignWithMargins = True
      Left = 3
      Top = 50
      Width = 303
      Height = 33
      Hint = ''
      Margins.Top = 50
      Alignment = taCenter
      AutoSize = False
      Caption = 'MIREAPP'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      TabOrder = 7
    end
  end
  object qry: TFDQuery
    ActiveStoredUsage = []
    Connection = UniMainModule.conlocal
    SQL.Strings = (
      'select * from lojas')
    Left = 224
    Top = 40
  end
end

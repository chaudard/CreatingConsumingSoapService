object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 241
    Height = 265
    Caption = 'Request'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 48
      Width = 51
      Height = 13
      Caption = 'First Name'
    end
    object Label2: TLabel
      Left = 24
      Top = 88
      Width = 50
      Height = 13
      Caption = 'Last Name'
    end
    object Label3: TLabel
      Left = 24
      Top = 128
      Width = 30
      Height = 13
      Caption = 'Salary'
    end
    object edtReqFirstName: TEdit
      Left = 88
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtReqLastName: TEdit
      Left = 88
      Top = 85
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object spedReqSalary: TSpinEdit
      Left = 88
      Top = 125
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 392
    Top = 16
    Width = 235
    Height = 265
    Caption = 'Response'
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 48
      Width = 51
      Height = 13
      Caption = 'First Name'
    end
    object Label5: TLabel
      Left = 16
      Top = 88
      Width = 50
      Height = 13
      Caption = 'Last Name'
    end
    object Label6: TLabel
      Left = 16
      Top = 128
      Width = 30
      Height = 13
      Caption = 'Salary'
    end
    object edtResFirstName: TEdit
      Left = 88
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtResLastName: TEdit
      Left = 88
      Top = 85
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object spedResSalary: TSpinEdit
      Left = 88
      Top = 125
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
  end
  object Button1: TButton
    Left = 288
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Echo'
    TabOrder = 2
    OnClick = Button1Click
  end
end

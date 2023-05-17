object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
  ClientHeight = 380
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 380
    Align = alClient
    TabOrder = 0
    ExplicitTop = 8
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 735
      Height = 80
      Align = alTop
      Caption = 'Thread 1'
      TabOrder = 0
      ExplicitTop = 0
      object Panel2: TPanel
        Left = 2
        Top = 15
        Width = 95
        Height = 63
        Align = alLeft
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 17
        object SpThread1: TSpinEdit
          Left = 9
          Top = 22
          Width = 80
          Height = 23
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 0
        end
      end
      object Pbthread1: TProgressBar
        Left = 97
        Top = 15
        Width = 636
        Height = 63
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 103
        ExplicitTop = 11
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 81
      Width = 735
      Height = 80
      Align = alTop
      Caption = 'Thread 2'
      TabOrder = 1
      ExplicitTop = 85
      object Panel3: TPanel
        Left = 2
        Top = 15
        Width = 95
        Height = 63
        Align = alLeft
        TabOrder = 0
        ExplicitLeft = 10
        ExplicitTop = 17
        object SpThread2: TSpinEdit
          Left = 9
          Top = 22
          Width = 80
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 0
        end
      end
      object Pbthread2: TProgressBar
        Left = 97
        Top = 15
        Width = 636
        Height = 63
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 103
      end
    end
    object BtnExecutar: TBitBtn
      Left = 240
      Top = 194
      Width = 241
      Height = 47
      Align = alCustom
      Caption = 'Iniciar'
      TabOrder = 2
      OnClick = BtnExecutarClick
    end
  end
end

object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 461
  ClientWidth = 842
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 842
    Height = 461
    Align = alClient
    TabOrder = 0
    object pnTotais: TPanel
      Left = 1
      Top = 350
      Width = 840
      Height = 110
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object pnBotoes: TPanel
        Left = 556
        Top = 0
        Width = 284
        Height = 110
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Lbtotal: TLabel
          Left = 155
          Top = 7
          Width = 44
          Height = 13
          Caption = 'Total R$:'
        end
        object Lbtotaldiv: TLabel
          Left = 153
          Top = 57
          Width = 85
          Height = 13
          Caption = 'Total divis'#245'es R$:'
        end
        object Btntotal: TButton
          Left = 26
          Top = 26
          Width = 107
          Height = 25
          Caption = 'Obter Total'
          TabOrder = 0
          OnClick = BtntotalClick
        end
        object edtTotal: TEdit
          Left = 153
          Top = 26
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Btntotaldiv: TButton
          Left = 10
          Top = 69
          Width = 131
          Height = 25
          Caption = 'Obter Total Divis'#245'es'
          TabOrder = 2
          OnClick = BtntotaldivClick
        end
        object edtTotalDivisoes: TEdit
          Left = 153
          Top = 71
          Width = 121
          Height = 21
          TabOrder = 3
        end
      end
    end
    object pnValoresProjeto: TPanel
      Left = 1
      Top = 1
      Width = 840
      Height = 349
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      object Lbdescricao: TLabel
        Left = 5
        Top = 5
        Width = 830
        Height = 13
        Align = alTop
        Caption = 'Valores por projeto:'
        ExplicitWidth = 96
      end
      object Dbgvalores: TDBGrid
        Left = 5
        Top = 18
        Width = 830
        Height = 326
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = 'IdProjeto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'NomeProjeto'
            Width = 505
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Title.Caption = 'Valor'
            Width = 103
            Visible = True
          end>
      end
    end
  end
end

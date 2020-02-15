object Form1: TForm1
  Left = 491
  Top = 160
  BorderStyle = bsDialog
  ClientHeight = 184
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    000001000200101010000000000028010000260000002020100000000000E802
    00004E0100002800000010000000200000000100040000000000C00000000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00FFFFF888888FFFFFFFFF88888888FFFFFF88
    8888888888FFFF888888888888FFF88844888988898F88884488898899888888
    4488899998888888448889888988888844888988889888884488898888988444
    444449889988F44444444999988FFF888888888888FFFF888888888888FFFFFF
    88888888FFFFFFFFF888888FFFFF000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000280000002000000040000000010004000000
    0000800200000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFF888888888
    8FFFFFFFFFFFFFFFFFFFF88888888888888FFFFFFFFFFFFFFFF8888888888888
    88888FFFFFFFFFFFFF88888888888888888888FFFFFFFFFFF888888888888888
    8888888FFFFFFFFF888888888888888888888888FFFFFFFF8888888888888888
    88888888FFFFFFF88888888888888888888888888FFFFF888888884488888998
    8888899888FFFF8888888844888889988888899888FFFF888888884488888998
    8888998888FFF888888888448888899888899988888FF8888888884488888998
    88899888888FF888888888448888899888998888888FF8888888884488888999
    99999988888FF888888888448888899999999988888FF8888888884488888998
    88888998888FF888888888448888899888888998888FF8888888884488888998
    88888998888FF888888888448888899888888998888FF8888888884488888998
    88888998888FFF8884444444444449999999998888FFFF888444444444444999
    9999998888FFFF8888888888888888888888888888FFFFF88888888888888888
    888888888FFFFFFF888888888888888888888888FFFFFFFF8888888888888888
    88888888FFFFFFFFF8888888888888888888888FFFFFFFFFFF88888888888888
    888888FFFFFFFFFFFFF888888888888888888FFFFFFFFFFFFFFFF88888888888
    888FFFFFFFFFFFFFFFFFFFF8888888888FFFFFFFFFFF00000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 274
    Height = 184
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Admin'
      OnShow = TabSheet1Show
      object Label1: TLabel
        Left = 40
        Top = 8
        Width = 25
        Height = 13
        Caption = 'Login'
      end
      object Label2: TLabel
        Left = 40
        Top = 48
        Width = 46
        Height = 13
        Caption = 'Password'
      end
      object Edit1: TEdit
        Left = 40
        Top = 24
        Width = 177
        Height = 21
        TabOrder = 0
        OnChange = Edit1Change
      end
      object Edit2: TEdit
        Left = 40
        Top = 64
        Width = 177
        Height = 21
        TabOrder = 1
        OnChange = Edit2Change
      end
      object Button1: TButton
        Left = 40
        Top = 96
        Width = 89
        Height = 25
        Caption = 'Sign up'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 136
        Top = 96
        Width = 81
        Height = 25
        Caption = 'Sign in'
        TabOrder = 3
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 40
        Top = 128
        Width = 177
        Height = 25
        Caption = 'Sign up as user'
        TabOrder = 4
        OnClick = Button3Click
      end
      object DBGrid1: TDBGrid
        Left = 32
        Top = 176
        Width = 321
        Height = 97
        DataSource = DataSource2
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Name'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Passw'
            Width = 85
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Users'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Label3: TLabel
        Left = 40
        Top = 32
        Width = 25
        Height = 13
        Caption = 'Login'
      end
      object Label4: TLabel
        Left = 40
        Top = 72
        Width = 46
        Height = 13
        Caption = 'Password'
      end
      object Edit3: TEdit
        Left = 40
        Top = 48
        Width = 177
        Height = 21
        TabOrder = 0
        OnChange = Edit3Change
      end
      object Edit4: TEdit
        Left = 40
        Top = 88
        Width = 177
        Height = 21
        TabOrder = 1
        OnChange = Edit4Change
      end
      object Button6: TButton
        Left = 40
        Top = 120
        Width = 89
        Height = 25
        Caption = 'Sign in'
        TabOrder = 2
        OnClick = Button6Click
      end
      object BitBtn1: TBitBtn
        Left = 144
        Top = 120
        Width = 75
        Height = 25
        Caption = 'LMS'
        TabOrder = 3
        OnClick = BitBtn1Click
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          BB0DBDB00000BBBBBBBBBBBBBB0DDDD00000BBBBBBBBBBBBBB0DDDD00000BBBB
          B000BBBBBBB0DD0B0000BB000000B0BBBBBB00BB0000BB000000BBBBBBBBBBBB
          0000B0000000B0B0BBBBBBBB0000B0000000BBBBBBBBBBBB0000BB0000000000
          B0BBBBBB0000BBB00F00F00BBBB00BBB0000BBBBB000000BB0B000BB0000BBBB
          BBBBBBBBBBBB000B0000BBBBB000000BBBB0000B0000BBBBBBBBBB0B0B0000BB
          0000BBBBBBB0000B00000BBB0000BBBBBBBBBB0B0BBBBBBB0000BBBBBBBBBBBB
          BBBBBBBB0000BBBBBBBBBBBBBBBBBBBB0000BBBBBBBBBBBBBBBBBBBB0000BBBB
          BBBBBBBBBBBBBBBB0000}
      end
      object DBGrid2: TDBGrid
        Left = 40
        Top = 176
        Width = 281
        Height = 81
        DataSource = DataSource1
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Name'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Passw'
            Width = 137
            Visible = True
          end>
      end
    end
  end
  object ADOTable1: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Rules\Diary.mdb;' +
      'Mode=ReadWrite|Share Deny None;Persist Security Info=False'
    TableName = 'Guest'
    Left = 448
    Top = 136
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 448
    Top = 192
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Rules\Diary.mdb;' +
      'Mode=ReadWrite|Share Deny None;Persist Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 448
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 448
    Top = 240
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Rules\Diary.mdb;' +
      'Mode=ReadWrite|Share Deny None;Persist Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 548
    Top = 88
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection2
    Parameters = <>
    Left = 548
    Top = 184
  end
  object ADOTable2: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Rules\Diary.mdb;' +
      'Mode=ReadWrite|Share Deny None;Persist Security Info=False'
    TableName = 'Admin'
    Left = 548
    Top = 128
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 548
    Top = 240
  end
end

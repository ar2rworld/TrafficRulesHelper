unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, ADODB, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button6: TButton;
    ADOConnection2: TADOConnection;
    ADOQuery2: TADOQuery;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    BitBtn1: TBitBtn;
    DBGrid2: TDBGrid;
    procedure TabSheet1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    login,passw:boolean;
  alogin,apassw:boolean;
  name:string;

implementation

uses Unit2, Unit5, Unit6, Unit3;

{$R *.dfm}

procedure TForm1.TabSheet1Show(Sender: TObject);
begin
Form1.TabSheet1.Enabled:=false;
Form2.Show;
Form1.ADOQuery2.SQL.Clear;
Form1.ADOQuery2.SQL.Add('select * from Admin');
Form1.ADOQuery2.Active:=true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    Form1.PageControl1.ActivePage:= TabSheet2;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ADOQuery2.Filtered := true;
  if(ADOQuery2.FieldByName( 'Name').AsString= Edit1.Text)
  and (AdoQuery2.FieldByName('Passw').AsString =Edit2.Text)
  and (alogin =true) and (apassw = true) then begin showmessage('Right');
  Form5.show;
end else showmessage('Wrong Login or Password');

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 if application.MessageBox('Would you like to add a new admin?','Program message',mb_YESNO)=idno
then form1.Close else
try
if (Trim(edit1.Text)='') or (Trim(edit2.Text)='')    // check for empty space in Edits
then begin exit;
end;
ADOQuery2.Insert;
AdoQuery2.FieldByName('Name').AsString:=Edit1.Text;
AdoQuery2.FieldByName('Passw').AsString:=Edit2.Text;
Edit1.Clear;
Edit2.Clear;
AdoQuery2.Insert;
except
on e:Exception do
end;
ADOQuery2.Insert;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
s1,s2:string;
i:boolean;
begin
if (edit3.Text<>'') and (edit4.Text<>'') then begin

ADOQuery1.Filtered:=true;
if (AdoQuery1.FieldByName('Name').AsString=Edit3.Text)
and (AdoQuery1.FieldByName('Passw').AsString=Edit4.Text) and
(login=true) and (passw=true) then
begin showmessage('Correct! The Form opening');
form3.show;

form3.ADOQuery1.SQL.Clear;
form3.ADOQuery1.SQL.Add('select * from student_'+form1.Edit3.Text);
form3.ADOQuery1.Active:=true;

form3.ADOTable1.TableName:='student_'+form1.Edit3.Text;

Form3.BitBtn3.Enabled:=false;
Form3.BitBtn2.Enabled:=false;
Form3.BitBtn1.Enabled:=false;
Edit3.Clear;
Edit4.Clear;
end; end else
            showmessage('Wrong Login or Password');



end;


procedure TForm1.Edit1Change(Sender:TObject);
begin
  if Length(Edit1.Text) > 0 then
    begin
    ADOQuery2.Filtered:=false;
    ADOQuery2.Filter:='Name' + ' LIKE ' + #39 + Edit1.Text + '%' + #39;
    alogin:=true;
    end
  else ADOQuery2.Filtered:=false;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  if Length(Edit1.Text) > 0 then
    begin
    ADOQuery2.Filtered:=false;
    ADOQuery2.Filter:='Passw' + ' LIKE ' + #39 + Edit2.Text + '%' + #39;
    apassw:=true;
    end
  else ADOQuery2.Filtered:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);

var
st:string;
f,fscore:textfile;
begin
assignfile(f,extractfilepath(application.ExeName)+'webdata/Subject'+Edit1.Text+'.txt');//create a file to record subjects
rewrite(f);
writeln(f,'Intro');
closefile(f);

assignfile(fscore,extractfilepath(application.ExeName)+'webdata/Lesson/'+Edit1.Text+'.txt');//create an empty file to record scores
rewrite(fscore);
//append(fscore);
writeln(fscore,'0');
writeln(fscore,'0');
writeln(fscore,'0');
writeln(fscore,'0');
closefile(fscore);

if application.MessageBox('Would you like to add a new student','Program message',mb_YESNO)=idno
then form1.Close else
try
if (Trim(edit1.Text)='') or (Trim(edit2.Text)='')
then begin exit;
end;
ADOQuery1.Insert;
AdoQuery1.FieldByName('Name').AsString:=Edit1.Text;
AdoQuery1.FieldByName('Passw').AsString:=Edit2.Text;

AdoQuery1.Insert;
except
on e:Exception do
end;
ADOQuery1.Insert;

AdoQuery1.SQL.Clear;
st:=Edit1.Text;
AdoQuery1.SQL.Add('CREATE TABLE student_'+Edit1.Text+'(id smallint NOT NULL PRIMARY KEY,Subject varchar(50)not null,Score varchar(50)not null,Homework varchar(50)not null); ');
AdoQuery1.ExecSQL;

Edit1.Clear;
Edit2.Clear;

end;

procedure TForm1.TabSheet2Show(Sender: TObject);
begin
Form1.TabSheet1.Enabled:=false;
Form1.ADOQuery1.SQL.Clear;
Form1.ADOQuery1.SQL.Add('select * from Guest');
Form1.ADOQuery1.Active:=true;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
    if (edit3.Text<>'') and (edit4.Text<>'') then begin
      ADOQuery1.Filtered:=true;
      if (AdoQuery1.FieldByName('Name').AsString=Edit3.Text)
        and (AdoQuery1.FieldByName('Passw').AsString=Edit4.Text) and
        (login=true) and (passw=true) then begin
        showmessage('Correct! Welcome to LMS');
        form6.show;
        name:=Edit3.Text;
      end;
    end else begin
            showmessage('Wrong Login or Password');
          end
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
if Length(Edit3.Text) > 0 then
begin
ADOQuery1.Filtered:=false;
ADOQuery1.Filter:='Name' + ' LIKE ' + #39 + Edit3.Text + '%' + #39;
login:=true;
end
else ADOQuery1.Filtered:=false;

end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
if Length(Edit4.Text) > 0 then
begin
ADOQuery1.Filtered:=false;
ADOQuery1.Filter:='Passw' + ' LIKE ' + #39 + Edit4.Text + '%' + #39;
passw:=true;
end
else ADOQuery1.Filtered:=false;
end;



end.

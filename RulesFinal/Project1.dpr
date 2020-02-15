program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in '..\Rules\Unit2.pas' {Form2},
  Unit3 in '..\Rules\Unit3.pas' {Form3},
  Unit4 in '..\Rules\Unit4.pas' {Form4},
  Unit5 in '..\Rules\Unit5.pas' {Form5},
  Unit6 in '..\Rules\Unit6.pas' {Form6},
  Unit7 in '..\Rules\Unit7.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;





  end.

program sibri;

uses
  Forms,
  main in 'main.pas' {Form1},
  data_module in 'data_module.pas' {DataModule1: TDataModule},
  about in 'forms\about.pas' {Form2},
  book_add in 'forms\book_add.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.

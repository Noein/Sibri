program sibri;

uses
  Forms,
  main in 'main.pas' {MainForm},
  data_module in 'data_module.pas' {DataLibrary: TDataModule},
  about in 'forms\about.pas' {AboutForm},
  book_add in 'forms\book_add.pas' {BookAddForm},
  reader_edit in 'forms\reader_edit.pas' {ReaderEditForm},
  reader_add in 'forms\reader_add.pas' {ReaderAddForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDataLibrary, DataLibrary);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TBookAddForm, BookAddForm);
  Application.CreateForm(TReaderEditForm, ReaderEditForm);
  Application.CreateForm(TReaderAddForm, ReaderAddForm);
  Application.Run;
end.

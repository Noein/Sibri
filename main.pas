unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, XPMan, ComCtrls;

const
  DEBUG = true;

type
  TForm1 = class(TForm)
    DebugConsole: TMemo;
    XPManifest1: TXPManifest;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure Putsdbg(msg: String);
  
var
  Form1: TForm1;

implementation

uses data_module;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  if DEBUG = true then begin
    DebugConsole.Visible:=true;
  end;
end;

// Print message into debug console
procedure Putsdbg;
begin
  Form1.DebugConsole.Lines.Add(msg);
end;

end.

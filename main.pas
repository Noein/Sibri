{
  Copyright © 2012 Vladislav Mileshkin

  This file is part of Sibri.

  Sibri is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  Sibri is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with Sibri.  If not, see <http://www.gnu.org/licenses/>.
}
unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, XPMan, ComCtrls, Menus;

const
  DEBUG = true;

type
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure Putsdbg(msg: String);
  
var
  Form1: TForm1;


implementation

uses data_module, about, book_add;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  //if DEBUG = true then begin
  //  DebugConsole.Visible:=true;
  //end;
end;

// Print message into debug console
procedure Putsdbg;
begin
  // Form1.DebugConsole.Lines.Add(msg);
end;

// About program
procedure TForm1.N2Click(Sender: TObject);
begin
  Form2.Memo1.Lines.LoadFromFile('COPYING');
  Form2.ShowModal();
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form3.ShowModal();
end;

end.

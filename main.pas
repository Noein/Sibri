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
  Dialogs, Grids, DBGrids, StdCtrls, XPMan, ComCtrls, Menus, ExtCtrls,
  DBCtrls;

const
  DEBUG = true;

type
  TMainForm = class(TForm)
    XPManifest1: TXPManifest;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    LabeledEdit1: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    DBGrid3: TDBGrid;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    DBGrid4: TDBGrid;
    DBNavigator4: TDBNavigator;
    DBGrid5: TDBGrid;
    DBNavigator5: TDBNavigator;
    DBGrid6: TDBGrid;
    DBNavigator6: TDBNavigator;
    DBGrid7: TDBGrid;
    DBNavigator7: TDBNavigator;
    DBGrid8: TDBGrid;
    DBNavigator8: TDBNavigator;
    DBGrid9: TDBGrid;
    DBNavigator9: TDBNavigator;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid10: TDBGrid;
    DBNavigator10: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure PutsDbg(msg: String);
  
var
  MainForm: TMainForm;


implementation

uses data_module, about, book_add;

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  //if DEBUG = true then begin
  //  DebugConsole.Visible:=true;
  //end;
end;

// Print message into debug console
procedure putsDbg;
begin
  // Form1.DebugConsole.Lines.Add(msg);
end;

// Help -> About program
procedure TMainForm.N2Click(Sender: TObject);
begin
  aboutForm.memo1.lines.loadFromFile('COPYING');
  aboutForm.showModal();
end;

// file -> exit
procedure TMainForm.N12Click(Sender: TObject);
begin
  close();
end;

procedure TMainForm.Button7Click(Sender: TObject);
begin
  bookAddForm.showModal();
end;

end.

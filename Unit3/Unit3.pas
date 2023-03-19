unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, Grids, DBGrids, Unit1, UniDacVcl, ExtCtrls, DBCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation


{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
begin
  Form1.UniQuery1.SQL.Text := 'SELECT * FROM users';
  Form1.UniQuery1.Open;
  DBGrid1.DataSource := DataSource1;
end;






end.

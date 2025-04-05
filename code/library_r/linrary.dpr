program linrary;
uses
  Windows,
  Forms,
  Un_main in 'Un_main.pas' {Frm_main},
  Un_func in 'Un_func.pas',
  Un_dm in 'Un_dm.pas' {DM: TDataModule},
  Un_autorize in 'Un_autorize.pas' {Frm_author},
  Un_genre in 'Un_genre.pas' {frm_genre},
  Un_aut in 'Un_aut.pas' {frm_aut},
  Un_book in 'Un_book.pas' {frm_book};

{$R *.res}
{$R resources.res}
{$R autor_res.RES}
{$R sound_res.RES}


begin
  Application.Initialize;
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_author, Frm_author);
  Application.CreateForm(Tfrm_genre, frm_genre);
  Application.CreateForm(Tfrm_aut, frm_aut);
  Application.CreateForm(Tfrm_book, frm_book);
  Application.Run;
end.

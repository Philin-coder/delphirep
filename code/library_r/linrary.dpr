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
  Un_reader in 'Un_reader.pas' {frm_reader},
  Un_book in 'Un_book.pas' {frm_book},
  Un_doc in 'Un_doc.pas' {frm_doc},
  Un_report in 'Un_report.pas' {frm_report},
  Un_delivery in 'Un_delivery.pas' {frm_delivery},
  Un_attachment in 'Un_attachment.pas' {frm_attachment};

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
  Application.CreateForm(Tfrm_reader, frm_reader);
  Application.CreateForm(Tfrm_book, frm_book);
  Application.CreateForm(Tfrm_doc, frm_doc);
  Application.CreateForm(Tfrm_report, frm_report);
  Application.CreateForm(Tfrm_delivery, frm_delivery);
  Application.CreateForm(Tfrm_attachment, frm_attachment);
  Application.Run;
end.

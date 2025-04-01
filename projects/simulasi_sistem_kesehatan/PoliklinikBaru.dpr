program PoliklinikBaru;



uses
  Forms,
  uInsertMasterPegawai in 'uInsertMasterPegawai.pas' {ftransaksipegawai},
  uMenuAwal in 'uMenuAwal.pas' {fMainmenu},
  uMasterKeluarga in 'uMasterKeluarga.pas' {formtablekeluarga},
  uMasterObat in 'uMasterObat.pas' {formobat},
  uMasterDokter in 'uMasterDokter.pas' {formdokter},
  uMasterPasien in 'uMasterPasien.pas' {formpasien},
  uMainUtama in 'uMainUtama.pas' {formutama},
  ulogindokter in 'ulogindokter.pas' {formlogindokter},
  uDoctorMenu in 'uDoctorMenu.pas' {formAdminTreatment},
  uMenuPegawai in 'uMenuPegawai.pas' {formmainpegawai},
  uPilihKeluarga in 'uPilihKeluarga.pas' {formmainkeluarga},
  uLihatTranspeg in 'uLihatTranspeg.pas' {formlihattranspeg},
  umainobat in 'umainobat.pas' {formmainpasien},
  ulihatkeluarga in 'ulihatkeluarga.pas' {formlihatkeluarga},
  umainobatpoli in 'umainobatpoli.pas' {formmainobat},
  ulihatdataobat in 'ulihatdataobat.pas' {formlihatobat},
  uFamilytypetrans in 'uFamilytypetrans.pas' {formtypekeluarga},
  ulogin in 'ulogin.pas' {formdaftaradmin},
  ulihatdataberobat in 'ulihatdataberobat.pas' {formlihatberobatpegawai},
  ulihatChart in 'ulihatChart.pas' {formlihatchartobat},
  ulihatchart2 in 'ulihatchart2.pas' {formstatunit},
  uMenuBerobat in 'uMenuBerobat.pas' {formmenuberobat},
  uLihatBerobatKeluarga in 'uLihatBerobatKeluarga.pas' {formlihatberobatkeluarga},
  uDoctorMain in 'uDoctorMain.pas' {formmenudokter},
  uLihatDataDokter in 'uLihatDataDokter.pas' {formlihatdokter},
  uMenuUser in 'uMenuUser.pas' {formmenuuser},
  uMenuDokter in 'uMenuDokter.pas' {formawaldokter},
  uRiwayatpenyakit in 'uRiwayatpenyakit.pas' {formriwayat},
  uLihatpegawai in 'uLihatpegawai.pas' {formlihatpegawai},
  uPasien in 'uPasien.pas' {formpengobatan},
  uTransunit in 'uTransunit.pas' {formtransunit},
  uTransaksiuser in 'uTransaksiuser.pas' {fromtransuser},
  ulihatchartobat in 'ulihatchartobat.pas' {formlihattipeobat},
  ss in 'ss.pas' {formlihatdatakeluarga},
  AutoEdit in 'AutoEdit.pas',
  AutoCompleteText in 'AutoCompleteText.pas',
  uLihatDataPasien in 'uLihatDataPasien.pas' {formlihatdatapasien},
  utest2 in 'utest2.pas' {formadminpoli},
  uStatusPegawai in 'uStatusPegawai.pas' {formmasterstatus},
  uSplash in 'uSplash.pas' {formNamaObat},
  Unit1 in 'Unit1.pas' {formTransaksiPasien},
  uMasterPilihan in 'uMasterPilihan.pas' {formPilihan},
  ulihatrecord in 'ulihatrecord.pas' {formrecorddokter},
  uMasterLogin in 'uMasterLogin.pas' {formLogin},
  uloginpoli in 'uloginpoli.pas' {formloginpoli},
  uLihatPasien in 'uLihatPasien.pas' {formlihatpasien},
  uTentangKami in 'uTentangKami.pas' {form_tentang},
  u_bantuan in 'u_bantuan.pas' {form_bantuan},
 u_form_loading in 'u_form_loading.pas' {form_loading};
  //u_tentang in 'u_tentang.pas' {Form2};

// Unit1 in 'Unit1.pas' {formTransaksiPasien};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Aplikasi Poliklinik STIKES Husada Borneo';
  Application.CreateForm(Tform_loading, form_loading);
  Application.CreateForm(Tformlihatkeluarga, formlihatkeluarga);
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(Tform_bantuan, form_bantuan);
  //Application.CreateForm(Tform_bantuan, form_bantuan);
  Application.CreateForm(Tformlihatpasien, formlihatpasien);
  Application.CreateForm(Tform_tentang, form_tentang);
  Application.CreateForm(Tformutama, formutama);
  Application.CreateForm(Tftransaksipegawai, ftransaksipegawai);
  Application.CreateForm(Tformpasien, formpasien);
  Application.CreateForm(Tformloginpoli, formloginpoli);
  Application.CreateForm(Tformlihatberobatkeluarga, formlihatberobatkeluarga);
  Application.CreateForm(Tformlihatberobatpegawai, formlihatberobatpegawai);
  Application.CreateForm(Tformpengobatan, formpengobatan);
  Application.CreateForm(Tfromtransuser, fromtransuser);
  Application.CreateForm(Tformlihatdatapasien, formlihatdatapasien);
  Application.CreateForm(Tformmenuberobat, formmenuberobat);
  Application.CreateForm(Tformmainpasien, formmainpasien);
  Application.CreateForm(Tformmainkeluarga, formmainkeluarga);
  Application.CreateForm(Tformmainobat, formmainobat);
  Application.CreateForm(Tformlihatobat, formlihatobat);
  Application.CreateForm(Tformadminpoli, formadminpoli);
  Application.CreateForm(Tformobat, formobat);
  Application.CreateForm(Tformmainpegawai, formmainpegawai);
  Application.CreateForm(Tformdaftaradmin, formdaftaradmin);
  Application.CreateForm(Tformmenudokter, formmenudokter);
  Application.CreateForm(Tformdokter, formdokter);
  Application.CreateForm(Tformtablekeluarga, formtablekeluarga);
  Application.CreateForm(Tformlihattranspeg, formlihattranspeg);

  //Application.CreateForm(Tformlihatdatapasien, formlihatdatapasien);
  Application.CreateForm(Tformlihatpegawai, formlihatpegawai);
  Application.CreateForm(Tformlihatdatakeluarga, formlihatdatakeluarga);
  Application.CreateForm(Tformpengobatan, formpengobatan);
  Application.CreateForm(Tformtransunit, formtransunit);
  Application.CreateForm(Tfromtransuser, fromtransuser);
  Application.CreateForm(Tformlihattipeobat, formlihattipeobat);
  Application.CreateForm(Tformriwayat, formriwayat);
  Application.CreateForm(Tformawaldokter, formawaldokter);
  Application.CreateForm(Tformmenuuser, formmenuuser);
  Application.CreateForm(Tformlihatdokter, formlihatdokter);
  Application.CreateForm(Tformstatunit, formstatunit);
  Application.CreateForm(Tformlihatchartobat, formlihatchartobat);
  Application.CreateForm(Tformtypekeluarga, formtypekeluarga);
  Application.CreateForm(Tformmainpasien, formmainpasien);
  Application.CreateForm(TformAdminTreatment, formAdminTreatment);
  Application.CreateForm(Tformlogindokter, formlogindokter);
  Application.CreateForm(TfMainmenu, fMainmenu);
  Application.CreateForm(Tformmasterstatus, formmasterstatus);
  Application.CreateForm(TformNamaObat, formNamaObat);
  Application.CreateForm(TformTransaksiPasien, formTransaksiPasien);
  Application.CreateForm(TformPilihan, formPilihan);
  Application.CreateForm(Tformrecorddokter, formrecorddokter);
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(Tformloginpoli, formloginpoli);
  //  Application.CreateForm(TformTransaksiPasien, formTransaksiPasien);
  Application.Run;

  end.

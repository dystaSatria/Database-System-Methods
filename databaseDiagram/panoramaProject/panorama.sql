Table Guide {
  guide_id integer [primary key]
  nama char
  nomor_telepon integer(12)
  jenis_kelamin bool
  olusturulma_zamani timestamp
  yonetim_id integer
  
}


Table Tempat_Tinggal {
  ogrenci_duyurlari_id integer [primary key]
  jenis_tempt_tinggal varchar
  kuota integer(10)
  jarak_destinasi_wisata integer

}

Table Transportasi {
  transportasi_id integer [primary key]
  kartu_transport bool
  private bool


}


Table Public_Transport {
  public_transport integer [primary key]
  jenis_transport varchar
  

}

Table Translator {
  translator integer [primary key]
  
}

Table Kamar {

    kamar_id integer [primary key]
    kapasitas integer
    sedia bool
    nomor_kamar integer(4)
    yatak_durumu bool
    ogrenci_id integer

}


Table Camasir_Makinesi {

    camasir_makinesi_id integer [primary key]
    ad varchar(9)
    acik bool

}

Table Urunler {
  urunler_id integer [primary key]
  ad varchar
  fiyatlar integer
  kategori varchar(50)
}



Table Rezervasyonlar {
  rezervasyonlar_id integer [primary key]
  oda_id integer
  ogrenci_id integer
  camasir_makinesi_id integer
  giris_saa timestamp

  
}






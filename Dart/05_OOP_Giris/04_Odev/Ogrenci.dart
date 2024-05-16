class Ogrenci {
  String _ogrenciAdi;
  int _ogrenciYasi;

  Ogrenci(this._ogrenciAdi, this._ogrenciYasi); //Constructor

  String get ogrenciAdi => "Öğrenci Adı : $_ogrenciAdi";
  int get ogrenciYasi => _ogrenciYasi; //Okuma yapacağımız için String verdik.

  void set ogrenciAdiGir(String ogrenciAdi) {
    _ogrenciAdi = ogrenciAdi;
  }

  void set ogrenciYasiGir(int ogrenciYasi) {
    if (ogrenciYasi > 0) {
      _ogrenciYasi = ogrenciYasi;
    } else
      return;
  }

  void ogrenciBilgileriGetir() {
    print("Öğrenci Adı ve Yaşı: ${(_ogrenciAdi, ogrenciYasi)}");
  }
}

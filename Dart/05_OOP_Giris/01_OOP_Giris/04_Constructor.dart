//Parametresiz Constructor: Bu method her nesne üretiminde ilk olarak çalışan methodtur.
//Parametreli Constructor: Parametresiz constructor'ın, parametre alma durumuna gelir. Compile sırasında parametre almış constructor varsa o çalışır.
//Named Constructor: Constructor oluştururken class.metotismi(eklemek istediğimiz değişkenler) olarak da kullanabiliriz.
//Bir class'ta hem boş hem de parametre alan constructor olamaz. Parametre alan constructor varsa late kullanılmasına gerek yoktur.

void main() {
//Nesne oluşturma örnekleri
  //Parametresiz Constructor :İçi boş constructor.Parametre alan constructor varsa burada hata alırız.
  //Araba bmw = Araba();
  //bmw.marka = "E50";
  //bmw.modeli = 2001;
  //bmw.arabaBilgileriGetir();

  //Parametre Alan Constructor
  Araba fiat = Araba(1991, true, "Fiat");
  fiat.modeli = 2000;
  fiat.dizelMi = false;
  fiat.marka = "Linea";
  fiat.arabaYasiHesapla(fiat.modeli);

  //Named Constructor Çağırma
  var mercedes = Araba.modeliOlmayanMetot(false, "C180");
  var mercedes2 = Araba.markasiOlmayanMetot(true, 2021);
  // mercedes.arabaBilgileriGetir();
  // mercedes2.arabaYasiHesapla(2021);
}

class Araba {
  late int modeli;
  late bool dizelMi;
  late String marka;

  void arabaBilgileriGetir() //Bu method ile araba bilgilerini getirebiliriz.
  {
    print("Arabanın yılı $modeli ismi $marka Dizel mi $dizelMi  ");
  }

  // //Yapıcı Methodlar : Nesne örneği oluşturduğumuzda çalışırlar ve boş bir metod gibi çalışır.
  // Araba() //Parametresiz constructor
  // {
  //   print("İçi boş constructor çalıştı.");
  // }

  Araba(int modeli, bool dizelMi, String marka) {
    print("Parametre alan constructor çalıştı");
  }

   arabaYasiHesapla(int modeli) {
    DateTime suankiZaman = DateTime.now();
    int buSene = suankiZaman.year;
    int arabaninYasi = buSene - modeli;
    print("Arabanın Yaşı: $arabaninYasi");
  }

  //Named Constructor: Constructor oluştururken class.metotismi(eklemek istediğimiz değişkenler) olarak da kullanabiliriz.
  Araba.markasiOlmayanMetot(this.dizelMi, this.modeli);
  Araba.modeliOlmayanMetot(bool dizelMi, String marka) {
    this.dizelMi = dizelMi;
    this.marka = marka;
  }

}

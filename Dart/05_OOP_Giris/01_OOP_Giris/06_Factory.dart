void main() {
  Urun urun = Urun(1500, "urun1");

  Urun factoryUrun = Urun.factoryileConstructor(-1, ""); //-1 ve "" değerlerini versek bile factory ile kurulmuş named constructor'da if kontrolünde takıldı.
  print(factoryUrun.fiyat);
  print(factoryUrun.isim);
}

//Varsayılan constructor'larda, named constructor'larda veya parametre alan constructor'larda return kullanamayız. Dart dilinde buna izin verilmez.
class Urun {
  int fiyat = 1000;
  String isim = "";

  Urun(this.fiyat, this.isim) {
    print("Default constructor çalıştı.");
  }

  // Urun.fiyatOlmayanConstructor(this.isim) {
  //   print("Named Constructor Çalıştı");
  // }

  //Return kullanmamız gereken durumlarda factory keyword kullanırız.
  factory Urun.factoryileConstructor(int fiyat, String isim) {
    if (fiyat < 2000) {
      return Urun(1, "isimsizUrun");
    } else {
      return Urun(fiyat, "isimsizUrun");
    }
  }
}

//This keyword'ü , bir sınıf içerisindeki referansı ifade eder.
// Genellikle, bir sınıftaki metot içerisinde bulunduğumuz zaman, o sınıfın özelliklerine ve metotlarına erişmek için this keyword'ü kullanılır.

import '01_OOP_Giris.dart';

void main() {
  Kategori kategori = Kategori("mini", 34, false);

  kategori.bedeni = 33;
  kategori.etek = "Uzun";
  kategori.uretiliyorMu = true;

  print(kategori);
}

class Kategori {
  late String etek; //Instance variable
  late int bedeni; //Instance variable
  late bool uretiliyorMu; //Instance variable

  //Parametre ile sınıfın içindeki değişkenler aynı olduğu durumlarda this kullanmak zorundayız.
  //1.Yöntem
  // Kategori(String etek, int bedeni, bool uretiliyorMu) {
  //   print("Kategori yapıcı constructor çalıştı.");
  //   this.bedeni = bedeni; //Parametre olarak gelen bedeni bu sınıftaki bedene this keyword'ü ile atadık.
  //   this.etek = etek;
  //   this.uretiliyorMu = uretiliyorMu;
  // }

  //2.Tanımlama Yöntemi
  //Bu şekilde tanımlamada direkt kullanıcıdan gelen parametreyi değişkenlere atar.
  Kategori(String this.etek, int this.bedeni, bool this.uretiliyorMu) {
    print("2. Kurucu Metot Çalıştı.");
  }
}

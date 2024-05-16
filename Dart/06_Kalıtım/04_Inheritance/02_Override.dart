/* 
override anahtar kelimesi ise Dart'ta, bir alt sınıfın, üst sınıftan miras aldığı bir metodu kendi ihtiyaçlarına göre yeniden tanımlamasını sağlar. 
Bu sayede, alt sınıf miras aldığı metodu, kendi özelliklerine ve gereksinimlerine uygun bir şekilde özelleştirebilir.
 */

//Üst sınıf
void main() {
  Kedi kedi = Kedi();
  kedi.sesCikar();

  Kopek kopek = Kopek();
  kopek.sesCikar();

  Hayvan hayvan = Hayvan();
  hayvan.sesCikar();

  Kus kus = Kus();
  kus.sesCikar();
}

class Hayvan {
  void sesCikar() {
    print("Sesim yok");
  }
}

//Hayvan sınıfından türetilen Kedi sınıfı
class Kedi extends Hayvan {
  @override
  void sesCikar() {
    print("Kedi miyavlar");
  }
}

class Kopek extends Hayvan {
  @override
  void sesCikar() {
    print("Köpek havlar");
  }
}

class Kus extends Hayvan {
  @override
  void sesCikar() {
    print("Kuş cikler");
  }
}

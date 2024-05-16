//Interface tanımlarken isimlendirmelerin sonuna able koymak o class'ın Interface olduğunu anlamamızı sağlar.
abstract class Flyable {//Uçabilme yeteneğini gösteren bir interface
  void uc();
}

abstract class Swimable { //Yüzebilme yeteneğini gösteren interface 
  void yuz();
}

//Kuş sınıfı hem uçabilir hem de yüzebilir sınıflarını implement eder.
class Kus implements Flyable,Swimable {
  @override
  void uc() {
    print("Kuş uçuyor");
  }

  @override
  void yuz() {
    print("Kuş yüzüyor");
  }
}

class Balik implements Swimable {
  @override
  void yuz() {
    print("Balık yüzüyor");
  }
}

void main() {
  Kus kus = Kus();
  kus.uc();
  kus.yuz();

  Balik balik = Balik();
  balik.yuz();
}

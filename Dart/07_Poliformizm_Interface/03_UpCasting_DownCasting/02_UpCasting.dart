/* 
Upcasting, türetilmiş bir sınıf nesnesinin temel sınıf türüne dönüştürülmesi işlemidir ve genellikle otomatik olarak gerçekleşir.
Upcasting, güvenli bir işlemdir çünkü türetilmiş sınıf, temel sınıfın tüm özelliklerini ve metodlarını içerir. Bu işlem, genellikle polimorfizmi sağlamak için kullanılır. 
*/
class Muzisyen {
  String ad;

  Muzisyen(this.ad);

  void performansYap() {
    print("$ad müzik yapıyor.");
  }
}

class Gitarist extends Muzisyen {
  Gitarist(String ad) : super(ad);

  @override
  void performansYap() {
    print("$ad gitar çalıyor.");
  }

  void soloYap() {
    print("$ad gitar solo yapıyor.");
  }
}

void main() {
  Gitarist gitarist = Gitarist("Ali");
  Muzisyen muzisyen = gitarist; // Upcasting: Alt sınıfı üst sınıfa eşitledik.
  muzisyen.performansYap(); // "Ali gitar çalıyor." çıktısını verir.
}

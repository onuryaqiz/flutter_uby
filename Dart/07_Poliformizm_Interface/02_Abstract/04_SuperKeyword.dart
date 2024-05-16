/* 
Super keyword'ü,bir sınıfın üst sınıfından(Parent) (veya ebeveyn sınıfından) miras alınan özelliklere veya yöntemlere erişmek için kullanılır.  
Bir sınıf başka bir sınıftan türetilmişse, türetilen sınıf alt sınıf veya çocuk(child) sınıf olarak adlandırılırken, türetilen sınıfın temel aldığı sınıf üst sınıf veya ebeveyn sınıf olarak adlandırılır. 
*/

//Parent Class'tan Constructor'lara Erişim
class Parent {
  Parent(int yas) {
    print("Parent sınıfın constructor'ı çağrıldı! yaş: $yas");
  }
}

class Child extends Parent {
  Child(int yas) : super(yas) { //Eğer child sınıf, parent sınıfın yapıcısını özelleştirilmiş bir şekilde çağırmak isterse, super anahtar kelimesi ile bu yapılabilir.
    print("Child sınıfın constructor'ı çağrıldı!");
  }
}

//Parent class'ın metotlarına erişim
class Ebeveyn {
  void selamla() {
    print("Parent sınıfından selamla metodu!");
  }
}

class Cocuk extends Ebeveyn {
  @override
  void selamla() {
    super.selamla(); // Ebeveyn sınıfın selamla metodunu çağırır
    print("Child sınıfından selamla metodu!");
  }
}

void main() {
  // Ebeveyn ebeveyn = Ebeveyn();
  // ebeveyn.selamla();

  Parent parent = Parent(20);

  print("Parent: $parent");
}

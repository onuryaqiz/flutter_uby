//Class yapılarında kullanılır. Bir sınıf birden fazla interface miras alabilir. Fakat bir sınıf sadece 1 kere abstract class miras alabilir.
abstract class Interface { //Abstract keyword ile interface tanımlaması yapılır. Abstract class'lardan ayırt edilmesi gereken kısım metodları değişkenleri implement ettiğimiz anda doldururuz.
  late int sayi;
  void voidMetod();
  String stringMetod();
}

abstract class Interface2{
  late String interface2;
}
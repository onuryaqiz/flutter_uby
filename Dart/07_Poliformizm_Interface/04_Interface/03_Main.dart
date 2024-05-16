import '02_ClassA.dart';

void main() {
  ClassA a = ClassA();
  a.sayi = 10;

  print(a.sayi); //ClassA'daki sayi değişkenine erişim sağladık.

  a.voidMetod(); //String metoda erişim sağladık.

  String sonuc = a.stringMetod();
  print(sonuc);
}

void main() {
  //Bazı durumlarda atadığımız değişkenleri başka tipe çevirmek için parse dediğimiz, tür dönüşümü işlemleri yapmamız gerekebilir.

  //Sayısaldan sayısala parse;
  int sayi = 56;
  double doubleSayi = 12.5;

  
  int sonuc = doubleSayi.toInt();
  double sonuc2 = sayi.toDouble();

  print(sonuc);
  print(sonuc2);

  //Sayısaldan metine parse ;
  String string1 = sayi.toString();
  String string2 = doubleSayi.toString();

  print(string1);
  print(string2);

  //Metinden Sayısala
  String yazi1 = "23";
  String yazi2 = "32.12";

  int s1 = int.parse(yazi1);
  double s2 = double.parse(yazi2);

  print(s1);
  print(s2);
}

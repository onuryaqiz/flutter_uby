void main() {
  //String 1.yazım şekli
  String deneme = "Birinci Tanımlama";
  print("Birinci String tanımlama $deneme");

  //String "" ile yazımı
  String deneme2 = """
  6 
  Çift 
  Tırnak 
  ile 
  Tanımlama
""";
  print(deneme2);

  //String içerisinde int tanımlama
  int sayi = 5;
  int sayi2 = 10;
  String deneme3 = "$sayi x $sayi2= ${sayi * sayi2}";

  print("String içerisinde int hesaplama $deneme3");

  //String if else kontrolü

  String deneme4 = "Hello";
  String deneme5 = "Merhaba";

  if (deneme4 == deneme5) {
    print("İki string birbiri ile aynıdır");
  } else {
    print("2 string aynı değildir.");
  }
}

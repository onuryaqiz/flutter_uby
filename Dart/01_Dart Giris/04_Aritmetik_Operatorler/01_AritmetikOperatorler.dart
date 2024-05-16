void main() {
//Matematiksel işlemleri yapmamızı sağlar.
//Parantezler işlemin önceliğini belirtmek için kullanılır.

// final piSayisi = 3.14;
// var yariCap = 10;

// var alan = piSayisi * yariCap * yariCap;
// print("Daire Alanı: $alan");

  int sayi1 = 10;
  double sayi2 = 5.3;
  int sayi3 = 5;

  print(sayi1 + (sayi2 * sayi3));

  // //Atama Operatörlerinin Kısa Yazılışı
  // //Toplama;
  // sayi1 = sayi1 + 1;
  // sayi1 += 1;

  // //Çarpma;
  // sayi1 = sayi1 * 2;
  // sayi1 *= 2;

  // //Çıkarma;
  // sayi1 = sayi1 - 3;
  // sayi1 -= 3;

  // //Bölme;
  // sayi2 = sayi2 / 3;
  // sayi2 /= 3;
  

  //String Interpolation ile Yazımı
  // Toplama
  int toplam = sayi1 + sayi3;
  print('Toplam: $toplam');

  // Çıkarma
  int fark = sayi1 - sayi3;
  print('Fark: $fark');

  // Çarpma
  int carpim = sayi1 * sayi3;
  print('Çarpım: $carpim');

  // Bölme
  double bolum = sayi1 / sayi3;
  print('Bölüm: $bolum');

  // Mod alma işlemi
  int mod = sayi1 % sayi3;
  print('Mod: $mod');

  // İki sayının karesi
  int kare = sayi1 * sayi1;
  print('Sayının karesi: $kare');

}

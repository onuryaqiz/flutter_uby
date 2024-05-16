void main() {
  //Fat Arrow "=>" : Yazdığımız methodları veya fonksiyonları daha kısa hale getirmeye yarar.

  //1.YOL
  //print(sayilariCikar(10, 5));

  //2.YOL
  //print("Çıkarma:" +sayilariCikar(20, 13).toString()); //Burada toString kullanmamızın sebebi,"Çıkarma" yazdığımız için string bir ifade kullandık.

  //Fat Arrow ile if-Else
  print("Büyük Olan Sayı;\n" + buyukOlaniBul(10, 3).toString());
}

//Dart dilinde methodun başına türünü belirtmemize gerek yok. Yani burada int sayilariCarp yerine sayilariCarp olarak da method ismi verebilirdik.

//Fat Arrow'suz method yazımı
int sayilariCarp(int sayi1, int sayi2) {
  return sayi1 * sayi2;
}

//Fat Arrow yazımı
sayilariCikar(int s1, int s2) => s1 - s2; //Bu kadar yazılabilir.

//Fat Arrow if,else şeklinde yazımı;
// ? işareti if anlamına gelir, : ise else anlamına gelir.

buyukOlaniBul(int sayi3, int sayi4) => sayi3 < sayi4 ? sayi4 : sayi3; //Süslü parantez veya return kullanmamıza izin vermez!

// If/Else Uzun Hali
// buyukOlaniBulUzunHali(int sayi3, sayi4) {
//   if (sayi3 < sayi4) {
//     return sayi3;
//   } else {
//     return sayi4;
//   }
//}

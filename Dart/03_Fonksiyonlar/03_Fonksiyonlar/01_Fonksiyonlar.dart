void main() {
  /*
  Fonksiyonlar sayesinde problemleri küçük alt problemlere parçalayarak çok daha okunaklı ve hata bulması kolay uygulamalar geliştiririz.

  Bir uygulama geliştirirken, bir problemi çözerken o problemde belli bir işi yapan kodları methodlara bölmemiz gerekir.
  Bunun için Method veya fonksiyon oluşturabiliriz.
  
  Methodlar parametre alabilir veya almayabilir.
  Geriye değer döndürebilir. Değer döndürmeyen method tanımlarının başına void keyword yazılır.
  Dart dilinde return ve method geri döndürme veri tipi değeri opsiyoneldir, yani belirtmek zorunda değiliz. Fakat döndürmek tavsiye edilir.

  */
  //Parametresiz fonksiyon

  // cevreyiHesapla();
  //alanHesapla(7, 5);

  
/* Ödev Çözüm;
  1.YOL
  int hacim = hacimHesapla(8, 9, 10);
  print("Hacim: $hacim");

  2.YOL
  print(hacimHesapla(8, 9, 10));
*/ 
}

//Void olduğu için return kullanmamıza gerek yok. Geriye değer döndürmek istiyorsak return kullanmalıyız.
void cevreyiHesapla() {
  int en = 6, boy = 10;
  int cevre = (en + boy) * 2;
  print("Çevre değeri $cevre");
}

//Parametre alan fonksiyon
alanHesapla(int sayi1, int sayi2) {
  // int alan = sayi1 * sayi2;
  // print("Alan ${sayi1*sayi2}");

  return sayi1 * sayi2;
}

//hacimHesapla methodunu yazınız.
int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}

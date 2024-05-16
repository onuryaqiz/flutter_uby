/* işlemlerde  öncelik sırası
 1-Her zaman en içteki parantezlerde öncelik sırası mevcuttur
 2-varsa işlemde function,metod ve bunların alacağı değerler parantezleri içerisinde belrtildikten sonra onların değerleri işlem önceliği mevcuttur.
 3-Birden fazla mantık sorgusu varsa her zaman öncelik VE(&&) operatöründedir.
 *** Bunun dışında bir işleme ihtiyaç duyulursa mutlaka parantez içinde belirtilmeli.
 */
//KARAR YAPILARI
/* 
1-if else
2-switch case
3-try catch(hata denetimi yapar) 
*/

import 'dart:io';

void main() {
  int yas = 9;
  String isim ="ali"; //büyük-küçük harf duyarlılığı vardır. "ahmet yazdığınızda else'e girecektir."

 
  if (yas >= 18) {
    print("18 yaşından büyüksünüz");
  } else {
    print("18 yaşından küçüksünüz");
  }

  if (isim == "Ali") {
    print("Merhaba Ali");
  } else {
    print("Tanınmayan cisim");
  }

//Dört İşlem
  print("Toplama için 1'i seçiniz");
  print("Çıkarma için 2'yi seçiniz");
  print("Çarpma için 3'ü seçiniz");
  print("Bölme için 4'ü seçiniz");

  int secim = int.parse(stdin.readLineSync()!);
  print("Seçiminiz: $secim");

  print("Birinci Sayıyı Giriniz!");
  int sayi1 = int.parse(stdin.readLineSync()!);

  print("İkinci Sayıyı Giriniz!");
  int sayi2 = int.parse(stdin.readLineSync()!);

  if (secim == 1) {
    print("Toplama:${sayi1 + sayi2}");
  } else if (secim == 2) {
    print("Çıkarma:${sayi1 - sayi2}");
  } else if (secim == 3) {
    print("Çarpma:${sayi1 * sayi2}");
  } else if (secim == 4) {
    print("Bölme:${sayi1 / sayi2}");
  }
  //int sayi=100~/6
  //~ tilde işareti AltGr+Ü
}

//Kullanıcıdan 2 sayı girmesini isteyin ve girilen sayıların çarpımını string içerisinde yazdırın.

import 'dart:io';

void main() {
  print("Birinci sayıyı giriniz.");
  int sayi = int.parse(stdin.readLineSync()!);
  print("İkinci sayıyı giriniz");
  int sayi2 = int.parse(stdin.readLineSync()!);



  String sonuc = "$sayi x $sayi2 = ${sayi * sayi2}";
  print("Sayıların çarpımı: $sonuc");
}

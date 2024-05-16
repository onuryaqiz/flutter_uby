/* 
Kullanıcıdan consol'da veri girişi yapmasını istediğimiz durumlarda stdin.ReadLineSync methodunu kullanırız. 
Dart'ın dart:io kütüphanesi, standart giriş ve çıkış işlemleri için araçlar sağlar.
Bu metod, kullanıcının girdiği bir satırı (kullanıcı Enter tuşuna bastığında) bir string olarak döndürür.
 */
import 'dart:io';

void main() {
  //String bir değer alma
  print("Adınızı giriniz!");
  String isim = stdin.readLineSync()!;
  print("Merhaba: $isim");

  //int değer alma
  print("1-10 arasında bir sayı giriniz.");
  int sayi = int.parse(stdin.readLineSync()!);
  print("Girdiğiniz sayı : $sayi");
}

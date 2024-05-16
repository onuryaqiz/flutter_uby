import 'dart:io';

//Önemli: Bu sorunun çözümünde debug console'da stdin çalışmıyor. O yüzden File - Preferences - Settings - dart cli'ı terminale çevirmek gerekiyor.
void main() {
  print("Lütfen hesaplamak istediğiniz şekli seçin:");
  print("Dikdörtgen için 1'i seçiniz");
  print("Çember için 2'yi seçiniz");

  int secim = int.parse(stdin.readLineSync()!);

  if (secim == 1) {
    print("Dikdörtgenin uzun kenarını girin:");
    double uzunKenar = double.parse(stdin.readLineSync()!); //Dart 2.0'den sonra Null Safety özelliği gelmiştir. ! koyulmak zorunda yoksa hata alınır.

    print("Dikdörtgenin kısa kenarını girin:");
    double kisaKenar = double.parse(stdin.readLineSync()!);

    double alan = uzunKenar * kisaKenar;
    double cevre = 2 * (uzunKenar + kisaKenar);

    print("Dikdörtgenin alanı: $alan");
    print("Dikdörtgenin çevresi: $cevre");

  } 
  else if 
    (secim == 2) {
    print("Çemberin yarıçapını girin:");
    double yaricap = double.parse(stdin.readLineSync()!);
    final pi = 3.15;
    double alan = pi * yaricap * yaricap;
    double cevre = pi * yaricap * 2;

    print("Çemberin alanı: $alan");
    print("Çemberin çevresi: $cevre");
  }
  else {
    print("Geçersiz seçim. Lütfen 1 veya 2 girin.");
  }
}

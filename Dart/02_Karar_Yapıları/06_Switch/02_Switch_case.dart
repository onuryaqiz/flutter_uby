import 'dart:io';

void main() {
  //4 işlemi switch case ile yapma

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

  switch (secim) {
    case 1:
      {
        print("Toplama:${sayi1 + sayi2}");
      }
      break;
    case 2:
      {
        print("Çıkarma:${sayi1 - sayi2}");
      }
      break;
    case 3:
      {
        print("Çarpma:${sayi1 * sayi2}");
      }
      break;
    case 4:
      {
        print("Bölme:${sayi1 / sayi2}");
      }
      break;
    default:
      {
        print("Yanlış işlem seçtiniz!");
      }
      break;
    
  }

}

//Kullanıcıdan 4 adımlı bankamatik uygulaması yazın . Kullanıcının bakiyesi 10.000 TL olacak ve çekmek istediği tutar bu tutardan fazla olursa yetersiz bakiye uyarısı versin. 
//Para yatırma işlemi yapılırsa da bakiyenin üzerine girilen tutar eklensin.
//1.Bakiye Sorgulama 2.Adım Para Çekme 3.Adım Para Yatırma 4.adım Çıkış olsun.
//Kullanıcının seçimlerine göre de işlemlerin içerisine girip yapmak istediği işleme göre adımları yazın.
//switch case ile yapılacak.
import 'dart:io';

void main() {
  double bakiye = 10000;
  print("Bakiye sorgulamak için 1'e basınız.");
  print("Para çekmek için 2'ye basınız");
  print("Para Yatırmak için 3'e basınız");
  print("Çıkış için 4'e basınız");

  print("İşlem seçiniz!");

  String secim = stdin.readLineSync()!;

  switch (secim) {
    case "1":
      print("Mevcut bakiyeniz:$bakiye ₺");
      break;
    case "2":
      print("Çekmek istediğiniz miktarı giriniz:");
      double cekilecekMiktar = double.parse(stdin.readLineSync()!);
      if (cekilecekMiktar > bakiye) {
        print("Bakiyeniz yetersiz!!");
      } else {
        bakiye = bakiye - cekilecekMiktar;
        print("Yeni bakiyeniz:$bakiye ₺");
      }
      break;
    case "3":
      print("Yatırdığınız tutarı giriniz!");
      double yatirilanTutar = double.parse(stdin.readLineSync()!);
      bakiye = bakiye + yatirilanTutar;
      print("Yeni bakiyeniz:$bakiye ₺");
    case "4":
      print("Çıkış yapılıyor...");
    default:
      print("Yanlış tuşlama yaptınız!");
  }
}

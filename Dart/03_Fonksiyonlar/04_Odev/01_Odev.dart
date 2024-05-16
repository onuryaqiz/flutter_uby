//Bir banka uygulaması için temel bir faiz hesaplama fonksiyonu yazın.
//Bu fonksiyon, kullanıcının bankada tuttuğu para miktarına ve belirli bir süre için yıllık faiz oranına göre kazançlarını hesaplayacak.
//Fonksiyon, hesaplama yaparken, faizin yılda kaç kez hesaplandığı bilgisini isteğe bağlı bir parametre olarak almalı.
//Bu parametre belirtilmediği zaman, varsayılan olarak faizin yılda bir kez hesaplandığı kabul edilmeli.
/* anaPara: Yatırılan başlangıç parası miktarı.
faizOrani: Yıllık faiz oranı (örneğin, 0.05 yüzde 5 faiz oranını temsil eder).
hesaplamaPeriyodu: Opsiyonel, faizin yılda kaç kez hesaplandığını belirten parametre. Varsayılan değeri 1'dir.
yil: Faiz hesaplaması için geçerli olan yıl sayısı. */
//1-Fonksiyon, belirtilen süre boyunca faiz hesaplaması yaparken bir while döngüsü kullanmalıdır.
//2-Farklı anaPara, faizOrani, hesaplamaPeriyodu ve yil değerleri ile fonksiyon test edilmelidir.
//3-İsteğe bağlı parametreleri hem varsayılan değerleriyle hem de özel değerlerle test ederek fonksiyonun doğru çalıştığını doğrulayın.

import 'dart:io';

void main() {
  print("Başlangıç parası giriniz.");
  double baslangicParasi = double.parse(stdin.readLineSync()!); // Başlangıç parası
  print("Yıllık Faiz Oranını giriniz");
  double yillikFaizOrani = double.parse(stdin.readLineSync()!); // Yıllık faiz oranı %5
  print("Hesaplama Periyodunu giriniz");
  int hesaplamaPeriyodu = int.parse(stdin.readLineSync()!); // Yılda 4 kez faiz hesaplama
  print("Kaç yıllık işlem yapılacak?");
  int yil = int.parse(stdin.readLineSync()!); // Toplam 5 yıl

  // Opsiyonel parametrelerle fonksiyonu çağırma
  double sonuc = faizHesapla(baslangicParasi, yillikFaizOrani,hesaplamaPeriyodu: hesaplamaPeriyodu, yil: yil);
  print("Toplam para (opsiyonel parametrelerle): $sonuc");

  // Varsayılan parametre değerleriyle fonksiyonu çağırma
  sonuc = faizHesapla(baslangicParasi, yillikFaizOrani);
  print("Toplam para (varsayılan parametrelerle): $sonuc");
}

double faizHesapla(double anaPara, double faizOrani,{int hesaplamaPeriyodu = 1, int yil = 1}) {
  double toplamPara = anaPara;
  int toplamPeriyot = yil * hesaplamaPeriyodu;
  int suankiPeriyot = 0;

  while (suankiPeriyot < toplamPeriyot) {
    toplamPara += toplamPara * faizOrani / hesaplamaPeriyodu;
    suankiPeriyot++;
  }

  return toplamPara;
}

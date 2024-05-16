import 'dart:io';
import 'dart:math';

void main() {
/*   
Ödev 3 : Klavyeden girilen değerler arasında rastgele sayı üreten ve bu değerleri 10 elemanlı bir diziye atayan SayiUret() isimli bir method yazın. 
Bu dizinin elemanlarını yazan DiziYazdir() adlı bir method yazarak elemanları listeleyin. Daha sonra bu dizi içerisinde EnBuyukDeger() adlı methodla dizinin en büyük 
elemanını bulun.EnKucukDeger() adlı methodlada dizinin içerisinde ki en küçük değeri bulun. En küçük değeri ve en büyük 
değeri ekranda gösterin Buradaki methodlarda kullanıcının yapabileceği tüm hataları kontrol altına alın. 
*/ 
  try {
    print("Başlangıç değerini giriniz");
    int basla = int.parse(stdin.readLineSync()!);
    print("Bitiş değerini giriniz");
    int bitis = int.parse(stdin.readLineSync()!);
    if (basla >= bitis) {
      print("Lütfen başlangıç değerini bitiş değerinden daha küçük bir sayı olarak girin");
    } else {
      List<int> gelenDizi = sayiUret(basla, bitis);
      diziYazdir(gelenDizi);
      enBuyukDeger(gelenDizi);
      enKucukDeger(gelenDizi);
    }
  } catch (exception) {
    print("Hata oluştu: $exception");
  }
}

List<int> sayiUret(int enKucukSayi, int enBuyukSayi) {
  Random random = Random();
  List<int> dizi = [];
  for (int i = 0; i < 10; i++) {
    int rastgeleSayi = (enKucukSayi + random.nextInt(enBuyukSayi - enKucukSayi) +1); //Rastgele tamsayı oluşturur.
    dizi.add(rastgeleSayi); //dizinin içine random olarak oluşturduğumuz sayıları ekliyor.
  }
  return dizi; //İçi boş oluşturduğumuz dizinin içerisine rastgele oluşturduğumuz sayıların eklenmiş halini return ettik.
}

void diziYazdir(List<int> d) {
  for (var item in d) {
    print(item);
  }
}

void enBuyukDeger(List<int> sayi) {
  print("Dizinin en büyük değeri: ${sayi.reduce(max)}"); //Her iterasyonda önceki değeri ve şu andaki elemanı ve toplamı hesaplar. Bir sonraki iterasyonda kullanır. Listenin en büyük değerini bulur.
}

void enKucukDeger(List<int> sayi) {
  print("Dizinin en küçük değeri: ${sayi.reduce(min)}");
}

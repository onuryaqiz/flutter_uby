import 'dart:io';

void main() {
  //Kullanıcıdan fiyat girildiğinde %20 KDV uygulayan sonra da fiyata ekleme yapan algoritmayı yazın.

  print("Fiyatı giriniz");
  int fiyat = int.parse(stdin.readLineSync()!);

  double sonFiyat = (fiyat * 20) / 100 + fiyat;

  print("Son Fiyat:$sonFiyat");
}

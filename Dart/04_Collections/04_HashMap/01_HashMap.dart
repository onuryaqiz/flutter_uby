/*
 - Map de Set gibi içerisindeki elemanları sırasız saklar.
 - Set ve List'ten ayrılan özelliği ise içindeki elemanları key-value olarak tutar.
 - Her veri türü olur fakat dikkat edilmesi gereken nokta key değerlerin eşsiz olması gerekiyor.
 - Sabit değil,dinamiktir.Yani growable'dır.
 - Map'i sözlük gibi düşünebiliriz.
 - Web'ten JSON olarak veri çekmek için sıkça kullanılır. Önemlidir.
 */

import 'dart:async';

void main() {
  //Veri çekerken key olarak veri çekeceğiz.
  Map<String, int> plakaKodlari = {
    "istanbul": 34,
    "ankara": 06,
    "izmir": 35
  }; //Json veriler de bu şekildedir.
  print(plakaKodlari);
  print(plakaKodlari["izmir"]); //Key olarak arama yaptık value değerini getirdi.

//Dynamic olarak da veri tutabiliriz.
  Map<String, dynamic> kendiBilgilerim = {
    "adım": "Onur",
    "yaşım": 20,
    "kilom": 123,
    "evliMi": false,
    "alanı": "Yazılım",
    "maasi": 1842.12
  };
  //print(kendiBilgilerim["adim"]);

  //Map oluşturma şekilleri
  Map<String, dynamic> map1 =
      Map(); //Genel kullanım string ve dynamic olduğu için bu şekilde yazıldı.
  Map<String, dynamic> map2 = {};

  //map1['kilo'] = 50;

  //Key değerlerini bulma
  for (var key in kendiBilgilerim.keys) {
    print(key); //Kendibilgilerimin key'ini ver.
    print(" Kendi bilgilerim:${kendiBilgilerim['key']}"); //Value'ları verir.
  }

  //Value değerlerini bulma
  for (var values in kendiBilgilerim.values) {
    print(values);
    print("Value değerlerim: $kendiBilgilerim");
  }

//Key ve Value olarak çağırma
  for (var keyValue in kendiBilgilerim.entries) {
    print("Key : ${keyValue.key}: Value: ${keyValue.value}");
  }

//containsKey methodu: Key değerinde arama yapma
  if (kendiBilgilerim.containsKey('maasi')) {
    print("Maaş bilgisi:${kendiBilgilerim['maasi']}");
  }
}

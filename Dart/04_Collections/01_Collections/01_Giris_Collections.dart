//3 yapımız bulunmakta;
//List, HashSet ve HashMap, bunlar arasında en çok kullanacağımız yapı ise List'tir.
//Collection yapıları genel olarak aynı verileri tutar.
/*
- List ikiye ayrılır
  -Sabit uzunluklu
  -Büyüyen listeler

Not: Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır.
- List<int> num = List.filled(10,0); // 10 eleman içeren sabit uzunluklu liste yani dizi(array)
- Index numaraları 0'dan başlar yani listenin ilk elemanına erişmek için 0.indexine bakılır.
num[0] gibi.
 */

void main(List<String> args) {
  int sayi =5; //Tek bir değişkene tek bir değer ataması yapabiliyoruz. 
               //Fakat 1'den fazla değşkeni aynı anda yazabilmek için List'leri kullanırız.

  //Sabit Uzunluklu List
  List<int> sayilar = List.filled(3, 1); //3 elemanlı içerisinde 1 olan List tanımladık.
  sayilar[0] = 3;
  sayilar[1] = 6;
  sayilar[2] = 10; //Birinci index 3,İkinci index 6, 3.index'e 10 değeri atadık.

  print(sayilar); //Sabit uzunluklu List'lerin boyutu değiştirilemez.
  print(sayilar.length);
  //sayilar.length = 10;  //Hata alırız!

  //veya ;
  print(sayilar[4]);//Bu şekilde yazdırdığımızda 3 indexli bir listte 4.index'i çağırmaya çalışıyoruz.
}

void main() {
/*
DEĞİŞKEN: Bir işlemi gerçekleştirmek için yapılması gereken ilk şey veriyi hafızaya almaktır. Hafızadaki verileri ifade etmek için programlama dillerinde değişkenleri kullanırız.
Tutulan verinin türüne göre farklı veri tipleri vardır. Dart şu tipleri içerir.
- Number 
  - int tamsayılar
  - double ondalıklı sayılar
- String metinsel ifadeler
- Boolean true/false

Tüm veri tipleri Object'tir.

var anahtar kelimesi variable anlamına gelir ve veri türünü belirtmek istemiyorsak kullanırız.
Atanan ifadeye göre otomatik olarak türü belirtir.

Dart'ta değişkenlerin tipini açıkça belirtmek kodun okunabilirliğini ve bakımını kolaylaştırabilir. 
Ayrıca, programın hatalardan kaçınmasına ve daha performanslı çalışmasına yardımcı olur. 
Dart, güçlü tip sistemine sahiptir ve tip güvenliği sağlar, yani bir değişkenin beklenen tiple eşleşmeyen bir değer alması durumunda derleyici veya runtime hatası alırsınız.
*/

  String ogrenciAdi = "Ahmet"; //Burada String bir veri tipidir ogrenciAdi ise değişkendir.
  int ogrenciYasi = 17;
  double ogrenciBoyu = 1.78;
  String ogrenciBasharf = 'A';
  bool ogrenciCaliskanMi = true;

  //Num ile double arasındaki fark
  num yil = 2011;
  double yil2 = 2011; //Num ile double arasındaki fark num integer bir değer atarsak aynı şekilde ekrana çıktı yazdırırken, double'da integer bir değer ataması yaparken .0 gibi bir atama yapar.
  //onun haricinde herhangi bir fark yoktur.

  print(ogrenciYasi);
  print(ogrenciBoyu);
  print(ogrenciBasharf);
  print(ogrenciCaliskanMi);
  print(yil);
  print(yil2);

  //String Interpolation: Birden fazla satır olan metinsel ifadeleri birleştirirken + yerine $ ile kullanıma string interpolation denir. Diğer veri türleri için de geçerlidir.
  print("Öğrenci Adı: $ogrenciAdi"); //String Interpolation
  print("Adı $ogrenciAdi olan öğrencinin ismindeki karakter sayısı ${ogrenciAdi.length}'tir");
}

/*
 - Dinamik olarak büyüyen, küçülen koleksiyonlarımız varsa sabit uzunluklu listeler yerine,
   dinamik listeleri kullanırız.
 - Tanımlanması sabit uzunluklu dizilere benzer sadece burada listenin boyutunu belirtmeyiz.
 - add methodu eleman ekler.
 - clear tüm elemanları siler.
 - remove verilen elemanı siler.
 - removeAt belirtilen index'teki elemanı siler.
 - [] kullanarak belli bir indexteki elemanı güncelleyebiliriz.
 */
void main(List<String> args) {
  //1.YOL
  List<int> numbers = [];
  numbers.add(2);
  numbers.add(4);
  numbers.add(6);

  print(numbers);
  print(numbers.length);

  //numbers.length = 10; //Burayı çalıştırdğımızda 3 elemana +7 null değeri atamaya çalışacak ve hata alacağız.
  List<int?> numbers2 =[]; //? ile null olabilir de diyebiliriz. Ama önermiyorum!
  numbers2.add(3);
  numbers2.add(5);
  numbers2.add(7);
  print(numbers2);
  print(numbers2.length);
  numbers2.length = 15;

  //2.YOL
  List<int> sayilar = [1, 4, 8];
  sayilar.add(42);
  print(sayilar); //sayılara 42 sayısını atadık.

  List<int> sayilar2 = List.filled(4, 8, growable: true); //growable büyüyebilen bir listemiz var demektir.
  sayilar2.add(6); //6 sayısını ekledikten sonra 5 elemanlı bir liste oldu.
  print(sayilar2);
  print(sayilar2.length);

  //Boş büyüyen bir liste oluşturma
  List<int> sayilar3 = List.empty(growable: true);
  List<int> sayilar4 = []; //List.empty() ile aynıdır.
  sayilar4.add(20);
  print(sayilar4.length);
}

void main(List<String> args) {
  List<int> sayilar = [10, 7, 6, 5, 1];
  print(sayilar.first); //Listenin ilk elemanını yazdırır.
  print(sayilar.last); //Listenin son elemanını yazdırır.
  print(sayilar.isEmpty); //Liste boş mu dolu mu onu kontrol eder.

  //Hata almamak için şu şekilde kontrol sağlanabilir.
  List<int> sayilar2 = [];
  if (sayilar2.isNotEmpty) {
    print(sayilar2.first);
    print(sayilar2.last);
  }

  print("Liste boş mu:" + sayilar2.isEmpty.toString()); //isEmpty true veya false değer döndürdüğü için string'e çevirdik.
  print("Eleman Sayısı: ${sayilar2.length}");
  print("Ters sırada yazdır: ${sayilar.reversed}"); //Anlık olarak değiştirir. Kalıcı bir değişiklik yapmaz.

  //Add: Listeye belirtilen değeri ekler.
  sayilar.add(15);
  print(sayilar);

  //remove:Listeden belirtilen elemanı çıkarır.
  sayilar.remove(1); //listedeki 1 elemanını çıkar
  print(sayilar);

  //RemoveAt:Liste içerisinde verilen index numarasına göre elemanı listeden çıkarır.
  sayilar.removeAt(2); //Listedeki 3.index'teki elemanı çıkar.
  print(sayilar);

  //Contains:Listede içeriyor mu?
  if (sayilar.contains(7)) {
    print("Liste içerisinde 7 var");
  } else {
    print("Listede 7 bulunmuyor!");
  }

  //elementAt:Liste içerisinde verilen değere göre kaçıncı index'te olduğunu söyler.
  print(sayilar);
  print(sayilar.elementAt(2)); //Listenin 3.index'indeki sayıyı yazdırır.

  //Shuffle: Listede rastgele olarak elemanların yerlerini değiştirir. Her çağırmada farklı yerler belirler.
  sayilar.shuffle();
  print(sayilar);
}

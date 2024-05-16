//Collection'lardan bir diğeri de HashSet'tir.
//List'den en önemli farkı içindeki elemanları düzenli yani sıralı olarak tutmaz.
//Bundan dolayı List'te olduğu gibi Index'leri kullanmayız.
//Elemanlardan sadece bir tane olur yani unique'tir. Her eleman birbirinden farklıdır.
//Index olmadan elemanları kontrol etmek için de List'te kullandığımız contains methodunu kullanabiliriz.
//List'teki methodlar, Set için de geçerlidir.
//Set : Küme anlamına geliyor.

void main() {
  Set<String> isimler = Set();
  isimler.add("Ali");
  isimler.add("Veli");
  isimler.add("Fatma");
  isimler.add("Buse");

  //Not:Set'lerde listeye veriler sırayla eklenmez. Index yapısı olmadığı için. Yani büyük verilerde add methodu kullandığımızda sıralı bir şekilde göremeyiz.
  //print("İsim:"+adlar[0]);//[] Set için tanımlanmadı hatası alırız.

  for (var isim in isimler) {
    print("İsim: $isim"); //for döngüsü her bir ismi yazdırma işlemi
  }

  //Contains methodu
  var sonuc = isimler.contains("Ali"); //true döner.
  print("Cevap:" + sonuc.toString());

  //Remove methodu
  var sonuc2 = isimler.remove("Veli"); //true döner
  print("Sonuç:" + sonuc2.toString());

  //Set benzersiz olanları gösterdiği için aynı olanları ekranda göstermez.
  Set<int> sayilar = Set.from([1, 1, 1, 2, 2, 3, 3, 3, 5, 5, 5, 4]);
  for (var sayi in sayilar) {
    print("Sayı:$sayi");
  }

  //Collection'larda set'leri list'lere veya tam tersi aktarma durumu
  List<int> tekSayilar = [1, 3, 5, 7, 9, 7, 5, 3];
  Set<int> sayilar2 = Set.from([1, 1, 1, 2, 2, 3, 3, 3, 5, 5, 5, 4]);
  sayilar2.addAll(tekSayilar);
  for (var sayi2 in sayilar2) {
    print("addAll methodundan sonra:$sayi2");
  }

  
}

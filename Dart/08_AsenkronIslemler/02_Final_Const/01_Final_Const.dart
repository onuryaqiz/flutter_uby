//Instance variable'lar yani nesne örnekleri final olarak tanımlanır, const ile tanımlanmaz. Const ile tanımlamak istiyorsak, static const olmalıdır.


void main() {
  final tarih = DateTime.now(); //Runtime olarak çalıştığı için hata vermez.
  // const tarih2 = DateTime.now(); Compile sırasında çalıştığı için ve değeri bilinmediği için hata verir.

  // final list = [1, 2, 3, 4, 5];
  // final list2 = [1, 2, 3, 4, 5];

  // list.add(6); //Ekleme işlemi yapabiliriz.
  // list2.add(8);
  // if (list == list2) {
  //   print("Eşittir");
  // } else {
  //   print("Eşit değildir"); //Final içerideki değerlere değil pointer'larına bakar.
  // }

  const list = [1, 2, 3]; //Çalışmadan önce değeri bilindiği için eşittir. Değerini bilinmeyen yapıların için kullanılmaz
  const list2 = [1, 2, 3];

  if (list == list2) {
    print("Eşittir");
  } else {
    print("Eşit değildir.");
  }
}

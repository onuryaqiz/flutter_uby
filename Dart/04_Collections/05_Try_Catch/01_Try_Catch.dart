//Derleme sırasında oluşabilecek hataları kontrol etmek amacıyla kullanılır.
//Kullanılacak yer mutlaka hata fırlatmalıdır.
void main() {
  try {
    //Kontrol edilecek kısım buraya yazılır.
  } catch (e) {
    //Hata ile ilgili nesnedir yani exception'ın kısaltmasından gelir.

    //Hata olduğunda burası çalışır
  }

  var sayilar = <int>[];
  sayilar.add(12); //0.index
  sayilar.add(14); //1.index

 // sayilar[2] = 13; // Bu şekilde ekleme yapmaya çalışırsak hata alırız. Bunun için try catch ile kontrol sağlayabiliriz.

  try {
    sayilar[3] = 14;
    print("Ekleme işlemi yapıldı.");
  } catch (e) {
    print("Doğru index numarası giriniz!");
  }
}

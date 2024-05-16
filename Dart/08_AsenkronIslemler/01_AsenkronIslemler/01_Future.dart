import 'dart:io';
//Single Thread yapısında bütün işlemler buraya eklenir. Bir de event loop yapısı vardır. Sürekli yapılması gereken işlemleri soran bir yapıdır.
//Future: gelecekte bir değer üretecek olan bir işlemi temsil eder. Bu işlem hemen tamamlanmayabilir; örneğin, bir dosyanın okunması,
//bir ağ isteğinin yapılması veya zaman alıcı bir hesaplamanın tamamlanması gibi işlemler asenkron olarak gerçekleştirilebilir.
// Future, Dart'ın tek iş parçacıklı (single-threaded) yapısında, bu tür asenkron işlemleri yönetmeyi sağlar.

//uzunSurenIslem fonksiyonu, 2 saniye gecikmeli olarak bir string döndüren bir Future döndürür.
Future<String> uzunSurenIslem() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'İşlem tamamlandı';
  });
}

void main() {
  print('İşlem başladı');
  uzunSurenIslem().then((sonuc) {
    //Future tamamlandığında, yani 2 saniye sonra, then bloğu çalışır ve sonuç yazdırılır.
    print(sonuc); // İşlem tamamlandı
  }).catchError((hata) {
    //Eğer işlem sırasında bir hata oluşursa, catchError bloğu çalışır.
    print('Hata: $hata');
  }).whenComplete(() { //try-catch finally kısmındaki,finally gibi her türlü çalışır.
    //whenComplete metodunda belirtilen işlem, Future başarıyla tamamlandığında veya bir hata ile sonuçlandığında çalışır
    // ve genellikle temizlik işlemleri için kullanılır.
    print('İşlem sona erdi');
  });
//main fonksiyonu bu Future'ı beklerken, programın geri kalanı bloke olmaz ve "Diğer işlemler devam ediyor" gibi mesajlar hemen yazdırılabilir.
  print('Diğer işlemler devam ediyor');
}

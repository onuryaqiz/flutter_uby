import '03_StreamOrnek.dart';

void main() {
  var hisseSenetStreamController = HisseSenetStreamController(); //StreamController.broadcast() kullanımı sayesinde birden fazla dinleyici bu stream'e abone olabilir ve
                                                                //hisse senedi fiyatlarının gerçek zamanlı değişimlerini takip edebilir.

  hisseSenetStreamController.stream.listen((hisse) {
    print('Yeni Fiyat - ${hisse.isim}: ₺${hisse.fiyat.toStringAsFixed(2)}');
  });

  // Fiyat güncellemelerini başlat
  hisseSenetStreamController.baslat('Migros');

  // Uygulama bir süre sonra durdurulacak
  Future.delayed(Duration(seconds: 10), () {
    hisseSenetStreamController.dispose();
    print('Hisse Senet Fiyat Takibi Durduruldu.');
  });
}
import 'dart:async';
import 'dart:math';

class HisseSenet {
  String isim;
  double fiyat;

  HisseSenet(this.isim, this.fiyat);
}

class HisseSenetStreamController {
  final _random = Random();
  final StreamController<HisseSenet> _controller = StreamController.broadcast();
  Timer? _timer; // Timer için bir referans tut. Cannot add new events hatasının sebebi Stream devam ederken bir akış durdurulmasıdır.

  Stream<HisseSenet> get stream => _controller.stream;

  void baslat(String hisseIsim) {
    _timer = Timer.periodic(Duration(seconds: 1), (_) => fiyatGuncelle(hisseIsim));
  }

  void fiyatGuncelle(String hisseIsim) {
    double yeniFiyat = (20 + _random.nextDouble() * 10);
    _controller.sink.add(HisseSenet(hisseIsim, yeniFiyat)); //StreamController üzerinden bir Stream oluşturulduğunda, 
                                                            //bu stream'e veri eklemek ya da olayları tetiklemek için sink.add metodunu kullanırsınız.
  }

  void dispose() {
    _timer?.cancel(); // Timer'ı durdur
    _controller.close(); // Ardından StreamController'ı kapat
  }
}
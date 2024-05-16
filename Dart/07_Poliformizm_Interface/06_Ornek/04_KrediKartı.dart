import '03_BasePayment.dart';

class KrediKartiIslemi extends AnaOdeme {
  KrediKartiIslemi(String kur) : super(kur);

  @override
  void odemeYontemi(double miktar) {
    logOdeme(miktar);
    // Kredi kartı ödeme işlemlerini gerçekleştir
    print("Kredi kartı işlemi yapıldı");
  }
}

class PaypalOdemeIslemi extends AnaOdeme {
  PaypalOdemeIslemi(String currency) : super(currency);



  @override
  void odemeYontemi(double miktar) {
     logOdeme(miktar);
    // PayPal ödeme işlemlerini gerçekleştir
    print("PayPal ödeme işlemi yapıldı");
  }
}

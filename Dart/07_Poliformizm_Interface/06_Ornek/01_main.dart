import '02_IPaymentProcessor.dart';
import '04_KrediKartı.dart';

void kullaniciOdemeIslemi(IOdemeYontemi odemeYontemi, double miktar) {
  odemeYontemi.odemeYontemi(miktar);
}

void main() {
  var krediKarti = KrediKartiIslemi("USD");
  kullaniciOdemeIslemi(krediKarti, 100.0);

  var payPal = PaypalOdemeIslemi("TR");
  kullaniciOdemeIslemi(payPal, 75.0);
}

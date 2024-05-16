import '02_IPaymentProcessor.dart';

abstract class AnaOdeme implements IOdemeYontemi {
  String kur;

  AnaOdeme(this.kur);

  void logOdeme(double miktar) {
    print("$miktar $kur ödemesi gerçekleşti");
  }

  @override
  void odemeYontemi(double miktar); // Bu metod alt sınıflar tarafından uygulanacak.
}

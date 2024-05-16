import '02_Proje.dart';

class YazilimGelistirmeProjesi extends Proje implements Testable, Assessable {
  YazilimGelistirmeProjesi(String ad, String aciklama) : super(ad, aciklama);

  @override
  void baslat() {print("$ad başlatıldı.");} 

  @override
  void durdur() => print("$ad durduruldu.");

  @override
  void tamamla() => print("$ad tamamlandı.");

  @override
  void testEt() => print("$ad test ediliyor.");

  @override
  void degerlendir() => print("$ad değerlendiriliyor.");
}

class TasarimProjesi extends Proje {
  TasarimProjesi(String ad, String aciklama) : super(ad, aciklama);

  @override
  void baslat() => print("$ad başlatıldı.");

  @override
  void durdur() => print("$ad durduruldu.");

  @override
  void tamamla() => print("$ad tamamlandı.");
}

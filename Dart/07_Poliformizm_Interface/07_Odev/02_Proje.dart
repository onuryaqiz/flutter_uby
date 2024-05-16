abstract class Proje {
  String ad;
  String aciklama;

  Proje(this.ad, this.aciklama);

  void baslat();
  void durdur();
  void tamamla();
}

abstract class Testable {
  void testEt();
}

abstract class Assessable {
  void degerlendir();
}

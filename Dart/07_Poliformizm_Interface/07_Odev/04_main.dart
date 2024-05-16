import '02_Proje.dart';
import '03_YazilimGelistirmeProjesi.dart';

void main() {
  List<Proje> projeler = [
    YazilimGelistirmeProjesi("Web Geliştirme", "E-ticaret sitesi"),
    TasarimProjesi("Logo Tasarımı", "Yeni marka için logo")
  ];

  for (var proje in projeler) {
    proje.baslat();
    proje.tamamla();
    
//if  kullanarak nesnelerin belirli arayüzleri uygulayıp uygulamadığını kontrol ediyor ve buna göre spesifik metodları çağırıyorduk.
    if (proje is Testable) {
      (proje as Testable).testEt();
    }

    if (proje is Assessable) {
      (proje as Assessable).degerlendir();
    }
  }
}

//Soru:Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı.
//Eğer PI sayısı verilmediyse default olarak 3.14 değerini alsın.

void main() {
  double daireAlan = daireAlanHesapla(5);
  print("Daire Alanı: $daireAlan");
}

daireAlanHesapla(double yariCap, [double piSayisi = 3.14]) {
  return yariCap * yariCap * piSayisi;
}

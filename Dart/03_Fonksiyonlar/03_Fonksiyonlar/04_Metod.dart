void main() {

  double tutar1 = siparisTutariHesapla('kalem', 25);
  print('25 kalem için toplam tutar: $tutar1');
  cizgiCek();

  double kalemIndirimOrani = indirimOraniHesapla(tutar1);
  print('Kalem için İndirim Oranı: $kalemIndirimOrani');
  cizgiCek();
  
  double tutar2 = siparisTutariHesapla('defter', 100);
  print('100 defter için toplam tutar: $tutar2');
  cizgiCek();
  
  double defterIndirimOrani = indirimOraniHesapla(tutar2);
  print('Defter için İndirim Oranı: $defterIndirimOrani');
  cizgiCek();
}

void cizgiCek() {
  print('-----------');
}

// Ürün tipine göre birim fiyat döndüren fonksiyon
double birimFiyatGetir(String urunTipi) {
  switch (urunTipi) {
    case 'kalem':
      return 1.50; //Ürünün fiyat bilgisini döndürdük
    case 'defter':
      return 3.00;
    default:
      return 0.0; // Bilinmeyen ürün tipi içinde default değer atadık.
  }
}

// Sipariş miktarına göre indirim yüzdesi hesaplayan fonksiyon
double indirimOraniHesapla(double miktar) {
  if (miktar >= 100) {
    //100 adet ürüne göre indirim
    return 0.15; // %15 indirim
  } else if (miktar >= 50) {
    //50 adet için bir indirim
    return 0.10; // %10 indirim
  } else if (miktar >= 20) {
    return 0.05; // %5 indirim
  } else {
    return 0.0; // İndirim yok
  }
}

// Siparişin nihai tutarını hesaplayan fonksiyon
double siparisTutariHesapla(String urunTipi, double miktar) {
  double fiyat = birimFiyatGetir(urunTipi); //Ürünün fiyat bilgisini getiren metodu siparisTutariHesapla metodu içinde kullandık.
  double indirimOrani = indirimOraniHesapla(miktar); //indirimOraniHesapla metodunu çağırdık.
  double toplamFiyat = fiyat * miktar;
  double indirimTutari = toplamFiyat * indirimOrani; 
  return toplamFiyat - indirimTutari;
}

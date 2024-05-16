//Hata durumlarında kullandığımız bloktur.
//~ tilde tam sayıya çevir. AltGr+Ü ile yapılır.
void main() {
  print("Uygulama çalıştırıldı.");
  try {
    int sayi = 20 ~/ int.parse("deneme");
    print(sayi);
  } on FormatException catch (e) {
    print(e.message); //Hatanın mesajı
    print(e.source); //Hatanın kaynağı
  } catch (e) {
    print("Hata $e");
  } finally {
    print("Her durumda burası çalışır.");
  }
  print("Uygulama çalışması bitti.");
}

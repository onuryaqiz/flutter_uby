import '02_Enum.dart';

void main() {
  fiyatGetir(IcecekTipi.Fanta); //Karışıklığı önlemek yerine direkt sonucu alabilmeyi sağladık.
}

//İçecek türlerine göre hesaplama yapan method
void fiyatGetir(IcecekTipi tipi) {
  switch (tipi) {
    case IcecekTipi.Fanta:
      {
        print("Fanta Ücreti : ${10 * 20}");
      }

      break;
    case IcecekTipi.Kola:
      {
        print("Kola Ücreti : ${10 * 10})");
      }
    case IcecekTipi.Sprite:
      {
        print("Sprite Ücreti : ${10 * 5})");
      }
      break;
    default:
  }
}

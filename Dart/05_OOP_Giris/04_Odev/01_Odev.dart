//Ogrenci isminde bir class oluşturun. Öğrenci class'ı içerisinde ogrenciAdi ve ogrenciYasi üyeleri oluşturun. Bu bilgiler private olsun.
//ogrenciAdi ve ogrenciYasi bilgilerine getter ile ve bilgi güncellenmek istendiğinde de setter ile erişim sağlansın.
//ogrenciYasi negatif değer alamaz. Negatif bir değer girilirse hata mesajı fırlatın.
// main içerisinde Ogrenci class'ından bir nesne örneği oluşturun ve şu işlemleri yapın.
// Verilen ad ve yaş bilgileri ile bir öğrenci nesnesi yaratın.
// getter ile öğrenci bilgilerini yazdırın.
// setter ile öğrenci adı ve yaşını değiştir.
// Getter ile tekrar bilgileri getirin.

import 'Ogrenci.dart';

void main() {
  var ogrenci = Ogrenci("Ali", 20);

  //Get ile değerlerini okuma
 // print("${(ogrenci.ogrenciAdi, ogrenci.ogrenciYasi)}");

  //Set ile değerleri değiştirme
  ogrenci.ogrenciAdiGir = "Veli";
  ogrenci.ogrenciYasiGir = 22;

  ogrenci.ogrenciBilgileriGetir();
}

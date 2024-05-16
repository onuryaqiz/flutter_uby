/* 
Ödev 1 : Öğrenci isimlerini tutan 5 elemanlı bir liste oluşturun. Sonra sıralı bir şekilde ekrana yazdırın.
Ödev 2 : Key'leri string türünde value'ları dynamic olarak tuttuğunuz bir HashMap oluşturun. Map içerisinde ,Key'ler yani string şeklinde tutulanlar ;
kendi bilgilerinizden oluşan değerler tutun. Örnek; Ad,Soyad,Kilo,derseGeliyorMu gibi bilgiler olsun ve key value değerlerini ekrana yazdırın.
*/
void main() {
  //Ödev 1 Çözüm:
  List<String> ogrenciler = List.filled(5, ''); //String türünde 5 elemanlı öğrenci listesi
  ogrenciler[0] = "Galip";
  ogrenciler[1] = "Salim";
  ogrenciler[2] = "Sema";
  ogrenciler[3] = "Ayşe";
  ogrenciler[4] = "Berna";

  for (var i = 0; i < ogrenciler.length; i++) {
    print(ogrenciler[i]);
  }

  // //Ödev 2 Çözüm:
  Map<String, dynamic> bilgilerim = {};
  bilgilerim['adim'] = "Onur";
  bilgilerim['soyadim'] = "Yagiz";
  bilgilerim['kilom'] = 145;
  bilgilerim['derseGeliyorMu'] = false;

  for (var bilgi in bilgilerim.entries) {
    print("Bilgilerim ${bilgi.key}:${bilgi.value}");
  }

}

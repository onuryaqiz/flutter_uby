//VeritabaniServis adında bir class oluşturun. Bu sınıf, veritabanı işlemlerini(ekleme,silme,güncelleme) gerçekleştiren metodlara sahip olacak. 
//Sınıf metodları String tablo, ve Map<String,dynamic> data parametrelerini alacak.
//Sonra, KullaniciYonetimi diye bir sınıf oluşturun ve içerisinde kullaniciEkle,kullaniciGuncelle,kullaniciSil metodlarını doldurun.
// final VeritabaniServis _dbServis; adında  bir private değişken oluşturun. Yani composition
//void main içerisinde bu metodları kullanarak kullaniciEkle,kullaniciGuncelle,kullaniciSil işlemlerini gerçekleştirin. 
//Bütün bunları Composition'ı örnek alarak yapın.

class VeritabaniServis {
  void ekle(String tablo, Map<String, dynamic> data) {
    // Veritabanına veri ekleme işlemi
    print('$tablo tablosuna $data eklendi.');
  }

  void guncelle(String tablo, Map<String, dynamic> data) {
    // Veritabanında veri güncelleme işlemi
    print('$tablo tablosunda $data güncellendi.');
  }

  void sil(String tablo, int id) {
    // Veritabanından veri silme işlemi
    print('$tablo tablosundan id=$id olan veri silindi.');
  }
}

class KullaniciYonetimi { //Composition işlemi KullaniciYonetimi sınıfının içinde bir VeritabaniServis nesnesi kullanarak gerçekleştirilmiştir. 
  final VeritabaniServis _dbServis; //Private servis

  KullaniciYonetimi(this._dbServis);

  void kullaniciEkle(Map<String, dynamic> kullaniciData) {
    _dbServis.ekle('Kullanıcılar', kullaniciData);
  }

  void kullaniciGuncelle(Map<String, dynamic> kullaniciData) {
    _dbServis.guncelle('Kullanıcılar', kullaniciData);
  }

  void kullaniciSil(int kullaniciId) {
    _dbServis.sil('Kullanıcılar', kullaniciId);
  }
}

void main() {
  var dbServis = VeritabaniServis();
  //kullaniciYonetimi=KullaniciYonetimi(dbServis) ifadesi, UserManager sınıfının bir örneğini oluştururken Dependency Injection prensibini kullanır, 
  //bu da sınıfın gerekli bağımlılıklarla doğru şekilde başlatılmasını sağlar. 
  var kullaniciYonetimi=KullaniciYonetimi(dbServis);

  kullaniciYonetimi.kullaniciEkle({'id': 1, 'name': 'Onur YAĞIZ', 'email': 'onur@gmail.com'}); //Map Set işlemi ile key value şeklinde eklendi.
  kullaniciYonetimi.kullaniciGuncelle({'id': 1, 'name': 'Onur YAĞIZ updated', 'email': 'onur@outlook.com'});
  kullaniciYonetimi.kullaniciSil(1);


}

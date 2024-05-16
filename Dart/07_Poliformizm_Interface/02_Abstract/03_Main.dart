import '02_AbstractOrnek.dart';

void main() {
  //1)DbContext dbContext = DbContext(); //Bu şekilde nesne üretilmesine izin vermez. Abstract class'lardan nesne üretemeyiz.

  DbContext dbContext = SQLite(); //Bu şekilde kullanım sağlayabiliriz.

  //2)FireBase'e geçtiğimiz durumda sadece yukarıdaki kodta SQLite yerine FirebaseDb yazacağız.
  //DbContext dbContext = FirebaseDb(); 

  dbContext.kullaniciGuncelle(); //1)SQLite sınıfından türettiğimiz nesne üzerinden override ettiğimiz metodları çağırdık.
  dbContext.kullaniciKaydet();

  kullaniciEkle(dbContext);
}

//1)kullaniciEkle diye bir metod oluşturup abstract class üzerinden kullanıcı güncelleme işlemi yapabildik.
void kullaniciEkle(DbContext db) {
  db.kullaniciGuncelle();
}

//1)Abstract class'ların amacı bütünlüğü sağlamaktır. Bu örnekte gerçek hayatta karşılaşabileceğimiz şekilde örneklendirme yapacağız.
//2)Diyelim ki, Firebase üzerinden DB bağlantısı gerçekleştiriyoruz. Ve Firebase yerine başka bir veritabanına geçme kararı verdik.

//1
abstract class DbContext {
  void kullaniciKaydet(); //İçi doldurulmamış methodlarımız varsa mutlaka abstract olmalıdır!
  void kullaniciSil();
  void kullaniciGuncelle();
}

//1
class SQLite extends DbContext {
  @override
  void kullaniciGuncelle() {
    print("SQLite'ta kullanıcı güncellendi.");
  }

  @override
  void kullaniciKaydet() {
    print("SQLite'ta kullanıcı kaydedildi.");
  }

  @override
  void kullaniciSil() {
    print("SQLite'ta kullanıcı kullanıcı silindi.");
  }
}

//2)Firebase kullanmak istediğimiz durumda
class FirebaseDb extends DbContext {
  @override
  void kullaniciGuncelle() {
    print("Firebase kullanıcı güncellendi.");
  }

  @override
  void kullaniciKaydet() {
    print("Firebase kullanıcı kaydedildi.");
  }

  @override
  void kullaniciSil() {
   print("Firebase kullanıcı silindi.");
  }
}

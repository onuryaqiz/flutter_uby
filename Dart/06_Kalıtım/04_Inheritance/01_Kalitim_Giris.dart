/* 
Kalıtım(Inheritance): Bir sınıfın başka bir sınıftan özellikleri (fields) ve davranışları (methods) miras almasını sağlayan bir mekanizmadır. 
Bu, kodun yeniden kullanılabilirliğini artırır ve kod organizasyonunu iyileştirir. 
Dart'ta kalıtım, extends anahtar kelimesi kullanılarak gerçekleştirilir.
Bir sınıf başka bir sınıftan türetildiğinde, alt sınıf (türetilmiş sınıf) üst sınıfın (temel sınıf) tüm kamuya açık ve korunan özelliklerini ve yöntemlerini miras alır. 
Ancak, alt sınıf, üst sınıfın özel özelliklerine ve yöntemlerine erişemez.
Overriding : Üst class'taki değişkenlerin veya methodların alt sınıf(child) tarafından değiştirilmesidir.
*/
void main() {
  Kullanici kullanici = Kullanici();
  NormalKullanici normalKullanici = NormalKullanici();
  Admin admin = Admin();

  normalKullanici.mailGonder();

  EkPaketAlanKullanici ekPaketAlanKullanici = EkPaketAlanKullanici();
  ekPaketAlanKullanici.logIn(); //Ek Paket Alan Kullanıcı'da böyle bir method olmamasına rağmen Inheritance sayesinde methodu kullanabildik.

  admin.logIn(); // Kullanıcı'daki logIn metodunu Admin Kullanıcı'da override ederek kullanabildik.
}

// Bütün class'lar buradan miras alıyor.
class Kullanici {
  String kullaniciAdi = "onuryagiz";
  String sifre = "12345";

  void logIn() {
    print("Parent Kullanıcı girişi başarılı");
  }
}

//Kullanici'dan miras alıyor.
class Admin extends Kullanici {
  String kullaniciAdi = "onuryagiz";
  String sifre = "12345";

@override
void logIn() {
  print("Admin Kullanıcı Giriş Yaptı");
}
  void kullaniciSayisi() {
    print("Kullanıcı Sayısı 10000'tür");
  }
}

//Kullanici'dan miras alıyor.
class NormalKullanici extends Kullanici {
  void mailGonder() {
    print("Normal Kullanıcı Gönderilen mail: asas@gmail.com");
  }
}

//NormalKullanici'dan miras alıyor.
class EkPaketAlanKullanici extends NormalKullanici {
  void ekPaketler() {
    print("Ek Paket Alan Kullanıcı");
  }
}

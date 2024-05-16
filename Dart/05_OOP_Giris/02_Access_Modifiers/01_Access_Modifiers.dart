//Access Modifiers(Erişim Belirleyiciler) : Uygulamalarımıza farklı kişiler tarafından müdahaleleri önlemek için erişim belirleyicileri kullanırız. Sınıf üyelerinin erişimini kontrol etmek için kullanılır.
//Public: Her yerden erişimi sağlayan erişim belirleyicisidir. Dart dilinde default erişim belirleyicisi Public'tir.
//Private: _ işareti ile başlayan bir isim,özel yani private olarak kabul edilir. Private üyeler, sadece aynı dosyadaki kod tarafından erişilebilir.

void main()
{
  DbContextIslemleri dbContext = DbContextIslemleri();
  bool result = dbContext.connect();
  if(result)
  {
    print("Veritabanına bağlantı sağlandı");
  }
  else{
    print("Hatalı İşlem!");
  }
}

//Bu class'ı bu sayfada tanımladığımız için main içerisinde private yapsak bile erişim sağlayabiliriz. Onun için class'ı ayrı bir sayfada açmamız gerekiyor.
class DbContextIslemleri {
  String _userName = "admin"; // "_" ile private yaptık. Ve DbContext_Private içerisinden değişkenlere erişimi kapattık.
  String _password = "1234";

  bool connect() {
    if (_userName == "admin" && _password == "1234") {
      return true;
    } else {
      return false;
    }
  }
}

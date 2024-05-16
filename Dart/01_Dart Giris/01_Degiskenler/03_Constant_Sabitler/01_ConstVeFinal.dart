void main() {
  //Constant- Sabitler
  //Constant içerisine bir kere veri atıldığında bir daha değiştiremeyeceğimiz yapılardır.
  //final ve const keyword'ü(anahtar kelime) ile kullanılır. İkisi de aynı işlemi yapar.
  //const: Değişken oluşturduğumuz anda hafızada(memory'de) oluşur.
  //final: Değişken oluşturulduktan sonra kod çalıştırıldığında(compile edilirken) hafızada oluşur.
  //Önemli: const sınıf içerisinde kullanılmaz.
  //genelde final kullanılır.
  //Constant kullanmak memory yönetimini rahatlatır.Çünkü hafızada sabit için yer ayrılır ve değişim olmayacağı için ayrılan yer yeni bir değer almak için beklemez.

  //1.Kullanım Şekli
  int sayi = 10;
  sayi = 20; //Burada int ile atama yapılan sayi değişkenini yeni değer atayarak değiştirdik.

  // final pi = 3.14;
  // pi =3.15; //Burada hata aldık. final ile atama yaptığımız için tekrar yeni bir değer atamamıza izin vermedi.

  //2.Kullanım Şekli
  final String mesaj = "Merhaba Dünya"; //Genel kullanım şekli böyledir.
  
  const sayi2 = 20;
  const double sayi3 = 14.5;
}

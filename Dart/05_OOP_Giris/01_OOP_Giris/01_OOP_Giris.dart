/* 
  Gerçek dünyadaki nesnelerin yazılıma uyarlanabilmesi için nesne tabanlı programlama dilleri oluşturulmuştur.
  Class(Sınıf) Nedir ? 
  - Kendi oluşturduğumuz yapılara class denir. Kendine ait değişkenler veya methodlar barındırabilir. İhtiyacımız olan bir nesnenin veya varlığın bilgisayar dillerindeki tanımıdır.

  Nesne Nedir ? 
  - Oluşturduğumuz class'ların yani sınıflardan ürettiğimiz örneklere nesne denir. Sınıflara ulaşmak için kullanırız.
  - Sınıfların somutlaşmış halleridir.
  - Nesnelerin durumu(state) ve davranış biçimleri(behaviour) vardır.
  - State'leri değişken olarak tanımlarız.
  - Davranışları method olarak tanımlarız.
 
 */

void main() {
  Personel personel = Personel(); //Boş bir nesne örneği oluşturmamız gerekiyor.
  personel.calismaDurumu = true; //personel bir nesnedir.
  personel.ismi = "Ali";
  personel.maasi = 1000;

  var personel2 = Personel(); //var ile oluşturabiliriz.
  

  //dynamic personel3 = Personel(); //Dynamic olarak oluşturabiliriz. Fakat nesne üzerinden class'ın değerlerine erişim sağlayamayız.
  // personel3.
}

//Sınıf isimlerinin baş harfleri büyük olmalıdır.
class Personel {
  /* Dart 2.0'dan sonra null safety geldiği için değişkenlerin başına late yazabilir ya da ? işareti nullable olduğunu belirtebiliriz.
  Late: Hafıza yönetimini verimli hale getirmek için kullanılır.
  Null Safety özelliği ile sınıf içerisinde değer atamadan değişken oluşturamayız.
  Bu sorunu çözmek için late keyword'ü kullanılır.
  Kullanılma sebebi late isminden geldiği gibi değişken tanımlandığı anda hafızada yer ayırmak yerine değişkeni ilk kullandığımız anda hafızada yer ayrılmasını sağlar. 
  */

  //instance variables : Yani örnek değişkenleri
  late int maasi;
  String? ismi;
  late bool? calismaDurumu;

  void calis() {
    print("Çalışan hala çalışıyor");
  }
}

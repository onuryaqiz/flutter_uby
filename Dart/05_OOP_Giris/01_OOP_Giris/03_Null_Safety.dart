/* 
 Değişkenler null olabilir. Bunu da ? ile tanımlarız. Soru işareti nullable olabilir anlamına gelir. Fakat bu özelliğin kullanılması tavsiye edilmez. 
 Sebebi ise null değerler uygulamaların çökmesinde büyük oranda etki eder.
 Null olabilecek değişken kullanımı daha kontrollü olması için Dart 2.0'dan sonra Null Safety gelmiştir.
 Eğer bir değişkene ? ile nullable olabileceğini belirttiysek if ile kontrolünü sağlamamız iyi olacaktır.
 ! işareti ise değer null olabilir ama benim kontrolüm altında demektir. Yazdığım kodlara güveniyorum anlamına gelir.
  */
void main() {
  //String deneme = null; //Bu şekilde atama yapamayız.
  String? deneme2 = null; //Bu şekilde atama yapabiliriz.

  deneme2 = "Hello World";

  //? işareti ile olan yöntem
  String? ad = null;
  //ad = "Onur";
  //print("? ile olan yöntem: ${ad?.toLowerCase()}"); //değişkenin sağına soru işareti koyarsak hata vermeyecektir.

  //! ile olan yöntem
  //print("! ile olan yöntem : ${ad!.toUpperCase()}"); //! kullanılması uygulama açısından risklidir. Önerilmez. Sebebi ise ifade null gelirse uygulama çöker.

  //if kontrollü yöntem(en güvenilir yöntem)
  if (ad != null) {
    print("Cevap:${ad.toLowerCase()}");
  } else {
    print("Ad değişkeni null'dur.");
  }
}

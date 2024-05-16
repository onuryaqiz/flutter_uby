void main() {
  /*  const anahtar kelimesi, bir değerin derleme zamanında sabit olduğunu belirtir.
  Bu, const ile tanımlanan her şeyin, kod yazılırken bilinen sabit bir değere sahip olması gerektiği anlamına gelir. 
  */

  //Örnek 1
  const String uygulamaVersiyon = "1.0.0"; //Uygulama versiyonu farklı yerlerde kullanılabilir ve değişiklik yapılmaması gereken bir değerdir.
  print("Uygulama versiyonu : $uygulamaVersiyon");
  //uygulamaVersiyon = "2.0.0" //Burada uygulama versiyonu değiştirmek istediğimizde hata alırız.

  //Örnek 2
  const String infoMail = "info@gmail.com"; 
  print("Şirket mail adresimiz:$infoMail");
}

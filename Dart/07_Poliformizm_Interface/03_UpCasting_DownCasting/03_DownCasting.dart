/* 
Downcasting, genellikle bir temel sınıf referansının asıl türetilmiş sınıf türüne geri dönüştürülmesi işlemidir. 
Dart'ta, downcasting yapmak için as anahtar kelimesi kullanılır. Ancak, downcasting yapmadan önce, 
nesnenin gerçekten dönüştürülmek istenen türe ait olup olmadığını kontrol etmek iyi bir pratiktir. 
Bu, is anahtar kelimesi ile yapılabilir. 
*/

import '02_UpCasting.dart';

void main() {
  //Bu örnekte, Muzisyen türündeki muzisyen değişkeni, aslında bir Gitarist nesnesidir. 
  //muzisyen değişkeninin Gitarist olup olmadığını kontrol ettikten sonra, as anahtar kelimesi ile Gitarist türüne downcast yapıyoruz.
  // Bu sayede Gitarist sınıfına özgü soloYap metoduna erişebiliyoruz.
  
  Muzisyen muzisyen = Gitarist("Ali"); // Upcasting
  if (muzisyen is Gitarist) { //is ile 
    Gitarist gitarist = muzisyen as Gitarist; // Downcasting
    gitarist.soloYap(); // "Ali gitar solo yapıyor." çıktısını verir.
  }
}
//Liste içerisinde isim bulma işlemi yapacağız.
import 'dart:io';

void main() {
  var isimler = <String>[];

  isimler.add("Umut");
  isimler.add("Sam");
  isimler.add("Ceren");
  isimler.add("Emrullah");
  isimler.add("Arda");

  print("Aramak istediğiniz ismi giriniz");
  String arananIsim = stdin.readLineSync()!;
  for (var isim in isimler) {
    if (isim == arananIsim) {
      print("Aranan isim vardır");//İsim ararken büyük/küçük harfe dikkat edilmeli. Yoksa bir sonuç dönmez ve break çalışır.
       break;
    }
   
  }
}

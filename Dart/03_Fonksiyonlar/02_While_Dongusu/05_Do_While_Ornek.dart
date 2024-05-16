//Sistemin rastgele üretmiş olduğu sayıyı kullanıcının bulması için bir kod bloğu yazarak,
//Eğer kullanıcının girdiği sayı üretilen sayıdan büyük ise kullanıcının büyük bir sayı girdiğini,
//küçük sayı girdiyse kullanıcının küçük sayı girdiğinin uyarısını veriniz
//ve kullanıcının bu 3 adımlı tahmin oyununda 5 hakkı olsun
//Rastgele üretilen sayı(10,100) arasında olsun
//try catch do while
import 'dart:io';
import 'dart:math';

void main() {
  var ran = Random();
  int random = ran.nextInt(91) + 10; //10 ile 100 arasında sayı üretir.
  int hak = 1;
  try {
    do {
      print("$hak.hakkınız.Bir sayı giriniz!!");
      int sayi = int.parse(stdin.readLineSync()!);
      print(sayi);

      if (sayi < random) {
        print("----------");
        print("Girdiğiniz sayı üretilen sayıdan küçüktür.");
        print("----------");
        if (hak == 5) {
          print("Hakkınız dolmuştur. $random");
          break;
        }
      } else if (sayi > random) {
        print("----------");
        print("Girdiğiniz sayı üretilen sayıdan büyüktür.");
        print("----------");
        if (hak == 5) {
          print("Hakkınız dolmuştur.Üretilen sayı: $random");
          break;
        }
      } else {
        print("----------");
        print("Tebrikler çok şanşlısınız");
        print("----------");
        break;
      }

      hak++;
    } while (true);
  } catch (Exception) {
    print("Hatalı işlem yaptınız!!");
  }
}

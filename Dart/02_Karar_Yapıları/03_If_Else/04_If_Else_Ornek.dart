//Kullanıcıdan alınacak 3 adet sayının içinde 2'nin katları olan sayıların toplamını yapınız ve kullanıcıya gösteriniz.
import 'dart:io';

void main() {
  print("1.sayıyı giriniz");
  int sayi1 = int.parse(stdin.readLineSync()!);
  print("2.sayıyı giriniz");
  int sayi2 = int.parse(stdin.readLineSync()!);
  print("3.sayıyı giriniz");
  int sayi3 = int.parse(stdin.readLineSync()!);
  int topla = 0;
  if (sayi1 % 2 == 0) {
    topla += sayi1;
    print("1.değeri çift girdiniz");
  }
  if (sayi2 % 2 == 0) {
    topla += sayi2;
    print("2.değeri çift girdiniz");
  }
  if (sayi3 % 2 == 0) {
    topla += sayi3;
    print("3.değeri çift girdiniz");
  }

  print("Girilen çift sayıların toplamı:\n$topla");
}

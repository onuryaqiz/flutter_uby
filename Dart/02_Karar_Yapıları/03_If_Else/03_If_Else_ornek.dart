// Kullanıcının girdiği sayının çift mi tek mi olup olmadığını bulan programı yazın
import 'dart:io';

void main() {
  print("Bir sayı giriniz");
  int sayi = int.parse(stdin.readLineSync()!);
  if (sayi % 2 == 0) {
    print('Girdiğiniz sayı çifttir');
  } else if(sayi%2==1)
   {
    print("Girdiğiniz sayı tektir.");
  }
}

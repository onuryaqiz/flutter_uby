/* Bir kullanıcıdan bir tam sayı girmesini isteyin. Bu sayı için aşağıdaki işlemleri yapacak bir Dart programı yazın:

Girilen sayının karesini hesaplayın.
Girilen sayının küpünü hesaplayın.
Girilen sayının karekökünü hesaplayın.
Girilen sayının 10 ile modunu alın (yani sayıyı 10'a böldüğünüzde kalanı bulun).
 */

import 'dart:io';


void main() {
  print('Bir tam sayı giriniz:');
  int sayi = int.parse(stdin.readLineSync()!);

  // Karesini hesaplama
  int karesi = sayi * sayi;
  print('Girilen sayının karesi: $karesi');

  // Küpünü hesaplama
  int kup = sayi * sayi * sayi;
  print('Girilen sayının küpü: $kup');


  // 10 ile modunu alma
  int mod = sayi % 10;
  print('Girilen sayının 10 ile modu: $mod');
}

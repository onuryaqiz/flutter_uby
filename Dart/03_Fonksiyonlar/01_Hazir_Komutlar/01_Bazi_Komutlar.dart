import 'dart:math';

void main() {
  //Matematiksel ve diğer işlemler ile ilgili dart içindeki bazı komutlar veya methodlar.

  int min = 10;
  int max = 20;

  var ran = Random();

  int rastgeleSayi = (min + ran.nextInt(max - min) +1); //10 ile 20 arasında sayı üretmiş oluyoruz. +1 burada 20'yi de dahil et anlamına geliyor.
  print(rastgeleSayi);                                  // Eklemeseydik 19'a kadar sayı üretecekti.

  //Ceil: Yukarı yuvarlama
  double x = 6.7;
  int c = x.ceil();
  print("c: $c");

  //Floor: Aşağı yuvarlama
  int f = x.floor();
  print("f: $f");

  //Sqrt: Karekök alma
  double s = sqrt(x);
  print("s: $s");

  //Abs: Mutlak değer yapma

  int z = -10;
  int m = z.abs();
  print("m:$m");

  //Pow : Üs Alma
  num us = pow(3,2); 
  print("us:$us");
}

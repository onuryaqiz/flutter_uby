//Bir sayı listemiz olacak ve bu liste içerisine rastgele 0-25 sayı üreteceğiz.Ve ürettiğimiz sayı listesini consol'da göstereceğiz.
import 'dart:math';

void main(List<String> args) {
  //Dart 2.0'dan önce tanımlama;
  // var sayilar = List<int>[];
  var sayilar = <int>[];

  var ran = Random();

  for (var i = 0; i < 50; i++) {
    int randomSayi = ran.nextInt(26); //0 ile 25 arası
    sayilar.add(randomSayi); //randomSayi'yı sayilar içerisine atacak.
  }

  //sayilar.sort(); //Sort: Sıralı bir şekilde göstermeyi sağlar.
                   //kaldırırsak sayılar karışık gözükecektir.

  for (var sayi in sayilar) {
    print(sayi); //Rastgele ürettiği için her sayı olmak zorunda değil.
  }
}

class LateSinifi {
  //int sayi; bu şekilde tanımlama yapamayız.
  late int sayi;
  int sayi2 = 10; //bu şekilde de tanımlama yapabiliriz.
}

//Late kullanmak istemiyorsak Constructor kullanabiliriz.
class Urun {
  late int fiyat;
  late String ismi;

  Urun(this.fiyat,this.ismi); //Constructor oluşturduğumuzda late keyword'lerini silebiliriz.
  //Constructor oluşturmak istemiyorsak late kullanmak zorundayız.
}

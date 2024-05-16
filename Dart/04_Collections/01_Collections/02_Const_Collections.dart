//String türünde list tanımlaması
void main() {
  List<String> isimler = List.filled(2, ""); //2 elemanlı string
  //isimler[0] = 10; //şeklinde yazamayız. String olarak list tanımladık. Alacağı tür de string olmalı!
  isimler[0] = 3.toString(); //şeklinde atama yapabiliriz.
  isimler[1] = "Onur";

  print(isimler);
  print(isimler[1]);

  //Bütün türlerin list ataması, yani dynamic.
  //List butunTurler = List.filled(5,0); olarak da yazabiliriz.
  List<dynamic> butunTurler = List<dynamic>.filled(5, 0); //5 elemanlı değer ataması olmazsa default 0 atar.
  butunTurler[0] = 'Onur'; //string türünde
  butunTurler[1] = false; //bool
  butunTurler[2] = 5; //int

  print(butunTurler);

  //liste elemanlarında gezmek
  for (var i = 0; i < isimler.length; i++) {
    //isimler[i]+="onur";
    print(isimler[i]); //Elemanların hepsini yazdırır.
  }

  List<int> numbers = List.filled(3, 0);
  numbers[0] = 3;
  numbers[1] = 6;
  numbers[2] = 10;

  for (var i = 0; i < numbers.length; i++) {
    numbers[i] += 5; //numbers'ın her elemanına +5 ekle dedik.
    print(numbers[i]);
  }
}

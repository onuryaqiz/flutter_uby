void main() {
  String deneme1 = "Selam";
  //isEmpty; String içeriğinin boş veya dolu olduğunu kontrol eder. Bool türünde cevap döner.
  print("Boş mu : ${deneme1.isEmpty}");
  //lenght; String ifadenin uzunluğunu kontrol eder.
  print("Lenght:${deneme1.length}");
  //Contains(); String içerisinde değer ararız
  if (deneme1.contains("el")) {
    print("el var");
  } else {
    print("Yok");
  }
  //subString(); String içerisinden istediğimiz değer aralığında alır
  print("subString: ${deneme1.substring(1, 3)}");
  //toLowerCase(); Küçük harflere dönüştürür.
  print("toLowerCase : ${deneme1.toLowerCase()}");
  //toUpperCase(); Büyük harflere dönüştürür.
  print("toUpperCase : ${deneme1.toUpperCase()}");
  //split(): Belli bir karakter aralığına böler.
  print("Split: ${deneme1.split('l')}");
  //trim(): Baştaki ve sondaki boşlukları alır.
  print("trim: ${deneme1.split('m')}");
}

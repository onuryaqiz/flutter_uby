void main() {
  //Koşul gereken yerlerde kullanırız.
  // == : Eşittir
  // != : Eşit Değil
  // >  : Büyüktür
  // <  : Küçüktür
  // >= : Büyük Eşittir
  // <= : Küçük Eşittir

  //Mantıksal Operatörler : Her iki şart sağlandığında.
  // && ,AND : Her iki koşulda sağlanıyorsa true, iki koşuldan biri sağlanmıyorsa false
  // || ,OR  : İki koşuldan biri sağlanıyorsa true
  // !  ,NOT : Var olan durumun tersine dönüştürür.

  //Koşul Operatörleri
  int sayi1 = 10;
  int sayi2 = 20;

  int s1 = 40;
  int s2 = 30;

  print(sayi1 == sayi2); //false
  print(sayi1 != sayi2); //true
  print(sayi1 > sayi2); //false
  print(sayi1 >= sayi2); //false
  print(sayi1 <= sayi2); //true
  print(sayi1 > sayi2 && s1 > s2);//true and false : false
  print(sayi1 > sayi2 || s1 > s2);//true and false : true
}

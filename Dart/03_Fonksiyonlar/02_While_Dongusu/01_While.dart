void main() {
/*  While döngüsü belirli koşul doğru olduğu sürece bir bloğu tekrar tekrar çalıştırmak için kullanılır.
  while(kosul){
  kosul doğru olduğu sürece çalışacak kod bloğu
}
*/
//0'dan başlayarak 4'e kadar olan sayıları ekrana yazdırır. Her adımda i bir artar ve döngü 5 olana kadar devam eder.
  // var i = 0;
  // while (i < 5) {
  //   print(i);
  //   i++;
  // }
//While döngüsünün,döngü koşulu başlangıçta sağlanmıyorsa, döngü çalışmayabilir. Bu durumda koşulun başlangıçta kontrol edilip kontrol edilmeyeceğini düşünmek gerekir.
//Örnek;
  var toplam = 0;
  var sayi = 1;
  while (sayi <= 20) {
    toplam +=sayi;//toplam = toplam+sayi;
    sayi++;
  }
  print("Toplam:$toplam"); //1'den 10'a kadar olan sayıları toplar ve sonucu ekrana yazdırır.
}

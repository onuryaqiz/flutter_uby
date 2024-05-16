void main() {
  //1-500 arasındaki sayıların içinden 13 ve katlarının sayısını ve toplamlarını hesaplayınız.
  int deger = 0; //13'ün katı olan sayıların kaç tane olduğunu tutuyor.
  int toplam = 0; //13'ün katı olan sayıların toplamını tutuyor.
  
  //Burada i'nin değeri 0,13,26,39 şeklinde gidecektir.
  //deger++ : her bir döngü adımında deger değişkeni bir artırılıyor yani 13.
  //toplam= toplam+i ise her bir döngüde i değeri toplam değişkenine ekleniyor.Bu 13'ün katı olan sayıların toplamı ve kaç tane olduğu ekrana yazdırılıyor.
  for (var i = 0; i < 500; i += 13) {
    deger++;
    toplam = toplam + i;
  }
  print("13'ün katları ve toplamı:$toplam ve katları sayısı $deger");
}

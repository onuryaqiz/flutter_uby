void main() {
/*Döngüler;
Belirli kodları tekrarlı çalıştırma amaçlı yapılardır.
var=> for için varsayılan olarak gelen bir veri tipidir.var yerine başka bir veri tipi kullanabilirsiniz  
i=0-->int veri tipi için tanımlanan bir değişkendir.0 başlangıç değeridir.
i<lenght--> i değişkenin döngü için üst sınır değerini belirler lenght ise varsayılan olarak atanmıştır, bir sayısal değer gelir ya da üst sınır için bir kod yazılabilir.
i++==> i değişkeninim artış miktarıdır.artış miktarını i+=2,i+=5, vb bir değer yapabilirsiniz             
*/
  //i'yi 0'dan başlat ve 1'er 1'er arttır ve 4'e kadar yazdır.
  for (int i = 0; i < 5; i++) {
    print("Döngü 1:$i");
  }
  //j'yi 1'den başlat 2'şer 2'şer arttır ve 99'a kadar yazdır.
  for (var j = 1; j < 100; j += 2) {
    print("Döngü 2:$j");
  }

  //y'yi 3'ten başlat 5'er 5'er arttır ve 48'a kadar yazdır.
  for (var y = 3; y < 50; y += 5) {
    print("Döngü 3:$y");
  }

  //0'dan başla 8'e kadar 2'şer
  for (var i = 0; i < 9; i += 2) {
    print("Döngü 4:$i");
  }
//10'dan başla  0'a kadar ve 2'şer azalsın
//0'ı görmek istediğimiz için -1 yazdık.
  for (var i = 10; i > -1; i -= 2) {
    print("Döngü 5:$i");
  }

 
}

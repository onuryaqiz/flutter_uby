/* - Methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilse de olur verilmese de olur gibi 
durumlarda süslü veya köşeli parantez kullanırız.
   - Eğer köşeli parantez[] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır.
   - Süslü parantez kullanırsak{} burada da parametreler isteğe bağlıdır ama bu parametreleri
belirtirken sıralama önemini kaybeder ve parametreleri geçerken isimlerini vermek zorunda kalırız.
   - Ayrıca method tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. 
Bu değerler sayesinde eğer kullanıcı method parametrelerini atamamışsa, bu varsayılan değerler kullanılır. 
*/

void main() {
  //Optional 1 Örnek
  // int cikarma = sayilariCikar(10, 5);
  // print("Optional 1 Çıkarma: $cikarma");

  //Optional 2 Örnek
  int carpim = sayilariCarp(sayi6: 5, sayi5: 6, sayi4: 9);
  print("Optional 2 Carpim: $carpim");
}

//Required Parameter : Yani belirtilen parametreleri kullanmak zorundayız.
int sayilariTopla(int sayi1, int sayi2, int sayi3) {
  return sayi1 + sayi2 + sayi3;
}

//Optional Parametre 1 []: Eğer sayi3 değişkenine default bir değer vermezsek hata alırız. Sebebi ise null değer ataması olacağı için hata verir.
int sayilariCikar(int sayi1, int sayi2, [int sayi3 = 0]) {
  return sayi1 - sayi2 - sayi3;
}

//Optional Parametre 2 {}: Eğer parametrelerin sıralamasına dikkat etmeden yazmak istiyorsak, bunu da {} yaparız. Fakat çağırdığımız parametre isimlerini
//belirtmek zorundayız. Optional olduğu için de default değer belirtmek zorundayız. Null hatası almamak için.
int sayilariCarp({int sayi4 = 1, int sayi5 = 1, int sayi6 = 1}) {
  return sayi4 * sayi5 * sayi6;
}

//Static: Bir değişkenin veya methodun, bulunduğu sınıftan nesne oluşturulmasına gerek kalmadan çağrılabilir veya erişilebilir.
//Bir sınıfta static bir yöntem tanımlarsak,bu yöntemi sınıf adıyla çağırabiliriz ve nesne oluşturmamıza gerek kalmaz.
import '02_ClassA.dart';

void main() {
  print(A.KDV); //Nesne örneği oluşturmadan A sınıfının değişkenine erişim sağlayabildik.

  A.fiyat = 1999; //A sınıfının fiyat değişkenini değiştirdik.

  print(A.fiyat);

  A.Asinifimethod(); //A sınıfına ait methoda erişim sağladık.
}

/* 
Bir abstract class (soyut sınıf), doğrudan örneklenemeyen ve genellikle ortak bir arayüz sağlamak veya
belirli bir sınıf ailesi için bir temel sağlamak amacıyla kullanılan bir sınıf türüdür. 
Abstract sınıflar, bir veya daha fazla abstract metot (soyut metod) içerebilir. 
Bu metotlar, sınıf tarafından tanımlanır ancak gövdesi (içeriği) olmadığı için, 
abstract sınıftan türetilen alt sınıflar tarafından uygulanmalıdır. 
Soyut sınıflar, kodun yeniden kullanılabilirliğini ve esnekliğini artırır ve çok biçimliliği (polymorphism) sağlamak için kullanılır.
abstract bir sınıfın nesnesi doğrudan oluşturulamaz. Bunun yerine, bu sınıftan türetilmiş alt sınıfların nesneleri oluşturulabilir.
Abstract Metotlar İçerebilir: Abstract sınıflar, gövdesiz metotlar içerebilir. Bu metotlar, sınıftan türetilen alt sınıflar tarafından tanımlanmalı ve uygulanmalıdır.
Alt Sınıflar Tarafından Genişletilebilirler: Abstract sınıflar, diğer sınıflar tarafından genişletilebilir. 
Türetilen sınıflar, abstract sınıftaki tüm abstract metotları uygulamak zorundadır.
 */

abstract class Ders {
  void dersMateryaliSagla();
  void sinavYap();
}

//Abstract sınıf tarafından türetilen sınıflar
class OnlineDers extends Ders {
  @override
  void dersMateryaliSagla() {
    print("Online platform üzerinden ders materyalleri sağlanıyor.");
  }

  @override
  void sinavYap() {
    print("Online platform üzerinden sınav yapılıyor.");
  }
}

class YuzYuzeDers extends Ders {
  @override
  void dersMateryaliSagla() {
    print("Sınıfta yüzyüze ders materyalleri dağıtılıyor.");
  }

  @override
  void sinavYap() {
    print("Sınıfta yazılı sınav yapılıyor.");
  }
}
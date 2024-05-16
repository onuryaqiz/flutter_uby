import '03_Turu.dart';
import '04_Icecek.dart';

//Menu burada ana class gibi düşünülebilir.
class Menu {
  late int menuId; //Id1 : Alkolsüz Icecekler
  late String menuBaslik; //Icecekler
  late Icecek icecekId; //Id1: Limonata //Id2: Americano
  late Turu turId; //Id1:Soğuk İçecekler //Sıcak Icecekler

  Menu(this.menuId, this.menuBaslik, this.icecekId,this.turId);
}

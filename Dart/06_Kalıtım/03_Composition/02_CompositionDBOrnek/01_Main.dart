import '02_Menu.dart';
import '03_Turu.dart';
import '04_Icecek.dart';

void main() {
  var tur = Turu(1, "Soğuk İçecekler");
  var tur2 = Turu(2, "Sıcak İçecekler");

  var yemek = Icecek(1, "Limonata");
  var yemek2 = Icecek(2, "Americano");

  var menu = Menu(1, "İçecekler", yemek, tur);

  print("Menu Id'si : ${menu.menuId}");
  print("Menu Başlık: ${menu.menuBaslik}");
  print("Menu İçecek Türü: ${menu.turId.turIsim}");
  print("İçecek İsmi: ${menu.icecekId.icecekIsim}");

}

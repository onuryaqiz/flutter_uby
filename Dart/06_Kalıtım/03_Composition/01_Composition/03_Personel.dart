import '02_Departman.dart';

class Personel {
  late String adi;
  late int maasi;
  late Departman departman; //Departman Class'ı Composition yani foreign key

  Personel(this.adi, this.maasi, this.departman);
}

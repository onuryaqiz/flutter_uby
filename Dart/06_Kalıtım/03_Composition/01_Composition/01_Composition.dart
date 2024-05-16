/* Bir sınıf başka bir sınıfın nesnesi olabilir. Buna Composition(bileşim) denir. Veritabanlarından dolayı böyle bir yapımız bulunmaktadır.
Foreign Key'ler için veri çekerken kullanırız.
DB'de Foreign Key : Bir veritabanında, foreign key (yabancı anahtar) bir tablodaki bir sütunun, 
başka bir tablodaki birincil anahtar(primary key) sütunuyla ilişkilendirilmesini sağlar. 
Bu ilişki, referanslanan tablodaki verilerin bütünlüğünü korumak için kullanılır. 
*/
import '02_Departman.dart';
import '03_Personel.dart';

void main() {
  var departman = Departman("Yazılım", 2);

  var personel = Personel("Ali", 3000, departman);

  print("Personel Adı:${personel.adi}");
  print("Personel Maaşı:${personel.maasi}");
  print("Personel Departmanı: ${personel.departman.departmanAdi}"); //Composition sayesinde Personel'den Departman'a erişim sağladık.
}

/*
 Polimorfizm, programlama dillerinde nesne yönelimli programlamanın temel kavramlarından biridir ve kelime anlamı olarak "çok biçimlilik" demektir.
Polimorfizm sayesinde, farklı sınıfların nesneleri üzerinde aynı işlemleri gerçekleştirebilmek mümkün olur, 
ancak bu nesneler o işlemleri kendi özelliklerine göre farklı şekillerde gerçekleştirir. 
 */
import '02_Arac.dart';

void main() {

  Otomobil otomobil = Otomobil();
  Kamyon kamyon = Kamyon();

  yakitTuketiminiGoster(otomobil); //Arac class'ındaki metod ile otomobil class'ından oluşturduğumuz nesne farklı davranış gösterdi.
  yakitTuketiminiGoster(kamyon);   //Arac class'ındaki metod ile kamyon class'ından oluşturduğumuz nesne farklı davranış gösterdi.
}

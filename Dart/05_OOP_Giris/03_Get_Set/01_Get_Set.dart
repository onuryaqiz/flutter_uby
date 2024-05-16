//Getter: Sınıf içindeki değişkenleri okumak için kullanılan fonksiyonlardır. Private değişkenlerin okunması gerektiğinde kullanılan metotlardır.
//Setter: Sınıf içindeki değişkenlere değer atamak için kullanılan fonksiyonlardır. Veri atarken de gerekli kontrollerin yapılmasını sağlar.
//Her 2 metot da bizim class'larımıza erişimlerin kontrollü bir şekilde yapılmasını sağlamaktır. OOP'de buna encapsulation denir.
import '02_Customer.dart';

void main() {
  Customer customer = Customer(1);
  customer.customerInfo(); //Setter 1.yol veri girişi
  customer.CustomerNoEntry = 120; //Setter 2.yol veri girişi

  //Getter
  print(customer.customerInfoTellMe);
}

import '01_Interface.dart';

class ClassA implements Interface,Interface2 {
  @override
  late int sayi;

  @override
  void voidMetod() {
    print("void metod override edildi.");
  }

  @override
  String stringMetod() {
    return "String Metod implement edildi.";
  }
  
  @override
   late String interface2;
}


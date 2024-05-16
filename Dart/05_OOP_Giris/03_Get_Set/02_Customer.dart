class Customer {
  late int _id; //private

  //Customer(this._id);


  //Setter: Veri atamaya yarayan fonksiyon
  //1.YOL : Kullanılmaz
  void _customernoCheck(int id) {
    if (id > 0) {
      _id = id;
    } else
      return;
  }

  //2.YOL: Kullanılan yöntem
  void set CustomerNoEntry(int id){

  }

  Customer(int id) {
    _customernoCheck(id);
  }

  void customerInfo() {
    print("Müşteri no");
  }

  //Getter: Veri çekmeye yarayan fonksiyon 
  String get customerInfoTellMe
  {
    return "Musteri Id'si $_id";
  }
  //Fat Arrow'lu yazımı
   String get customerInfoTellMe1 => "Musteri Id'si: $_id";
}

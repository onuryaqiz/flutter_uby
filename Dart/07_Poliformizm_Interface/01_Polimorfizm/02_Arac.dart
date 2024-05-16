 class Arac {
  void yakitTuketimi() {
    print("Araç sınıfı yakıt tüketimi methodu");
  }
}

class Otomobil extends Arac {
  @override
  void yakitTuketimi() {
    print("Otomobil ortalama 5 lt/100 km yakıt tüketir.");
  }
}

class Kamyon extends Arac {
  @override
  void yakitTuketimi() {
    print("Kamyon ortalama 15lt/100 yakıt tüketir.");
  }
}
//yakitTuketiminiGoster fonksiyonu, herhangi bir Arac türündeki nesnenin yakıt tüketimini gösterecek şekilde genel bir arayüz sağlar. 
void yakitTuketiminiGoster(Arac arac) {
  arac.yakitTuketimi();
}

void main() {
  const Ogrenci o1 = Ogrenci(3, "Ali");
  const Ogrenci o2 = Ogrenci(
      3, "Ali"); //Const ile tanımlandığı için ikisinin de değeri aynıdır.

  if (o1 == o2) {
    print("Eşittir");
  } else {
    print("Eşit değil");
  }
}

class Ogrenci {
  final int id;
  final String isim;

  const Ogrenci(this.id, this.isim);
}

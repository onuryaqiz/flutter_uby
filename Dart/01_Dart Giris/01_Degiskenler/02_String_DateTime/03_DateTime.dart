void main() {
  //DateTime yazılma şekilleri

  //DateTime.now
   DateTime tarih = DateTime.now();
  print("Bugünün Tarihi:$tarih");

  //Belli bir tarih verme
  DateTime flutterCikis = DateTime(2018, 12, 04); //Yıl,Ay,Gün
  print("Flutter Çıkış Tarihi : $flutterCikis");

  //Final ile kullanım
  final turkiyeKurulus = DateTime.utc(1923, 10, 29);
  final milenyum = DateTime.parse('2000-05-17 21:45:00'); //9:45 akşam

  print("Türkiye'nin Kuruluş Yılı :${turkiyeKurulus.year}"); //Yıl
  print("Türkiye'nin Kuruluş Ayı :${turkiyeKurulus.month}"); //Ay
  print("Türkiye'nin Kuruluş Günü :${turkiyeKurulus.day}"); //Gün
  print("Milenyum Saati: ${milenyum.hour}");
  print("Milenyum Dakikası: ${milenyum.minute}");

  //Tarih Aralıklarını Karşılaştırmak
  print(turkiyeKurulus.isBefore(milenyum)); //true
  print(turkiyeKurulus.isAfter(milenyum)); //false

  //Gün farkını bulmak
  final fark = milenyum.difference(turkiyeKurulus);
  print("Gün farkı: ${fark.inDays}"); //gün cinsinden aradaki farkı söyler
}

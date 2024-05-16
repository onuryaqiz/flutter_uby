//async ve await anahtar kelimeleri Future ile çalışmayı daha da kolaylaştırır. 
//Bu anahtar kelimeler sayesinde, asenkron kodu neredeyse senkron kodmuş gibi yazabilir ve okuyabiliriz.
Future<String> uzunSurenIslem() async {
  await Future.delayed(Duration(seconds: 2));
  return 'İşlem tamamlandı';
}

//await anahtar kelimesi, Future'ın sonucunu beklerken mevcut iş parçacığının bloke olmasını önler ve işlemin tamamlanmasını bekler.
// Bu, asenkron işlemleri daha anlaşılır ve yönetilebilir hale getirir.

void main()
 async {
  print('İşlem başladı');
  try {
    var sonuc = await uzunSurenIslem();
    print(sonuc);
  } catch (hata) {
    print('Hata: $hata');
  } finally {
    print('İşlem sona erdi');
  }

  print('Diğer işlemler devam ediyor');
}

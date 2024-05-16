/*
 Stream, zamanla bir dizi olayı veya veriyi sırayla işleyebilen bir veri akışıdır.
Bir Stream, verileri asenkron olarak üretir ve consumerlar bu verilere abone olabilir.
Bu, zaman içinde birbirini izleyen birden çok değerin işlenmesi gerektiğinde özellikle kullanışlıdır,
örneğin, bir dosyadan veri okuma veya bir web servisinden sürekli veri alımı gibi durumlar.

Temel Kavramlar;
Stream: Veri, olaylar veya hataların zamanla akışını temsil eder. Dart'ın async paketinin bir parçasıdır.
StreamController: Bir Stream'i yönetmek ve ona veri, hata veya tamamlama olayları göndermek için kullanılır.
Subscription: Bir Stream'e abone olmak ve gelen verileri dinlemek için kullanılır. 
Abone olunan stream'den gelen her yeni olay, verilen bir fonksiyon aracılığıyla işlenir.
 */

import 'dart:convert';
import 'dart:io';
import 'dart:async';

void main() async {
  await dosyadanSatirSatirOkuYaz();
}


Future<void> dosyadanSatirSatirOkuYaz() async {
  //var dosyaYolu = '${Directory.current.path}';
  var dosya = File('08_AsenkronIslemler/04_Stream/02_Stream.txt');

  // Dosyanın içeriğini bir stream olarak aç
  Stream<String> satirlar = dosya.openRead()
    .transform(utf8.decoder)       // Byte'ları UTF8 string'e çevir
    .transform(LineSplitter());    // Satırlara ayır

  // Her bir satırı belirli bir zaman aralığıyla işle
  await for (var satir in satirlar) {
    print(satir);
    await Future.delayed(Duration(seconds: 2));
  }
}


import '01_Access_Modifiers.dart';

void main() {
  DbContextIslemleri dbContext = DbContextIslemleri();
  bool result = dbContext.connect();
  if (result) {
    print("Veritabanına bağlantı sağlandı");
  } else {
    print("Hatalı İşlem!");
  }
}

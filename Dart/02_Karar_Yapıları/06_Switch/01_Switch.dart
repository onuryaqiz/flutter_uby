void main() {
  //Else if yapısının daha pratik kullanımıdır.
  //Case durumları sağlanırsa kod çalışır.

  int gun = 2;

  switch (gun) {
    case 1:
      {
        print("Pazartesi");
      }
      break;
    case 2:
      {
        print("Salı");
      }
      break;
    case 3:
      {
        print("Çarşamba");
      }
      break;
    case 4:
      {
        print("Perşembe");
      }
      break;
    case 5:
      {
        print("Cuma");
      }
      break;
    case 6:
      {
        print("Cumartesi");
      }
      break;
    case 7:
      {
        print("Pazar");
      }
    default:
      {
        print("Böyle bir gün yok!");
      }
      break;
  }
}

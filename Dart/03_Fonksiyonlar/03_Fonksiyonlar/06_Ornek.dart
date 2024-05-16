//Dil seçimi yapmamızı sağlayan metod
void main() {
  print("Dil seçimi yapınız");
  dilSecimi("de");
}

void dilSecimi(String dil) {
  
  //1.YOL
  // if (dil == "tr" || dil == "Türkçe")
  //   print("Merhaba Dünya");
  // else if (dil == "en" || dil == "English")
  //   print("Hello World");
  // else if (dil == "de" || dil == "Deucthland")
  //   print("Hallo Welt");
  // else
  //   print("Hatalı bir dil gönderdiniz!");

  //2. Yöntem
  switch (dil) {
    case "Türkçe":
    case "tr":
      print("Merhaba Dünya");
      break;
    case "English":
    case "en":
      print("Hello World");
      break;
    case "Deucthland":
    case "de":
      print("Hallo Welt");
      break;
    default:
      print("Hatalı bir dil gönderdiniz!");
      break;
  }
}

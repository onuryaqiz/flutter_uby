/* Kullanıcıdan alınacak cinsiyet bilgisine göre (E,K)
  Kullanıcının maaşı istenecek , yaşı istenecek , çalıştığı gün sayısı istenecek
 * Eğer => Erkek ise ("Erkek","E","e")
 * eğer yaşı 60'ın üzerinde ise maaşının 10 katı ikramiye alıp emekli edilecek. 
 * yaşı 60'ın altında ise çalıştığı gün sayısı 6000'in üstünde ise maaşının 
 * 11 katı kadar ikramiye alıp emekli edilecek. 6000 altında ise emekli edilmeyecek
 * bilgisi verilecek.
 ** Eğer => Kadın ise ("Kadın","K","k")
 * eğer yaşı 55'ın üzerinde ise maaşının 10 katı ikramiye alıp emekli edilecek. 
 * yaşı 55'ın altında ise çalıştığı gün sayısı 5000'in üstünde ise maaşının 
 * 11 katı kadar ikramiye alıp emekli edilecek. 5000 altında ise emekli edilmeyecek
 * bilgisi verilecek.
 */

import 'dart:io';

void main()
{
  try  
  {
    print("Cinsiyetinizi Giriniz(Erkek,Kadın):");
    String cinsiyet = stdin.readLineSync()!;
    print("Maaşınızı giriniz:");
    int maas = int.parse(stdin.readLineSync()!);
    print("Yaşınızı giriniz:");
    int yas = int.parse(stdin.readLineSync()!);
    print("Çalıştığınız gün sayısı:");
    int gun = int.parse(stdin.readLineSync()!);
    switch (cinsiyet)
    {
        case "Erkek":  // Cinsiyet kontrolü
        case "erkek":
        case "E":
        case "e":
            if (yas >= 60) // Yaşı 60 tan büyükse
            {
                print("Emekli oldunuz. İkramiyeniz:  ${maas * 10}");
            }
            else // Yaşı 60 tan küçükse
            {
                if (gun > 6000) // Yaşı 60 tan küçükse ve gün sayısı 6000 den büyükse
                {
                    print("Emekli oldunuz. İkramiyeniz: ${maas * 11}");
                }
                else // Yaşı 60 tan küçükse ve gün sayısı 6000 den küçükse
                {
                    print("Emekli olmaya hak kazanamadınız.");
                }
            }

            break;
        case "Kadın":
        case "kadın":
        case "kadin":
        case "K":
        case "k":
            if (yas >= 55)
            {
                print("Emekli oldunuz. İkramiyeniz: ${maas * 10}");
            }
            else
            {
                if (gun > 5000)
                {
                    print("Emekli oldunuz. İkramiyeniz: ${maas * 11}");
                }
                else
                {
                    print("Emekli olmaya hak kazanamadınız.");
                }
            }

            break;
        default:
            print("Erkek,E,e veya Kadın,K,k değerlerini cinsiyet olarak girmeniz gerekmektedir.");
            break;
    }
}

catch (Exception)
{
    print("Lütfen Doğru bilgiler veriniz.");
}
}
//Login kontrol örneği
//Klavyeden Kullanıcı Adı ve Şifre isteyerek 3 kez hatalı giriş yapılması durumunda "Hesabınız kilitlenmiştir" uyarısı vererek çıkış yapan, giriş bilgileri doğru ise "Login işlemi başarılı,anasayfaya yönlendiriliyorsunuz.." yazan programı yazalım.
//Kıyaslamalar daha önceden değişkenlere atanarak belirlenmiş username ve password değişkenleriyle yapılacak.
import 'dart:io';
void main(){
const String username = "admin";
const String password = "1905";
int counter = 0;
           
while (true)
{

	print("Kullanıcı adınızı giriniz");
	String gelenKullaniciAdi = stdin.readLineSync()!;

	print("Şifrenizi giriniz");
	String gelenSifre = stdin.readLineSync()!;

	if (gelenKullaniciAdi == username && gelenSifre == password)
	{
		print("Login işlemi başarılı,anasayfaya yönlendiriliyorsunuz");
		break;
	}
	else
	{
		print("Kullanıcı adı veya şifre yanlış");
		counter++;


		if (counter == 3)
		{
			print("Hesabınız kilitlenmiştir..");
			break;
		}
	}
}
}

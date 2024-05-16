//1 ile 100 arasında rastgele sistem tarafından belirlenen sayısı bulma oyunu yazalım.
import 'dart:io';
import 'dart:math';

void main(){
var ran = Random();
int tutulanSayi = ran.nextInt(100); //0 ile 100 arasında bir sayı üretir. Farklı aralıkta sayı üretmek istiyorsak
 int girilenSayi = 0;               //100 ile 500 arasında ran.nextInt(100) + 400 dersek 100 ile 500 arasında sayı üretir.

//Do while döngüsünün while'dan tek farkı her halükarda bir kez çalışacak olmasıdır!
do
{
	print("Sayı giriniz:");
	girilenSayi = int.parse(stdin.readLineSync()!);
	if (girilenSayi > tutulanSayi)
	{
		print("Daha küçük bir sayı giriniz");
	}
	else if (girilenSayi < tutulanSayi)
	{
		print("Daha büyük bir sayı giriniz");
	}
	else
	{
		print("Tebrikler doğru sayıyı buldunuz");
		break;
	}
} while (true);
}
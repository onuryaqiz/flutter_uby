// Status enum tanımı
import 'dart:convert';

enum Status {
   success,
   error, 
   unknown
   }

// User model sınıfı
class User {
  final String id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  // JSON'dan User nesnesi oluşturan factory constructor
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }
}



void handleApiResponse(String jsonResponse) {
  final Map<String, dynamic> decodedJson = jsonDecode(jsonResponse);

  // Status değerini işleme
  Status status = Status.unknown;
  switch (decodedJson['status']) {
    case 'success':
      status = Status.success;
      break;
    case 'error':
      status = Status.error;
      break;
  }

  // Eğer başarılıysa, kullanıcı bilgilerini işle
  if (status == Status.success) {
    final user = User.fromJson(decodedJson['user']);
    print('Kullanıcı Adı: ${user.name}');
  } else if (status == Status.error) {
    print('API\'den bir hata yanıtı alındı.');
  } else {
    print('Bilinmeyen bir hata durumu.');
  }
}


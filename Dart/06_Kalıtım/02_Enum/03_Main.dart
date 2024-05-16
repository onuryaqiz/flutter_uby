import '03_Enum_Ornek2.dart';

void main()
{
  //f format ile gösterim ile jsonResponse dönüşü
  String jsonResponse = '''  
  {
    "status": "success",
    "user": {
      "id": "1",
      "name": "Onur Yağız",
      "email": "onur@gmail.com"
    }
  }
  ''';

  handleApiResponse(jsonResponse);
}


import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  
  Future getFunction(String url) async {
    try {
  final response = await http.get(
    Uri.parse(url),
  );
  
  if (response.statusCode == 200) {
    return 
      json.decode(response.body);
  } else {
    throw Exception('Data Access Failed');
  }
} on Exception catch (e) {
  throw Exception(e);
}
  }
}

//   Map<String, dynamic> bodys={
//     "userId": '32',
//     "id": '1',
//     "title": "Tamim",
//     "body": "I am a Student"
//   };

//   Future<PostClass> postFunction (String userId, String id, String title, String body) async {
//     final res = await http.post(
//       Uri.parse(_usi), body: bodys,
//     );
//     if(res.statusCode==200){
//       return PostClass.fromJson(json.decode(res.body)) ;
//     }
//     else{
//       throw Exception("Failed to post data");
//     }
    
//   }
// }

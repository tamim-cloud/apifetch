import 'dart:convert';
import 'package:apifetch/models/get_class.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const _usi = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<GetClass>> getFunction() async {
    final response = await http.get(
      Uri.parse(_usi),
    );

    if (response.statusCode == 200) {
      return List<GetClass>.from(
        json.decode(response.body).map(
              (post) => GetClass.fromJson(post),
            ),
      );
    }
    else{
      throw Exception('Data Access Failed');
    }
  }
}

import 'package:apifetch/core/services/api_service.dart';
import 'package:apifetch/core/utils/constants/url.dart';
import 'package:apifetch/data/models/get_class.dart';
import 'package:apifetch/data/models/rick_and_morty.dart';

class PostDb {
  final ApiService ram = ApiService();
  Future postData() async{
    final data= await ram.getFunction(rickAndMortyUrl);
    return RickAndMorty.fromJson(data);
  }
  Future rickAndMortyData() async{
    final data= await ram.getFunction(usi);
    return List<GetClass>.from(data.map((post)=>GetClass.fromJson(post)));
  }
}
import 'dart:convert';
import 'package:http/http.dart' as http;
import '/model/popular_movies.dart';

class ApiProvider {
  String apiKey = "8b5e3aba30b714bf3b1812605e276345";
  String baseUrl = "https://api.themoviedb.org/3/movie/popular?";
  late int id;
  
  Future<PupularMovies> getMovies() async {
    var response = await http.get(Uri.parse("${baseUrl}api_key=$apiKey"));
    return  PupularMovies.fromJson(json.decode(response.body));
  }
}
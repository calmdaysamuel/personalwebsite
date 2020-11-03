import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:personal_website/Models/Publication.dart';

class API {
  static const String HOST = "http://localhost:8080/v1/blog/";

  static processResponse(http.Response response) {
    if (response.statusCode == 200) {
      Iterable publications = json.decode(response.body);

      List<Publication> rest = List<Publication>.from(
          publications.map((e) => Publication.fromJson(e)));
      print(rest);
      return rest;
    }
  }

  static Future<Publication> getPublication(String publicationTitle) async {
    final response = await http.get(HOST + publicationTitle);
    if (response.statusCode == 200) {
      return Publication.fromJson(jsonDecode(response.body));
    }
  }

  static Future<List<Publication>> getPublicationCategory(
      String category) async {
    final response = await http.get(HOST + "category/" + category);
    return processResponse(response);
  }

  static Future<List<Publication>> getPublicationTag(String tag) async {
    final response = await http.get(HOST + "tag/" + tag);
    return processResponse(response);
  }

  static Future<List<Publication>> getPublicationRecommendation() async {
    final response = await http.get(HOST);
    print("dsafg");
    return processResponse(response);
  }

  static Future<List<Publication>> getWorkPublication() async {
    final response = await http.get(HOST + "work");
    if (response.statusCode == 200) {
      Iterable publications = json.decode(response.body);

      List<Publication> rest = List<Publication>.from(
          publications.map((e) => Publication.fromJson(e)));
      print(rest);
      return rest;
    }
    //return processResponse(response);
  }
}

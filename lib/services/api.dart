import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://api.github.com";


Future<http.Response> getRepository(String name) {
  var url = "$baseUrl/repos/$name";
  return http.get(url);
}
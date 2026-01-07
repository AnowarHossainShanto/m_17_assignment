
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const baseUrl = 'http://35.73.30.144:2005/api/v1';

  static Future<dynamic> get(String path, String token) async {
    final res = await http.get(
      Uri.parse(baseUrl + path),
      headers: {'token': token},
    );
    return jsonDecode(res.body);
  }
}

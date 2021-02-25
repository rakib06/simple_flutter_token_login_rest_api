import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:exam_player/model/user_model.dart';

final _base = "http://127.0.0.1:8000";
final _tokenEndpoint = "/api-token-auth/";
final _tokenURL = _base + _tokenEndpoint;

Future<Token> getToken(UserLogin userLogin) async {
  print(_tokenURL);
  final http.Response response = await http.post(
    _tokenURL,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(userLogin.toDatabaseJson()),
  );
}

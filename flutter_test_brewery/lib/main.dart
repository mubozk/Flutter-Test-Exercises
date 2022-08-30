import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  http.Response response =
      await http.get(Uri.parse("https://api.openbrewerydb.org/breweries/"));
  String data = response.body;
  var decodedData = jsonDecode(data);
  String city = decodedData[0]['id'];
  print(city);
}

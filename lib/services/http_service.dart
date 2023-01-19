import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart'; 

import 'package:english_dictionary/models/word.dart';

class HttpService {
  static Future<Word> searchWordDefinition(String? word) async {
    var url =
        Uri.parse("https://api.dictionaryapi.dev/api/v2/entries/en/$word");
    Response response = await get(url);
    if (response.statusCode == 200) {
      
    } else {
      throw (response);
    }
  }
}

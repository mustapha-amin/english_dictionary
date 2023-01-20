import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:english_dictionary/models/dictionary_model.dart';
import 'package:http/http.dart';

class HttpService {
  static Future<List<DictionaryModel>> searchWordDefinition(
      String? word) async {
    var url =
        Uri.parse("https://api.dictionaryapi.dev/api/v2/entries/en/$word");
    Response response = await get(url);
    try {
      if (response.statusCode == 200) {
        return dictionaryModelFromJson(response.body);
      } else {
        throw (response);
      }
    } on SocketException {
      throw ("Unable to connecrt");
    } 
  }
}

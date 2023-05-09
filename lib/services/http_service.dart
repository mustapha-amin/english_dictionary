import 'dart:developer';
import 'package:english_dictionary/models/dictionary_model.dart';
import 'package:http/http.dart';

class HttpService {
  static Future<List<DictionaryModel>> searchWordDefinition(
      String? word) async {
    var url =
        Uri.parse("https://api.dictionaryapi.dev/api/v2/entries/en/$word");
    Response response = await get(url);
    if (response.statusCode == 200) {
      log(response.body);
      return dictionaryModelFromJson(response.body);
    } else {
      throw (response);
    }
  }
}
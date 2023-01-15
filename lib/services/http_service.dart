import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
//  [
//     {
//       "word": "hello",
//       "phonetic": "həˈləʊ",
//       "phonetics": [
//         {
//           "text": "həˈləʊ",
//           "audio": "//ssl.gstatic.com/dictionary/static/sounds/20200429/hello--_gb_1.mp3"
//         },
//         {
//           "text": "hɛˈləʊ"
//         }
//       ],
//       "origin": "early 19th century: variant of earlier hollo ; related to holla.",
//       "meanings": [
//         {
//           "partOfSpeech": "exclamation",
//           "definitions": [
//             {
//               "definition": "used as a greeting or to begin a phone conversation.",
//               "example": "hello there, Katie!",
//               "synonyms": [],
//               "antonyms": []
//             }
//           ]
//         },
//         {
//           "partOfSpeech": "noun",
//           "definitions": [
//             {
//               "definition": "an utterance of ‘hello’; a greeting.",
//               "example": "she was getting polite nods and hellos from people",
//               "synonyms": [],
//               "antonyms": []
//             }
//           ]
//         },
//         {
//           "partOfSpeech": "verb",
//           "definitions": [
//             {
//               "definition": "say or shout ‘hello’.",
//               "example": "I pressed the phone button and helloed",
//               "synonyms": [],
//               "antonyms": []
//             }
//           ]
//         }
//       ]
//     }
//   ]

// https://api.dictionaryapi.dev/api/v2/entries/en/<word>

import 'package:english_dictionary/models/word.dart';

class HttpService {
  static Future<Word> searchWordDefinition(String? word) async {
    var url =
        Uri.parse("https://api.dictionaryapi.dev/api/v2/entries/en/$word");
    Response response = await get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      log(response.body);
      return Word.fromJson(json);
    } else {
      throw (response);
    }
  }
}

import 'package:english_dictionary/services/http_service.dart';
import 'package:flutter/material.dart';

import '../models/dictionary_model.dart';

class DetailScreen extends StatefulWidget {
  String? entry;
  DetailScreen({super.key, this.entry});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late FutureList<<DictionaryModel>> word;

  @override
  void initState() {
    word = HttpService.searchWordDefinition(widget.entry);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: word,
        builder: (BuildContext context, AsyncSnapshot<List<DictionaryModel>> snapshot) {
          if (snapshot.hasData) {
            List<Dictionary_Model> dictionary = snapshot.data!;
            return Center(
              child: Text(dictionary[0].word!),
            );
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
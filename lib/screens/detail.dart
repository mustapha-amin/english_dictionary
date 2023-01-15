import 'package:english_dictionary/services/http_service.dart';
import 'package:flutter/material.dart';

import '../models/word.dart';

class DetailScreen extends StatefulWidget {
  String? entry;
  DetailScreen({super.key, this.entry});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<Word> word;

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
        builder: (BuildContext context, AsyncSnapshot<Word> snapshot) {
          if (snapshot.hasData) {
            Word word = snapshot.data!;
            return Center(
              child: Text(word.word!),
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

import 'package:audioplayers/audioplayers.dart';
import 'package:english_dictionary/models/dictionary_model.dart';
import 'package:english_dictionary/widgets/meanings.dart';
import 'package:english_dictionary/widgets/textStyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WordDetail extends StatefulWidget {
  List<DictionaryModel?> dictionary;
  WordDetail({required this.dictionary});

  @override
  State<WordDetail> createState() => _WordDetailState();
}

class _WordDetailState extends State<WordDetail> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.dictionary[0]!.word!,
                  style: kTextStyle(30),
                ),
                Text(
                    "Pronunciation: ${widget.dictionary[0]!.phonetic}"),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Divider(
                    height: 0.2,
                    color: Colors.black,
                  ),
                ),
                ...widget.dictionary.map(
                  (e) => Meanings(
                    meanings: e!.meanings,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:english_dictionary/models/dictionary_model.dart';
import 'package:english_dictionary/services/http_service.dart';
import 'package:english_dictionary/widgets/word_detail.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String? entry;
  DetailScreen({super.key, this.entry});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<List<DictionaryModel>> dictionary;

  @override
  void initState() {
    dictionary = HttpService.searchWordDefinition(widget.entry);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: dictionary,
        builder: (BuildContext context,
            AsyncSnapshot<List<DictionaryModel?>> snapshot) {
          if (snapshot.hasData) {
            List<DictionaryModel?> dictionary = snapshot.data!;
            return WordDetail(
              dictionary: dictionary,
            );
          } else if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                foregroundColor: Colors.black,
              ),
              body: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 50,
                    ),
                    Text("An error occured"),
                  ],
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

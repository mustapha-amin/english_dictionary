import 'package:english_dictionary/models/dictionary_model.dart';
import 'package:english_dictionary/widgets/spacings.dart';
import 'package:english_dictionary/widgets/textStyle.dart';
import 'package:flutter/material.dart';

class Meanings extends StatelessWidget {
  DictionaryModel? dictionary;
  Meanings({this.dictionary});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: dictionary!.meanings![0].definitions!.length,
      itemBuilder: (context, index) {
        Meaning meanings = dictionary!.meanings![0];
        List<Definition>? definitions = meanings.definitions;
        Definition? definition = definitions![index];
        String? example = definition.example;
        List? synonyms = definition.synonyms;
        List? antonyms = definition.antonyms;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            synonyms!.isNotEmpty
                ? Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Text("Synonyms: "),
                      ...synonyms.map(
                        (e) => Text(e + " "),
                      )
                    ],
                  )
                : const SizedBox(),
            antonyms!.isNotEmpty
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Antonyms: "),
                      Wrap(
                        clipBehavior: Clip.hardEdge,
                        direction: Axis.horizontal,
                        children: [
                          ...antonyms.map(
                            (e) => Text(e + " "),
                          )
                        ],
                      ),
                    ],
                  )
                : const SizedBox(),
            Wrap(
              children: [
                Text("${index + 1}. ${definition.definition!}"),
              ],
            ),
            example != null
                ? Text(
                    example,
                    style: kTextStyle(
                      12,
                      true,
                      FontStyle.italic,
                    ),
                  )
                : SizedBox(),
            addVerticalSpace(10),
          ],
        );
      },
    );
  }
}

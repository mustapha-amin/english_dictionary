import 'package:english_dictionary/models/dictionary_model.dart';
import 'package:english_dictionary/widgets/spacings.dart';
import 'package:english_dictionary/widgets/textStyle.dart';
import 'package:flutter/material.dart';

class Meanings extends StatelessWidget {
  List<Meaning>? meanings;
  Meanings({this.meanings});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(5),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: meanings!.length,
      itemBuilder: (context, index) {
        List<Definition>? definitions = meanings![index].definitions;
        String? partOfSpeech = meanings![index].partOfSpeech;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              partOfSpeech!,
              style: kTextStyle(20, true),
            ),
            addVerticalSpace(10),
            ...definitions!.map((e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${definitions.indexOf(e) + 1} ${e.definition!}",
                      style: kTextStyle(13),
                    ),
                    addVerticalSpace(5),
                    e.example != null
                        ? Row(
                          children: [
                            Text(
                                e.example!,
                                style: kTextStyle(13, true),
                              ),
                          ],
                        )
                        : addVerticalSpace(0),
                    addVerticalSpace(7),
                  ],
                )),
            addVerticalSpace(10),
          ],
        );
      },
    );
  }
}

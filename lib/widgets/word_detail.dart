import 'package:audioplayers/audioplayers.dart';
import 'package:english_dictionary/models/dictionary_model.dart';
import 'package:english_dictionary/widgets/meanings.dart';
import 'package:english_dictionary/widgets/spacings.dart';
import 'package:english_dictionary/widgets/textStyle.dart';
import 'package:flutter/material.dart';

class WordDetail extends StatefulWidget {
  List<DictionaryModel?> dictionary;
  WordDetail({required this.dictionary});

  @override
  State<WordDetail> createState() => _WordDetailState();
}

class _WordDetailState extends State<WordDetail> {
  bool play = false;
  AudioPlayer audioPlayer = AudioPlayer();

  void playSound() {
    setState(() {
      play = !play;
    });
  }

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
        child: ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: widget.dictionary.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                index > 0
                    ? const Divider(
                        height: 0.2,
                        color: Colors.black,
                      )
                    : const SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.dictionary[index]!.word!,
                      style: kTextStyle(30),
                    ),
                    index == 0
                        ? IconButton(
                            onPressed: () {
                              playSound();
                            },
                            icon: Icon(play ? Icons.pause : Icons.play_arrow),
                            iconSize: 30,
                          )
                        : const SizedBox(),
                  ],
                ),
                Text(
                    "Pronunciation: ${widget.dictionary[index]!.phonetics![0].text}"),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Divider(
                    height: 0.2,
                    color: Colors.black,
                  ),
                ),
                Text(
                  widget.dictionary[index]!.meanings![0].partOfSpeech!,
                  style: kTextStyle(20),
                ),
                addVerticalSpace(10),
                Meanings(
                  dictionary: widget.dictionary[index],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

const car = [
  {
    "word": "car",
    "phonetic": "/kɑː/",
    "phonetics": [
      {
        "text": "/kɑː/",
        "audio":
            "https://api.dictionaryapi.dev/media/pronunciations/en/car-uk.mp3",
        "sourceUrl": "https://commons.wikimedia.org/w/index.php?curid=9014179",
        "license": {
          "name": "BY 3.0 US",
          "url": "https://creativecommons.org/licenses/by/3.0/us"
        }
      },
      {
        "text": "/kɑɹ/",
        "audio":
            "https://api.dictionaryapi.dev/media/pronunciations/en/car-us.mp3",
        "sourceUrl": "https://commons.wikimedia.org/w/index.php?curid=424729",
        "license": {
          "n                                                                                                                                                                                                                                                                                                                                                            ame":
              "BY-SA 3.0",
          "url": "https://creativecommons.org/licenses/by-sa/3.0"
        }
      }
    ],
    "meanings": [
      {
        "partOfSpeech": "noun",
        "definitions": [
          {
            "definition":
                "A wheeled vehicle that moves independently, with at least three wheels, powered mechanically, steered by a driver and mostly for personal transportation.",
            "synonyms": [
              "auto",
              "automobile",
              "carriage",
              "motor",
              "motorcar",
              "vehicle"
            ],
            "antonyms": [],
            "example": "She drove her car to the mall."
          },
          {
            "definition":
                "A wheeled vehicle, drawn by a horse or other animal; a chariot.",
            "synonyms": [],
            "antonyms": []
          },
          {
            "definition": "An unpowered unit in a railroad train.",
            "synonyms": ["railcar", "wagon"],
            "antonyms": [],
            "example": "The conductor coupled the cars to the locomotive."
          },
          {
            "definition":
                "An individual vehicle, powered or unpowered, in a multiple unit.",
            "synonyms": [],
            "antonyms": [],
            "example":
                "The 11:10 to London was operated by a 4-car diesel multiple unit."
          },
          {
            "definition":
                "A passenger-carrying unit in a subway or elevated train, whether powered or not.",
            "synonyms": [],
            "antonyms": [],
            "example":
                "From the frontmost car of the subway, he filmed the progress through the tunnel."
          },
          {
            "definition":
                "A rough unit of quantity approximating the amount which would fill a railroad car.",
            "synonyms": ["carload", "wagonload"],
            "antonyms": [],
            "example": "We ordered five hundred cars of gypsum."
          },
          {
            "definition":
                "The moving, load-carrying component of an elevator or other cable-drawn transport mechanism.",
            "synonyms": [],
            "antonyms": [],
            "example":
                "Fix the car of the express elevator - the door is sticking."
          },
          {
            "definition":
                "The passenger-carrying portion of certain amusement park rides, such as Ferris wheels.",
            "synonyms": ["carriage"],
            "antonyms": [],
            "example":
                "The most exciting part of riding a Ferris wheel is when your car goes over the top."
          },
          {
            "definition":
                "The part of an airship, such as a balloon or dirigible, which houses the passengers and control apparatus.",
            "synonyms": ["basket", "gondola"],
            "antonyms": []
          },
          {
            "definition": "A sliding fitting that runs along a track.",
            "synonyms": [],
            "antonyms": []
          },
          {
            "definition":
                "The aggregate of desirable characteristics of a car.",
            "synonyms": [],
            "antonyms": [],
            "example": "Buy now! You can get more car for your money."
          },
          {
            "definition": "A floating perforated box for living fish.",
            "synonyms": [],
            "antonyms": []
          }
        ],
        "synonyms": [
          "auto",
          "automobile",
          "carriage",
          "motor",
          "motorcar",
          "vehicle",
          "basket",
          "gondola",
          "carload",
          "wagonload",
          "carriage",
          "railcar",
          "wagon"
        ],
        "antonyms": []
      }
    ],
    "license": {
      "name": "CC BY-SA 3.0",
      "url": "https://creativecommons.org/licenses/by-sa/3.0"
    },
    "sourceUrls": ["https://en.wiktionary.org/wiki/car"]
  },
  {
    "word": "car",
    "phonetic": "/kɑː/",
    "phonetics": [
      {
        "text": "/kɑː/",
        "audio":
            "https://api.dictionaryapi.dev/media/pronunciations/en/car-uk.mp3",
        "sourceUrl": "https://commons.wikimedia.org/w/index.php?curid=9014179",
        "license": {
          "name": "BY 3.0 US",
          "url": "https://creativecommons.org/licenses/by/3.0/us"
        }
      },
      {
        "text": "/kɑɹ/",
        "audio":
            "https://api.dictionaryapi.dev/media/pronunciations/en/car-us.mp3",
        "sourceUrl": "https://commons.wikimedia.org/w/index.php?curid=424729",
        "license": {
          "name": "BY-SA 3.0",
          "url": "https://creativecommons.org/licenses/by-sa/3.0"
        }
      }
    ],
    "meanings": [
      {
        "partOfSpeech": "noun",
        "definitions": [
          {"definition": "A turn.", "synonyms": [], "antonyms": []}
        ],
        "synonyms": [],
        "antonyms": []
      }
    ],
    "license": {
      "name": "CC BY-SA 3.0",
      "url": "https://creativecommons.org/licenses/by-sa/3.0"
    },
    "sourceUrls": ["https://en.wiktionary.org/wiki/car"]
  },
  {
    "word": "car",
    "phonetic": "/kɑː/",
    "phonetics": [
      {
        "text": "/kɑː/",
        "audio":
            "https://api.dictionaryapi.dev/media/pronunciations/en/car-uk.mp3",
        "sourceUrl": "https://commons.wikimedia.org/w/index.php?curid=9014179",
        "license": {
          "name": "BY 3.0 US",
          "url": "https://creativecommons.org/licenses/by/3.0/us"
        }
      },
      {
        "text": "/kɑɹ/",
        "audio":
            "https://api.dictionaryapi.dev/media/pronunciations/en/car-us.mp3",
        "sourceUrl": "https://commons.wikimedia.org/w/index.php?curid=424729",
        "license": {
          "name": "BY-SA 3.0",
          "url": "https://creativecommons.org/licenses/by-sa/3.0"
        }
      }
    ],
    "meanings": [
      {
        "partOfSpeech": "noun",
        "definitions": [
          {
            "definition":
                "The first part of a cons in LISP. The first element of a list",
            "synonyms": [],
            "antonyms": []
          }
        ],
        "synonyms": [],
        "antonyms": ["cdr"]
      }
    ],
    "license": {
      "name": "CC BY-SA 3.0",
      "url": "https://creativecommons.org/licenses/by-sa/3.0"
    },
    "sourceUrls": ["https://en.wiktionary.org/wiki/car"]
  }
];

class Word {
  String? word;
  String? phonetic;
  String? audio;
  String? origin;
  List? meanings;

  Word({
    this.word,
    this.phonetic,
    this.audio,
    this.origin,
    this.meanings,
  });

  factory Word.fromJson(Map<String, dynamic> json) {
    return Word(
      word: json[0]["word"],
      phonetic: json[0]["phonetic"],
      audio: json[0]["phonetics"][0]["audio"],
      origin: json[0]["origin"],
      meanings: json[0]["meanings"],
    );
  }
}
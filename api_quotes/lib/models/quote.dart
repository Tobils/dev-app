class Quote {
  final String author;
  final String quote;

  Quote({this.author, this.quote});

  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(
      author: json['contents'][0]['author'],
      quote: json['contents'][0]['quote'],
    );
  }
}

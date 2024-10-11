class WebtoonCategory {
  final String title;
  final String thumbnailUrl;
  final String creator;
  final String genre;
  final String description;

  WebtoonCategory({
    required this.title,
    required this.thumbnailUrl,
    required this.creator,
    required this.genre,
    required this.description,
  });

  factory WebtoonCategory.fromJson(Map<String, dynamic> json) {
    return WebtoonCategory(
      title: json['title'],
      thumbnailUrl: json['thumbnailUrl'],
      creator: json['creator'],
      genre: json['genre'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'thumbnailUrl': thumbnailUrl,
      'creator': creator,
      'genre': genre,
      'description': description,
    };
  }
}

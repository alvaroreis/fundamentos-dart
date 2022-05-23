import 'dart:convert';

class Filme {
  String id;
  String language;
  String title;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  String releaseDate;
  bool adult;
  bool video;
  double voteAverage;
  int voteCount;
  List<int> genreIds;
  String backdropPath;
  Filme({
    required this.id,
    required this.language,
    required this.title,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.adult,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
    required this.genreIds,
    required this.backdropPath,
  });

  factory Filme.fromMap(Map<String, dynamic> map) {
    return Filme(
      id: map['id'] ?? '',
      language: map['original_language'] ?? '',
      title: map['title'] ?? '',
      originalTitle: map['original_title'] ?? '',
      overview: map['overview'] ?? '',
      popularity: map['popularity'] ?? 0,
      posterPath: map['poster_path'] ?? '',
      releaseDate: map['release_date'] ?? '',
      adult: map['adult'] ?? false,
      video: map['video'] ?? false,
      voteAverage: map['vote_average'].toDouble() ?? 0.0,
      voteCount: map['vote_count'] ?? 0,
      genreIds: map['genre_ids'].cast<int>(),
      backdropPath: map['backdrop_path'] ?? '',
    );
  }
  factory Filme.fromJson(String source) => Filme.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'original_language': language,
      'title': title,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'adult': adult,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
      'genre_ids': genreIds,
      'backdrop_path': backdropPath
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return 'Filme(id: $id, language: $language, title: $title, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, adult: $adult, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, genreIds: $genreIds, backdropPath: $backdropPath)';
  }
}


	// {
	// 		"adult": false,
	// 		"backdrop_path": "/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg",
	// 		"genre_ids": [
	// 			28,
	// 			12,
	// 			878
	// 		],
	// 		"id": "634649",
	// 		"original_language": "en",
	// 		"original_title": "Spider-Man: No Way Home",
	// 		"overview": "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
	// 		"popularity": 6925.636,
	// 		"poster_path": "/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
	// 		"release_date": "2021-12-15",
	// 		"title": "Spider-Man: No Way Home",
	// 		"video": false,
	// 		"vote_average": 8.2,
	// 		"vote_count": 11703
	// 	}
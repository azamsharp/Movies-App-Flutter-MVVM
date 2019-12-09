

class Movie {

  final String title; 
  final String poster; 

  Movie({this.title, this.poster});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json["Title"], 
      poster: json["Poster"]
    );
  }

}
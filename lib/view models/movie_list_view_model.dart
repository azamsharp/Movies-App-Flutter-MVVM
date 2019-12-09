

import 'package:flutter/material.dart';
import 'package:movies_app/services/webservice.dart';
import 'package:movies_app/view%20models/movie_view_model.dart';

class MovieListViewModel extends ChangeNotifier {

  List<MovieViewModel> movies = List<MovieViewModel>(); 

  Future<void> fetchMovies(String keyword) async {
    final results =  await Webservice().fetchMovies(keyword);
    this.movies = results.map((item) => MovieViewModel(movie: item)).toList();
    print(this.movies);
    notifyListeners(); 
  }

}
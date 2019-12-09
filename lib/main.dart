import 'package:flutter/material.dart';
import 'package:movies_app/pages/movie_list_page.dart';
import 'package:movies_app/view%20models/movie_list_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movies",
      home: 
      ChangeNotifierProvider(
        create: (context) => MovieListViewModel(), 
        child: MovieListPage(),
      )
    );
  }

}
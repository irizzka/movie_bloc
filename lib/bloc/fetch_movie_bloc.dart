
import 'dart:core';

import 'package:flutter_movi_demo/data/movie.dart';
import 'package:flutter_movi_demo/networking/repository.dart';
import 'package:rxdart/rxdart.dart';
import 'base_bloc.dart';

class MovieBloc extends Bloc {
  final _repo = Repo.instance;

  int pageCounter = 1;

  final _movieListStream = BehaviorSubject<List<Movie>>();

  MovieBloc(){
    _movieListStream.sink.add([]);
  }

  Stream<List<Movie>> get movieStream => _movieListStream.stream;

  void fetchMovies() async {
    var resp = await _repo.fetchMovie(pageCounter++);
    _movieListStream.value.addAll(resp.movies);
    _movieListStream.sink.add(_movieListStream.value);
    print('fetch func');
  }

  @override
  void dispose() {
    _movieListStream.close();
  }
}
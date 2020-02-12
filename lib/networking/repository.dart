import 'package:flutter_movi_demo/networking/api.dart';
import'package:dio/dio.dart';
import 'package:flutter_movi_demo/networking/responce/movie_list_responce.dart';

const String theMovieDBApiKey = '3d0d567b896c722ab267ed068e5cf805';

class Repo {
  static final Repo instance = Repo._internal();

  Dio _dioClient = Dio();
  RestClient _restClient;

  Repo._internal(){
    _restClient = RestClient(_dioClient);
  }

  Future<MovieListResponce> fetchMovie(int pageNumber) async =>
    await _restClient.getTasks(theMovieDBApiKey, pageNumber);

 /* Future<MovieListResponce> searchMovie(int pageNumber, String movieName) async =>
      await _restClient.getTasksBySearch(theMovieDBApiKey, pageNumber, movieName);*/
}


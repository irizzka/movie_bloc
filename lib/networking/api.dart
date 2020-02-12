import 'package:flutter_movi_demo/networking/responce/movie_list_responce.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api.g.dart';

const String baseUrl = 'https://api.themoviedb.org/3/';

//endpoint
const String popularMovies = 'movie/popular';
const String genres = 'genre/movie/list';
const String discover = 'discover/movie';
//const String search = 'search';

//query parameters
const String withGenres = 'with_genres';

@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("movie/popular")
  Future<MovieListResponce> getTasks(
      @Query('api_key') String theMovieDBApiKey,
      @Query('page') int page);

 /* @GET("movie/popular")
  Future<MovieListResponce> getTasksBySearch(
      @Query('api_key') String theMovieDBApiKey,
      @Query('page') int page,
      @Query('query') String query);*/
}

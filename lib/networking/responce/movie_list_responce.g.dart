// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieListResponce _$MovieListResponceFromJson(Map<String, dynamic> json) {
  return MovieListResponce(
      json['page'] as int,
      json['total_results'] as int,
      json['total_pages'] as int,
      (json['results'] as List)
          ?.map((e) =>
              e == null ? null : Movie.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$MovieListResponceToJson(MovieListResponce instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'results': instance.movies
    };

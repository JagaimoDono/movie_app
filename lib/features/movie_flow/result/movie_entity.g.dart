// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'movie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieEntity _$$_MovieEntityFromJson(Map<String, dynamic> json) =>
    _$_MovieEntity(
      title: json['title'] as String,
      overview: json['overview'] as String,
      voteAverage: json['vote_average'] as num,
      genreIds:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
      releaseDate: json['release_date'] as String,
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$_MovieEntityToJson(_$_MovieEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'overview': instance.overview,
      'vote_average': instance.voteAverage,
      'genre_ids': instance.genreIds,
      'release_date': instance.releaseDate,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
    };

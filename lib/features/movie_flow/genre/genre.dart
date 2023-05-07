import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/movie_flow/genre/genre_entity.dart';

part 'genre.freezed.dart';

@freezed
class Genre with _$Genre {
  const Genre._();

  const factory Genre(
      {required String name,
      @Default(false) bool isSelected,
      @Default(0) int id}) = _Genre;

  factory Genre.fromEntity(GenreEntity genreEntity) {
    return Genre(name: genreEntity.name, id: genreEntity.id, isSelected: false);
  }

  Genre toggleSelected() {
    return Genre(name: name, isSelected: !isSelected, id: id);
  }
}

import 'package:dart_mappable/dart_mappable.dart';

part 'models.mapper.dart';

@MappableClass()
class Pokemon with PokemonMappable {
  final String name;
  final int id;
  final int height;
  final Sprites sprites;

  const Pokemon({
    required this.name,
    required this.id,
    required this.height,
    required this.sprites
  });
  String get imglink => sprites.frontDefault ?? '';
  static final fromJson = PokemonMapper.fromJson;
}
@MappableClass()
class Sprites with SpritesMappable { // ✅ New mappable class for sprites
  @MappableField(key: 'front_default')
  final String? frontDefault;

  const Sprites({this.frontDefault});
  static final fromJson = SpritesMapper.fromJson;
}
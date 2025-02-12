// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'models.dart';

class PokemonMapper extends ClassMapperBase<Pokemon> {
  PokemonMapper._();

  static PokemonMapper? _instance;
  static PokemonMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PokemonMapper._());
      SpritesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Pokemon';

  static String _$name(Pokemon v) => v.name;
  static const Field<Pokemon, String> _f$name = Field('name', _$name);
  static int _$id(Pokemon v) => v.id;
  static const Field<Pokemon, int> _f$id = Field('id', _$id);
  static int _$height(Pokemon v) => v.height;
  static const Field<Pokemon, int> _f$height = Field('height', _$height);
  static Sprites _$sprites(Pokemon v) => v.sprites;
  static const Field<Pokemon, Sprites> _f$sprites = Field('sprites', _$sprites);

  @override
  final MappableFields<Pokemon> fields = const {
    #name: _f$name,
    #id: _f$id,
    #height: _f$height,
    #sprites: _f$sprites,
  };

  static Pokemon _instantiate(DecodingData data) {
    return Pokemon(
        name: data.dec(_f$name),
        id: data.dec(_f$id),
        height: data.dec(_f$height),
        sprites: data.dec(_f$sprites));
  }

  @override
  final Function instantiate = _instantiate;

  static Pokemon fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Pokemon>(map);
  }

  static Pokemon fromJsonString(String json) {
    return ensureInitialized().decodeJson<Pokemon>(json);
  }
}

mixin PokemonMappable {
  String toJsonString() {
    return PokemonMapper.ensureInitialized()
        .encodeJson<Pokemon>(this as Pokemon);
  }

  Map<String, dynamic> toJson() {
    return PokemonMapper.ensureInitialized()
        .encodeMap<Pokemon>(this as Pokemon);
  }

  PokemonCopyWith<Pokemon, Pokemon, Pokemon> get copyWith =>
      _PokemonCopyWithImpl(this as Pokemon, $identity, $identity);
  @override
  String toString() {
    return PokemonMapper.ensureInitialized().stringifyValue(this as Pokemon);
  }

  @override
  bool operator ==(Object other) {
    return PokemonMapper.ensureInitialized()
        .equalsValue(this as Pokemon, other);
  }

  @override
  int get hashCode {
    return PokemonMapper.ensureInitialized().hashValue(this as Pokemon);
  }
}

extension PokemonValueCopy<$R, $Out> on ObjectCopyWith<$R, Pokemon, $Out> {
  PokemonCopyWith<$R, Pokemon, $Out> get $asPokemon =>
      $base.as((v, t, t2) => _PokemonCopyWithImpl(v, t, t2));
}

abstract class PokemonCopyWith<$R, $In extends Pokemon, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  SpritesCopyWith<$R, Sprites, Sprites> get sprites;
  $R call({String? name, int? id, int? height, Sprites? sprites});
  PokemonCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PokemonCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Pokemon, $Out>
    implements PokemonCopyWith<$R, Pokemon, $Out> {
  _PokemonCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Pokemon> $mapper =
      PokemonMapper.ensureInitialized();
  @override
  SpritesCopyWith<$R, Sprites, Sprites> get sprites =>
      $value.sprites.copyWith.$chain((v) => call(sprites: v));
  @override
  $R call({String? name, int? id, int? height, Sprites? sprites}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (id != null) #id: id,
        if (height != null) #height: height,
        if (sprites != null) #sprites: sprites
      }));
  @override
  Pokemon $make(CopyWithData data) => Pokemon(
      name: data.get(#name, or: $value.name),
      id: data.get(#id, or: $value.id),
      height: data.get(#height, or: $value.height),
      sprites: data.get(#sprites, or: $value.sprites));

  @override
  PokemonCopyWith<$R2, Pokemon, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PokemonCopyWithImpl($value, $cast, t);
}

class SpritesMapper extends ClassMapperBase<Sprites> {
  SpritesMapper._();

  static SpritesMapper? _instance;
  static SpritesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SpritesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Sprites';

  static String? _$frontDefault(Sprites v) => v.frontDefault;
  static const Field<Sprites, String> _f$frontDefault =
      Field('frontDefault', _$frontDefault, key: r'front_default', opt: true);

  @override
  final MappableFields<Sprites> fields = const {
    #frontDefault: _f$frontDefault,
  };

  static Sprites _instantiate(DecodingData data) {
    return Sprites(frontDefault: data.dec(_f$frontDefault));
  }

  @override
  final Function instantiate = _instantiate;

  static Sprites fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Sprites>(map);
  }

  static Sprites fromJsonString(String json) {
    return ensureInitialized().decodeJson<Sprites>(json);
  }
}

mixin SpritesMappable {
  String toJsonString() {
    return SpritesMapper.ensureInitialized()
        .encodeJson<Sprites>(this as Sprites);
  }

  Map<String, dynamic> toJson() {
    return SpritesMapper.ensureInitialized()
        .encodeMap<Sprites>(this as Sprites);
  }

  SpritesCopyWith<Sprites, Sprites, Sprites> get copyWith =>
      _SpritesCopyWithImpl(this as Sprites, $identity, $identity);
  @override
  String toString() {
    return SpritesMapper.ensureInitialized().stringifyValue(this as Sprites);
  }

  @override
  bool operator ==(Object other) {
    return SpritesMapper.ensureInitialized()
        .equalsValue(this as Sprites, other);
  }

  @override
  int get hashCode {
    return SpritesMapper.ensureInitialized().hashValue(this as Sprites);
  }
}

extension SpritesValueCopy<$R, $Out> on ObjectCopyWith<$R, Sprites, $Out> {
  SpritesCopyWith<$R, Sprites, $Out> get $asSprites =>
      $base.as((v, t, t2) => _SpritesCopyWithImpl(v, t, t2));
}

abstract class SpritesCopyWith<$R, $In extends Sprites, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? frontDefault});
  SpritesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SpritesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Sprites, $Out>
    implements SpritesCopyWith<$R, Sprites, $Out> {
  _SpritesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Sprites> $mapper =
      SpritesMapper.ensureInitialized();
  @override
  $R call({Object? frontDefault = $none}) => $apply(FieldCopyWithData(
      {if (frontDefault != $none) #frontDefault: frontDefault}));
  @override
  Sprites $make(CopyWithData data) =>
      Sprites(frontDefault: data.get(#frontDefault, or: $value.frontDefault));

  @override
  SpritesCopyWith<$R2, Sprites, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SpritesCopyWithImpl($value, $cast, t);
}

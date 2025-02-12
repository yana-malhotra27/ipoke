import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'models.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'https://pokeapi.co/api/v2/pokemon')
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @GET('/{name}')
  Future<Pokemon> getPokemon(@Path("name") String name);
}
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'models.dart';
import 'api.dart';

class App extends StatefulWidget {
  final String pokemonName;

  const App({super.key, required this.pokemonName});

  @override
  _App createState() => _App();
}

class _App extends State<App> {
  late Future<Pokemon> _pokemonFuture;

  @override
  void initState() {
    super.initState();
    _pokemonFuture = fetchPokemon(widget.pokemonName);
  }

  Future<Pokemon> fetchPokemon(String name) async {
    final dio = Dio();
    final api = RestClient(dio);
    return await api.getPokemon(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pokemonName.toUpperCase(),
            style: TextStyle(fontSize: 50)),
        centerTitle: true,
      ),
      body: FutureBuilder<Pokemon>(
        future: _pokemonFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('No data found'));
          }

          final pokemon = snapshot.data!;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(pokemon.imglink,
                    height: 250, width: 250, fit: BoxFit.cover),
                Text('id: ${pokemon.id}', style: TextStyle(fontSize: 50))
              ],
            ),
          );
        },
      ),
    );
  }
}

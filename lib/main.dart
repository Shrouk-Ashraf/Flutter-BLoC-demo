import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/screens/characters_screen.dart';

void main() {
  runApp(const RickAndMortyApp());
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        CharactersScreen.id: (context) => const CharactersScreen(),
      },
      initialRoute: CharactersScreen.id,
    );
  }
}

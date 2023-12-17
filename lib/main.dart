import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/screens/home_screen.dart';

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
        HomeScreen.id: (context) => const HomeScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}

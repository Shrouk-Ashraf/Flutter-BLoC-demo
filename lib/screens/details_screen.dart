import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/models/character.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  static const String id = 'Details screen';

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  Character? character;

  @override
  Widget build(BuildContext context) {
    character = ModalRoute.of(context)!.settings.arguments as Character;
    return Scaffold();
  }
}

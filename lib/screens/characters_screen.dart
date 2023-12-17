import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/cubits/get_characters_cubit/get_characters_cubit.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  static const String id = 'Characters Screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: GestureDetector(
        onTap: () {
          GetCharactersCubit().getAllCharacters();
        },
        child: Text('hhhhh'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/models/character.dart';
import 'package:flutter_bloc_demo/widgets/character_item.dart';

class CharactersBody extends StatelessWidget {
  const CharactersBody({required this.allCharacters, super.key});

  final List<Character> allCharacters;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: allCharacters.length,
            itemBuilder: (context, index) {
              return CharacterItem(character: allCharacters[index]);
            })
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/cubits/get_characters_cubit/get_characters_cubit.dart';
import 'package:flutter_bloc_demo/widgets/characters_body.dart';

class CharactersBuilder extends StatelessWidget {
  const CharactersBuilder({super.key, this.searchedString});

  final String? searchedString;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCharactersCubit, GetCharactersState>(
      builder: (context, state) {
        if (state is GetCharactersLoaded) {
          return searchedString == null
              ? CharactersBody(allCharacters: state.characters)
              : CharactersBody(
                  allCharacters: state.characters
                      .where((character) => character.name
                          .toLowerCase()
                          .startsWith(searchedString!.toLowerCase()))
                      .toList());
        } else {
          return const Center(
              child: CircularProgressIndicator(
            color: Color(0xffffc107),
          ));
        }
      },
    );
  }
}

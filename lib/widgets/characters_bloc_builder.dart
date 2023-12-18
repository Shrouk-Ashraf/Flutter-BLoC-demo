import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/cubits/get_characters_cubit/get_characters_cubit.dart';
import 'package:flutter_bloc_demo/widgets/characters_body.dart';

class CharactersBuilder extends StatelessWidget {
  const CharactersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCharactersCubit, GetCharactersState>(
      builder: (context, state) {
        if (state is GetCharactersLoaded) {
          return CharactersBody(allCharacters: state.characters);
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

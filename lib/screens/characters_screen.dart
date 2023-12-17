import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/cubits/get_characters_cubit/get_characters_cubit.dart';
import 'package:flutter_bloc_demo/models/character.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  static const String id = 'Characters Screen';

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  List<Character>? allCharacters;
  @override
  void initState() {
    allCharacters =
        BlocProvider.of<GetCharactersCubit>(context).getAllCharacters();
    super.initState();
  }

//0xffE1e8eb
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffc107),
        title: const Text(
          'Characters',
          style: TextStyle(color: Color(0xff343A40)),
        ),
      ),
    );
  }
}

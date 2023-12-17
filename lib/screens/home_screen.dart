import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/cubits/get_characters_cubit/get_characters_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String id = 'Home Screen';

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

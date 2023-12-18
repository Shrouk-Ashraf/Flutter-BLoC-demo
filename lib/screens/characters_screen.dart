import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/cubits/get_characters_cubit/get_characters_cubit.dart';
import 'package:flutter_bloc_demo/models/character.dart';
import 'package:flutter_bloc_demo/widgets/characters_bloc_builder.dart';
import 'package:flutter_bloc_demo/widgets/regular_app_bar.dart';
import 'package:flutter_bloc_demo/widgets/search_app_bar.dart';
import 'package:flutter_bloc_demo/widgets/search_field.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  static const String id = 'Characters Screen';

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  bool isSearching = false;
  String? searchedString;
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    BlocProvider.of<GetCharactersCubit>(context).getAllCharacters();
    super.initState();
  }

//0xffE1e8eb
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff343A40),
      appBar: isSearching
          ? searchAppBar(
              controller: controller,
              backOnPressed: () {
                setState(() {
                  isSearching = false;
                  searchedString = null;
                });
              },
              closeOnPressed: () {
                setState(() {
                  isSearching = false;
                  searchedString = null;
                });
              },
              onChanged: (searchedString) {
                setState(() {
                  this.searchedString = searchedString;
                });
              })
          : RegularAppBar(onPressed: () {
              //make a back button to another route
              ModalRoute.of(context)!.addLocalHistoryEntry(
                LocalHistoryEntry(
                  onRemove: () {
                    setState(() {
                      isSearching = false;
                      searchedString = null;
                    });
                  },
                ),
              );
              setState(() {
                isSearching = true;
              });
            }),
      body: searchedString == null
          ? const CharactersBuilder()
          : CharactersBuilder(
              searchedString: searchedString,
            ),
    );
  }
}

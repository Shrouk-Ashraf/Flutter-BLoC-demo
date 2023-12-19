import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/cubits/get_characters_cubit/get_characters_cubit.dart';
import 'package:flutter_bloc_demo/widgets/characters_bloc_builder.dart';
import 'package:flutter_bloc_demo/widgets/no_internet_widget.dart';
import 'package:flutter_bloc_demo/widgets/regular_app_bar.dart';
import 'package:flutter_bloc_demo/widgets/search_app_bar.dart';
import 'package:flutter_offline/flutter_offline.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  bool isSearching = false;
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
              closeOnPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              onChanged: (searchedString) {
                setState(() {
                  controller.text = searchedString;
                });
              })
          : RegularAppBar(onPressed: () {
              //make a back button to another route
              ModalRoute.of(context)!.addLocalHistoryEntry(
                LocalHistoryEntry(
                  onRemove: () {
                    setState(() {
                      isSearching = false;
                      controller.clear();
                    });
                  },
                ),
              );
              setState(() {
                isSearching = true;
              });
            }),
      body: OfflineBuilder(
        connectivityBuilder: (context, connectivity, child) {
          final bool connected = connectivity != ConnectivityResult.none;
          if (connected) {
            return CharactersBuilder(
              searchedString: controller.text,
            );
          } else {
            return const NoInternetWidet();
          }
        },
        child: const Center(
          child: CircularProgressIndicator(
            color: Color(0xffffc107),
          ),
        ),
      ),
    );
  }
}

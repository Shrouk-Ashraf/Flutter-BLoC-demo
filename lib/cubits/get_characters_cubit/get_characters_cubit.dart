import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc_demo/models/character.dart';
import 'package:flutter_bloc_demo/repository/get_all_characters_repo.dart';
import 'package:meta/meta.dart';

part 'get_characters_state.dart';

class GetCharactersCubit extends Cubit<GetCharactersState> {
  GetCharactersCubit() : super(GetCharactersInitial());

  late List<Character> characters;

  List<Character> getAllCharacters() {
    try {
      GetAllCharactersRepo(dio: Dio()).getAllCharacters().then((characters) {
        emit(GetCharactersLoaded(characters: characters));
        return characters;
      });
    } catch (e) {
      print("in cubit $e");
    }

    return [];
  }
}

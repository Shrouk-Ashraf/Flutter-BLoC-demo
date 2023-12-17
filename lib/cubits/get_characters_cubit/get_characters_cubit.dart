import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc_demo/models/character.dart';
import 'package:flutter_bloc_demo/repository/get_all_characters_repo.dart';
import 'package:meta/meta.dart';

part 'get_characters_state.dart';

class GetCharactersCubit extends Cubit<GetCharactersState> {
  GetCharactersCubit() : super(GetCharactersInitial());

  List<Character>? characters;

  getAllCharacters() async {
    try {
      characters = await GetAllCharactersRepo(dio: Dio()).getAllCharacters();
      emit(GetCharactersLoaded(characters: characters!));
    } catch (e) {
      print("in cubit $e");
    }
  }
}

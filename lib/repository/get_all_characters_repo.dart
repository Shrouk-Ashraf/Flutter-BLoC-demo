import 'package:dio/dio.dart';
import 'package:flutter_bloc_demo/models/character.dart';
import 'package:flutter_bloc_demo/services/get_characters_service.dart';

class GetAllCharactersRepo {
  final Dio dio;

  GetAllCharactersRepo({required this.dio});

  Future<List<Character>> getAllCharacters() async {
    final characters = await GetCharactersService(dio).getAllCharacters();
    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }
}

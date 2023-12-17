import 'dart:async';

import 'package:dio/dio.dart';

class GetCharactersService {
  final Dio dio;

  final String baseUrl = 'https://rickandmortyapi.com/api';

  GetCharactersService(this.dio);

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('$baseUrl/character');
      final characters = response.data['results'];
      return characters;
    } on DioException catch (e) {
      String errorMsg = e.response?.data['error'] ??
          'OOPs, There is an error try again later ';
      throw Exception(errorMsg);
    } catch (e) {
      print("in service $e");
      throw Exception('Try again later');
    }
  }
}

part of 'get_characters_cubit.dart';

@immutable
sealed class GetCharactersState {}

final class GetCharactersInitial extends GetCharactersState {}

final class GetCharactersLoaded extends GetCharactersState {
  final List<Character> characters;

  GetCharactersLoaded({required this.characters});
}

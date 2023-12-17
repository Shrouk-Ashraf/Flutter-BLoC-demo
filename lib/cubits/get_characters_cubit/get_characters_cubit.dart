import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_demo/models/character.dart';
import 'package:meta/meta.dart';

part 'get_characters_state.dart';

class GetCharactersCubit extends Cubit<GetCharactersState> {
  GetCharactersCubit() : super(GetCharactersInitial());
}

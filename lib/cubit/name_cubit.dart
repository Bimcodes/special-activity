// ignore_for_file: unnecessary_cast

import 'package:bloc/bloc.dart';

part 'name_state.dart';

class NameCubit extends Cubit<String> {
  NameCubit() : super('');

  void updateNameInput(String name) {
    emit(name);
  }

  void updateNickNameInput(String nickName) {
    emit(nickName);
  }
}

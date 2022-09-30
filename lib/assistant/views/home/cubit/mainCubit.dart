import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/mainState.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const EcoState());

  int currentPage = 0;

  


 void changeState(int currentIndex) {
    switch (currentIndex) {
      case 0:
        currentPage = 0;
        emit(const EcoState());
        break;
      case 1:
        currentPage = 1;
        emit(const HomeState());
        break;
      case 2:
        currentPage = 2;
        emit(const SettingsState());
        break;
      case 3:
        currentPage = 3;
        emit(const ProfileState());
        break;
    }
  }
}
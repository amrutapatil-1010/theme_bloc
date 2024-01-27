import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_cubit_state.dart';

class ThemeCubit extends Cubit<ThemeCubitState> {
  ThemeCubit() : super(ThemeCubitState.initial());

  void changeAppTheme(int randInt) {
    if (randInt % 2 == 0) {
      emit(state.copyWith(appTheme: CubitAppTheme.light));
    } else {
      emit(state.copyWith(appTheme: CubitAppTheme.dark));
    }
  }
}

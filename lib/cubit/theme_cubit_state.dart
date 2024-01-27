part of 'theme_cubit.dart';

enum CubitAppTheme { light, dark }

class ThemeCubitState extends Equatable {
  final CubitAppTheme appTheme;
  const ThemeCubitState({this.appTheme = CubitAppTheme.light});

  @override
  List<Object> get props => [appTheme];

  factory ThemeCubitState.initial() {
    return const ThemeCubitState(appTheme: CubitAppTheme.light);
  }

  ThemeCubitState copyWith({CubitAppTheme? appTheme}) {
    return ThemeCubitState(appTheme: appTheme ?? this.appTheme);
  }
}

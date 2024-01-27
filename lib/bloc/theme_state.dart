part of 'theme_bloc.dart';

enum AppTheme { light, dark }

class ThemeState extends Equatable {
  final AppTheme appTheme;
  const ThemeState({this.appTheme = AppTheme.light});

  @override
  List<Object> get props => [appTheme];

  factory ThemeState.initial() {
    return const ThemeState();
  }

  ThemeState copyWith({AppTheme? appThemeData}) {
    return ThemeState(appTheme: appThemeData ?? appTheme);
  }
}

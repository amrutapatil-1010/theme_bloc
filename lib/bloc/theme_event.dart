part of 'theme_bloc.dart';

sealed class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ChangeThemeEvent extends ThemeEvent {
  final int randInt;

  const ChangeThemeEvent({required this.randInt});
  @override
  String toString() {
    return "random value ------> $randInt";
  }

  @override
  List<Object> get props => [randInt];
}

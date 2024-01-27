import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/bloc/theme_bloc.dart';
import 'package:theme_bloc/cubit/theme_cubit.dart';

///Use--->>Passing additional information in Events
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ThemeCubit(),
        child:
            BlocBuilder<ThemeCubit, ThemeCubitState>(builder: (context, state) {
          return MaterialApp(
            title: "THEME EVENT",
            home: const ThemeScreen(),
            debugShowCheckedModeBanner: false,
            theme: context.watch<ThemeCubit>().state.appTheme ==
                    CubitAppTheme.light
                ? ThemeData.light()
                : ThemeData.dark(),
          );
        }));

    // BlocProvider(
    //   create: (context) => ThemeBloc(),
    //   //Note------> You can add only Builder instead of BlocBuilder
    //   child: BlocBuilder<ThemeBloc, ThemeState>(
    //     builder: (context, state) {
    //       return Builder(
    //         builder: (context) {
    //           return MaterialApp(
    //             title: "THEME EVENT",
    //             home: const ThemeScreen(),
    //             debugShowCheckedModeBanner: false,
    //             theme:
    //                 context.watch<ThemeBloc>().state.appTheme == AppTheme.light
    //                     ? ThemeData.light()
    //                     : ThemeData.dark(),
    //           );
    //         },
    //       );
    //     },
    //   ),
    // );
  }
}

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            final int randInt = Random().nextInt(10);
            print('cubit randInt: $randInt');
            //For Cubit
            context.read<ThemeCubit>().changeAppTheme(randInt);
            //For BLOC
            // (context.read<ThemeBloc>().add(ChangeThemeEvent(randInt: randInt)));
          },
          child: const Text("Change Theme")),
    ));
  }
}

import 'package:flutter/material.dart';

// Standard imports

// Std Dart BLoC delegate
import 'package:bloc/bloc.dart';

// Flutter BLoC plugin
import 'package:flutter_bloc/flutter_bloc.dart';

// App imports
// BLoC
import 'package:swipe_flip/bloc/theme_bloc.dart';
import 'package:swipe_flip/bloc/navigate_section_bloc.dart';

// UX
import 'package:swipe_flip/ux/home.dart';

class MyAppBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Transition transition) {
    super.onTransition(transition);
  }

  @override
  void onError(Object error, StackTrace stacktrace) {
    super.onError(error, stacktrace);
    print(error);
  }
}

// ------------------------------------------------------------------
// APP WIDGET 
// ------------------------------------------------------------------
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final NavigateSectionBloc _navigateSectionBloc = NavigateSectionBloc();
  final ThemeBloc _themeBloc = ThemeBloc();

  var _theme = ThemeData.dark();

  @override
  Widget build(BuildContext context) {
    var strTitle = "Default";
    return BlocProviderTree(
      blocProviders: [
        BlocProvider<NavigateSectionBloc>(bloc: _navigateSectionBloc),
        BlocProvider<ThemeBloc>(bloc: _themeBloc)
      ],
      child: BlocBuilder(
        bloc: _themeBloc,
        builder: (_, ThemeData theme) {
          if (theme != ThemeData.dark() ) { theme = _theme; }
          return MaterialApp(
            title: strTitle,
            home: Home(),
            theme: theme,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _themeBloc.dispose();
    _navigateSectionBloc.dispose();
    super.dispose();
  }
}



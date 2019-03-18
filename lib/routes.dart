import 'package:epic_seven_guide/pages/characters/characters_home.dart';
import 'package:epic_seven_guide/pages/home/home.dart';
import 'package:epic_seven_guide/pages/loading/loading.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static Map<String, WidgetBuilder> routes = {
    LOADING: (context) => LoadingScreen(),
    HOME: (context) => Home(),
    CHARACTERS: (context) => CharactersHome(),
  };

  static const String LOADING = '/loading';
  static const String HOME = '/';
  static const String CHARACTERS = '/characters';
}
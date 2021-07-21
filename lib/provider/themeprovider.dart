
import 'package:fitme/themes/dark.dart';
import 'package:fitme/themes/light.dart';
import 'package:fitme/themes/mid_night.dart';
import 'package:fitme/themes/night.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Themes { Light, Night, MidNight, Dark }

final themesData = {
  Themes.Light: light,
  Themes.Night: night,
  Themes.MidNight: midnight,
  Themes.Dark: dark
};

String enumName(Themes themeEnum) {
  return themeEnum.toString().split('.')[1];
}

class ThemeChanger with ChangeNotifier {
  late ThemeData _themeData;
  final _themePref = "theme_preference";

  ThemeChanger() {
    _loadTheme();
  }

  void _loadTheme() {
    SharedPreferences.getInstance().then((prefs) {
      int preferredTheme = prefs.getInt(_themePref) ?? 0;
      _themeData = themesData[Themes.values[preferredTheme]]!;
      notifyListeners();
    });
  }

  ThemeData get themeData {
    if (_themeData == null) {
      _themeData = themesData[Themes.Light]!;
    }
    return _themeData;
  }

  setTheme(Themes theme) async {
    _themeData = themesData[theme]!;
    notifyListeners();
    var prefs = await SharedPreferences.getInstance();
    prefs.setInt(_themePref, Themes.values.indexOf(theme));
  }
}

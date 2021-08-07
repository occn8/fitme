import 'package:fitme/themes/dark.dart';
import 'package:fitme/themes/light.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Themes { Light, Dark }

final themesData = {Themes.Light: light, Themes.Dark: dark};

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
      _themeData = themesData[Themes.Dark]!;
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

Future<String?> themer(BuildContext context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => SimpleDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Text('Choose Theme'),
      children: <Widget>[
        Container(
          height: 100,
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: ListView.builder(
            itemCount: Themes.values.length,
            itemExtent: 50,
            itemBuilder: (BuildContext context, int index) {
              final theme = Themes.values[index];
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Theme.of(context).cardColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Consumer<ThemeChanger>(
                    builder: (context, notifier, child) => InkWell(
                        onTap: () {
                          notifier.setTheme(theme);
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            themesData[theme] == notifier.themeData
                                ? Icon(
                                    Icons.radio_button_checked,
                                    size: 30,
                                    color: themesData[theme]!.primaryColor,
                                  )
                                : Icon(Icons.radio_button_unchecked),
                            SizedBox(width: 10),
                            Text(
                              enumName(theme)+' Theme',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).primaryColorDark),
                            ),
                          ],
                        )),
                  ),
                ),
              );
            },
          ),
        )
      ],
    ),
  );
}

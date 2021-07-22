import 'package:fitme/calender.dart';
import 'package:fitme/onboarding.dart';
import 'package:fitme/provider/themeprovider.dart';
import 'package:fitme/timer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  var key = prefs.getString('usagekey');

  runApp(
    ChangeNotifierProvider(
      create: (_) => new ThemeChanger(),
      child: Consumer<ThemeChanger>(
        builder: (context, ThemeChanger notifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'FitMe',
            theme: notifier.themeData,
            home: key == null ? OnboardingScreen() : Home(),
          );
        },
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitMe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

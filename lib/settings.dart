import 'package:fitme/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView(
          children: [
             Card(
              child: SwitchListTile(
                title: Text('Notifications'),
                value: true,
                onChanged: (bool value) {},
              ),
            ),
            Container(
              child: Consumer<ThemeChanger>(
                builder: (context, notifier, child) => Card(
                  child: ListTile(
                    title: Text('Theme'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                    onTap: () => themer(context),
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Security'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Support | Contacts'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('About'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

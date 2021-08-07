import 'package:fitme/about.dart';
import 'package:fitme/contact.dart';
import 'package:fitme/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _val = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => InkWell(
            splashColor: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: new EdgeInsets.all(8),
              decoration: BoxDecoration(
                  // color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(10)),
              child: new Icon(Icons.arrow_back_ios_outlined,
                  size: 25, color: Colors.white),
            ),
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w800),
        ),
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 15),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: SwitchListTile(
                activeColor: Theme.of(context).primaryColor,
                contentPadding: EdgeInsets.all(5),
                title: Text('Notifications'),
                value: _val,
                onChanged: (bool value) {
                  setState(() {
                    _val = !_val;
                  });
                },
              ),
            ),
            Container(
              child: Consumer<ThemeChanger>(
                builder: (context, notifier, child) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(5),
                    leading: Icon(
                      Icons.brightness_4,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text('Theme'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                    onTap: () => themer(context),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: Icon(
                  Icons.security,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text('Security'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Theme.of(context).primaryColor,
                ),
                onTap: () {},
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: Icon(
                  Icons.help,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text('Support | Contacts'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Theme.of(context).primaryColor,
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Contacts()));
                },
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: Icon(
                  Icons.info,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text('About'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Theme.of(context).primaryColor,
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => About()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:fitme/home.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle abtTStyle = TextStyle(
      fontSize: 20,
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.w500,
    );
    TextStyle abtStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Support | Contacts'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
              radius: 50,
              child: Image.asset('assets/icon.png'),
            ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Contacts for ',
                          style: abtTStyle,
                        ),
                        FitMeText()
                      ],
                    ),
                    SizedBox(height: 40),
                    Text(
                        'FitMe Team Contact Details available right below For help and support regarding Fitness and Nutrition'),
                    SizedBox(height: 40),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(width: 10),
                            Text('P.O Box 994 Kampala - Uganda',
                                style: abtStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(width: 10),
                            Text('Phone:+256 550 555 555', style: abtStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Icon(Icons.email),
                            SizedBox(width: 10),
                            Text('Email: fitme@fit.com', style: abtStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Icon(Icons.cloud),
                            SizedBox(width: 10),
                            Text('Web: www.fitme.fit.com', style: abtStyle),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

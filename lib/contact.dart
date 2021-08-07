import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle abtTStyle = TextStyle(
      fontSize: 18,
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
              SizedBox(height: 10),
              CircleAvatar(
                radius: 53,
                child: Image.asset(
                  'assets/icon.png',
                  height: 100,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('FitMe Team Contact Details available right below For help and support regarding Fitness and Nutrition'),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        width: 120,
                        child: Row(
                          children: [
                            Icon(Icons.location_on),
                            Text(
                              ' Postal Address',
                              style: abtTStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('PO Box 26004', style: abtStyle),
                    Text('Kampala - Uganda', style: abtStyle),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        width: 100,
                        child: Row(
                          children: [
                            Icon(Icons.location_on),
                            Text(' Street Address', style: abtTStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('410 Steve Biko Road', style: abtStyle),
                    Text('Kampala - Uganda', style: abtStyle),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        width: 100,
                        child: Row(
                          children: [
                            Icon(Icons.alarm),
                            Text(' Visit us', style: abtTStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Mondays to Fridays', style: abtStyle),
                    Text('08:00 to 15:00', style: abtStyle),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        width: 120,
                        child: Row(
                          children: [
                            Icon(Icons.cloud),
                            Text(' Other Contacts', style: abtTStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Phone:+256 020 004 009', style: abtStyle),
                    Text('Web: www.agmedical.med.com', style: abtStyle),
                    Text('Twitter: agmedical', style: abtStyle),
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

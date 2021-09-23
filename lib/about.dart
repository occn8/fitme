import 'package:fitme/home.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

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
        title: Text('About FitMe'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 30),
              CircleAvatar(
                radius: 50,
                child: Image.asset('assets/icon.png'),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'About ',
                          style: abtTStyle,
                        ),
                        FitMeText()
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      '''We were founded in 2021 by ..., To despense information reguarding health physically through proper workout routines and nutrition''',
                      style: abtStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(height:20),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Our Objective',
                      style: abtTStyle,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Making and keeping you in your best health physically and mentally through proper workout and nutrition',
                      style: abtStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

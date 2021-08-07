import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle abtTStyle = TextStyle(
      fontSize: 18,
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.w500,
    );
    TextStyle abtStyle = TextStyle(
      fontSize: 15,
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
              SizedBox(height: 10),
              CircleAvatar(
                radius: 50,
                child: Image.asset('assets/icon.png'),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Text(
                      'At a Glance',
                      style: abtTStyle,
                    ),
                    SizedBox(height: 10),
                    Text(
                      '''Uganda Martyrs University (UMU) is a faith-based private University owned by the Episcopal Conference of the Catholic Bishops of Uganda. UMU acknowledges the late Archbishop Kiwanuka as the Father of Catholic higher education in Uganda. When he first conceived the idea in the 1940’s, circumstances did not allow establishing a University at that time.
However, this proposal was renewed during the 1980’s, and was endorsed by the Uganda Episcopal Conference in 1989. Uganda Martyrs University was officially launched in 1993 by His Excellency Yoweri Kaguta Museveni President of the Republic of Uganda. It received its civil Charter on 2nd April 2005.''',
                      style: abtStyle,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Text(
                      'Our Vision',
                      style: abtTStyle,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'To be a University that is nationally and internationally recognized for excellence in teaching, learning, research, advancement of knowledge and community engagement.',
                      style: abtStyle,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Text(
                      'Our Mission',
                      style: abtTStyle,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'To provide quality higher education, training and research for the betterment of society guided by ethical values.',
                      style: abtStyle,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Text(
                      'Our Core Values',
                      style: abtTStyle,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Transparency \n Accountability \n Reliability \n Action based on Institutional Ethos \nQuality',
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
import 'package:fitme/details.dart';
import 'package:fitme/models/workouts.dart';
import 'package:fitme/provider/themeprovider.dart';
import 'package:fitme/settings.dart';
import 'package:fitme/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height * 0.2;
    var _width = MediaQuery.of(context).size.width * 0.5;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        appBar: AppBar(
          // leading: Builder(
          //   builder: (context) => InkWell(
          //     splashColor: Theme.of(context).accentColor,
          //     borderRadius: BorderRadius.circular(10),
          //     onTap: () {
          //       Navigator.push(
          //           context, MaterialPageRoute(builder: (ctx) => Calendar()));
          //     },
          //     child: Container(
          //       padding: new EdgeInsets.all(8),
          //       decoration: BoxDecoration(
          //           // color: Theme.of(context).cardColor,
          //           borderRadius: BorderRadius.circular(10)),
          //       child: new Icon(Icons.calendar_today,
          //           size: 25, color: Theme.of(context).primaryColorDark),
          //     ),
          //   ),
          // ),
          title: RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                      text: 'Fit',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                          color: Colors.orange[800])),
                  TextSpan(text: 'Me '),
                ],
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey)),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: true,
          actions: [
            Builder(
              builder: (context) => InkWell(
                splashColor: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Timer()));
                },
                child: Container(
                  padding: new EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      // color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: new Icon(Icons.timer,
                      size: 25, color: Theme.of(context).primaryColorDark),
                ),
              ),
            ),
            Builder(
              builder: (context) => InkWell(
                splashColor: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Settings()));
                },
                child: Container(
                  padding: new EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      // color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: new Icon(Icons.settings,
                      size: 25, color: Theme.of(context).primaryColorDark),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: ListView.builder(
              itemCount: workouts.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                WorkOutModel workout = workouts[index];
                return WorkOutItem(
                  height: _height,
                  width: _width,
                  imgUrl: workout.imgUrl!,
                  workout: workout,
                  title: workout.title!,
                );
              }),
        ),
      ),
    );
  }
}

class WorkOutItem extends StatelessWidget {
  const WorkOutItem({
    Key? key,
    required double height,
    required double width,
    required this.imgUrl,
    required this.workout,
    required this.title,
  })   : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;
  final String title, imgUrl;
  final WorkOutModel workout;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => Details(
                    workout: workout,
                  )),
        );
      },
      child: Container(
        height: 150,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Align(
              // top: MediaQuery.of(context).size.height * 0.2 / 2.5,
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 5),
                width: MediaQuery.of(context).size.width * 0.45,
                child: Text(
                  title,
                  // overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColorDark),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 40,
                padding: EdgeInsets.only(left: 5),
                width: MediaQuery.of(context).size.width * 0.45,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.timer,
                          size: 18,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          '45m',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Column(
                      children: [
                        Icon(
                          Icons.replay_circle_filled,
                          size: 18,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          'reps',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Column(
                      children: [
                        Icon(
                          Icons.power,
                          size: 18,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          'Sets',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 3),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 5.0),
                          blurRadius: 5.0,
                        ),
                      ]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.amber, width: 3),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 5.0),
                          blurRadius: 5.0,
                        ),
                      ]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image(
                image: AssetImage(imgUrl),
                height: _height,
                width: _width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

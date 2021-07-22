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
          leading: Builder(
            builder: (context) => InkWell(
              splashColor: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => Calendar()));
              },
              child: Container(
                padding: new EdgeInsets.all(8),
                decoration: BoxDecoration(
                    // color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(10)),
                child: new Icon(Icons.calendar_today,
                    size: 25, color: Theme.of(context).primaryColorDark),
              ),
            ),
          ),
          title: RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                      text: 'Fit',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Colors.orange[800])),
                  TextSpan(text: 'Me '),
                ],
                style: TextStyle(
                    fontSize: 20,
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
                  padding: new EdgeInsets.all(8),
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
                  padding: new EdgeInsets.all(8),
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

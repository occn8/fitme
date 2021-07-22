import 'package:fitme/models/workouts.dart';
import 'package:fitme/timer.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final WorkOutModel workout;
  Details({Key? key, required this.workout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (context) => InkWell(
                      splashColor: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: new EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: new Icon(Icons.arrow_back_ios_outlined,
                            size: 25,
                            color: Theme.of(context).primaryColorDark),
                      ),
                    ),
                  ),
                  Text(
                    'Detail',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                  Builder(
                    builder: (context) => InkWell(
                      splashColor: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => Timer()));
                      },
                      child: Container(
                        padding: new EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: new Icon(Icons.timer,
                            size: 25,
                            color: Theme.of(context).primaryColorDark),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 1,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 3),
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
                    alignment: Alignment.center,
                    child: Container(
                      width: 200,
                      height: 200,
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
                  Image(
                    image: AssetImage('${workout.imgUrl}'),
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * 1,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '${workout.title}',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: Theme.of(context).primaryColor),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${workout.description}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Procedures',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      '${workout.procedure}',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

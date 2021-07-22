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
              child: Image(
                image: AssetImage('${workout.imgUrl}'),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.7,
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
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Theme.of(context).primaryColor),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${workout.description}',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '${workout.procedure}',
                    style: TextStyle(
                      fontSize: 16,
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

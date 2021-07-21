import 'package:fitme/models/workouts.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final WorkOutModel workout;
  Details({Key? key, required this.workout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            '${workout.title}',
            style: TextStyle(
              fontSize: 16,
              // shadows: [
              // Shadow(
              // blurRadius: 5.0,
              // color: Colors.blue,
              // offset: Offset(5.0, 5.0),
              // ),
              // ],
            ),
          ),
        ),
      ),
    );
  }
}

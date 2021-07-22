import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class Timer extends StatefulWidget {
  Timer({Key? key}) : super(key: key);

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  CountDownController _controller = CountDownController();
  int _duration = 10;
  TextStyle style1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                    'Timer',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(width: 10)
                ],
              ),
            ),
            Center(
                child: CircularCountDownTimer(
              duration: _duration,
              initialDuration: 0,
              controller: _controller,
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 1.7,
              ringColor: Colors.grey[300]!,
              ringGradient: null,
              fillColor: Colors.amber,
              fillGradient: null,
              backgroundColor: Theme.of(context).cardColor,
              backgroundGradient: null,
              strokeWidth: 20.0,
              strokeCap: StrokeCap.round,
              textStyle: TextStyle(
                  fontSize: 44.0,
                  color: Theme.of(context).primaryColorDark,
                  fontWeight: FontWeight.bold),
              textFormat: CountdownTextFormat.S,
              isReverse: false,
              isReverseAnimation: false,
              isTimerTextShown: true,
              autoStart: false,
              onStart: () {
                print('Countdown Started');
              },
              onComplete: () {
                print('Countdown Ended');
              },
            )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Current Duration :'),
                      Text(
                        ' ${_duration}',
                        style: style1,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        child: Row(
                          children: [
                            Text('Reduce '),
                            Icon(Icons.remove),
                            Text('10',style: style1,),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor),
                        onPressed: () {
                          _duration == 10 ? _duration == 10 : _duration -= 10;
                          setState(() {
                            _controller.restart(duration: _duration);
                          });
                        },
                      ),
                      ElevatedButton(
                        child: Row(
                          children: [
                            Text('Add '),
                            Icon(Icons.add),
                            Text('10',style: style1,),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor),
                        onPressed: () {
                          _duration += 10;
                          setState(() {
                            _controller.restart(duration: _duration);
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 30),
            _button(title: "Start", onPressed: () => _controller.start()),
            SizedBox(width: 10),
            _button(title: "Pause", onPressed: () => _controller.pause()),
            SizedBox(width: 10),
            _button(title: "Resume", onPressed: () => _controller.resume()),
            SizedBox(width: 10),
            _button(
                title: "Restart",
                onPressed: () => _controller.restart(duration: _duration))
          ],
        ),
      ),
    );
  }

  _button({required String title, VoidCallback? onPressed}) {
    return Container(
        child: ElevatedButton(
      child: Text(
        title,
        style: TextStyle(),
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
    ));
  }
}

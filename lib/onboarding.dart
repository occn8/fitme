import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage
          ? _indicator(true, () {
              _pageController.animateToPage(i,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.bounceIn);
            })
          : _indicator(false, () {
              _pageController.animateToPage(i,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.bounceIn);
            }));
    }
    return list;
  }

  Widget _indicator(bool isActive, Function() ontap) {
    return InkWell(
      onTap: ontap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        height: 8.0,
        width: isActive ? 24.0 : 16.0,
        decoration: BoxDecoration(
          color: isActive ? Colors.amber : Color(0xFF7B51D3),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height * 0.4;
    var _width = MediaQuery.of(context).size.width * 0.7;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            // gradient: LinearGradient(
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //   stops: [0.1, 0.4, 0.7, 0.9],
            //   colors: [
            //     Color(0xFF322c42),
            //     Color(0xFF30293c),
            //     Color(0xff6c005a),
            //     Color(0xFF5b074a),
            //   ],
            // ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    alignment: Alignment.centerRight,
                    child: _currentPage != _numPages - 1
                        ? ElevatedButton(
                            onPressed: () {
                              _pageController.animateToPage(3,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.bounceIn);
                              setState(() {
                                _currentPage = 3;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(15),
                              primary: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          )
                        : null,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/healthy_lifestyle.png'),
                                  height: _height,
                                  width: _width,
                                ),
                              ),
                              SizedBox(height: 30.0),
                              Text(
                                'Live a healthy life Sytle\nwith us!',
                                style: titleTextStyle(context),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                                style: subtitleTextStyle(context),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/fitness_tracker.png'),
                                  height: _height,
                                  width: _width,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Track Your fitness \nwith us',
                                style: titleTextStyle(context),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                                style: subtitleTextStyle(context),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/personal_trainer.png'),
                                  height: _height,
                                  width: _width,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Train with the Best',
                                style: titleTextStyle(context),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                                style: subtitleTextStyle(context),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildPageIndicator(),
                      ),
                      SizedBox(width: 10),
                      _currentPage != _numPages - 1
                          ? SizedBox(
                              child: Align(
                                alignment: FractionalOffset.bottomRight,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _pageController.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(15),
                                    primary: Theme.of(context).primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        'Next',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      SizedBox(width: 10.0),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 30.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : Text(''),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomSheet: _currentPage == _numPages - 1
            ? Container(
                height: 80.0,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                child: GestureDetector(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext ctx) => Home()),
                    );
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.setString('usagekey', 'times');
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 30.0),
                      child: Text(
                        'Get started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Text(''),
      ),
    );
  }

  TextStyle titleTextStyle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).primaryColorDark,
      fontFamily: 'Gilroy',
      fontSize: 18.0,
      height: 1.5,
    );
  }

  TextStyle subtitleTextStyle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).primaryColorDark,
      fontSize: 14.0,
      height: 1.2,
    );
  }
}

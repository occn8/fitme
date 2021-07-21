import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (context) => InkWell(
                        splashColor: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => Scaffold.of(context).openDrawer(),
                        child: Container(
                          padding: new EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              // color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: new Icon(Icons.menu,
                              size: 25,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ),
                    ),
                    RichText(
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
                    
                    Builder(
                      builder: (context) => InkWell(
                        splashColor: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {},
                        child: Container(
                          padding: new EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              // color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: new Icon(Icons.settings,
                              size: 25,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: Text(
                  'Work Outs',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              WorkOutItem(
                height: _height,
                width: _width,
                imgUrl: 'assets/images/healthy_lifestyle.png',
              ),
              WorkOutItem(
                height: _height,
                width: _width,
                imgUrl: 'assets/images/healthy_lifestyle.png',
              ),
              WorkOutItem(
                height: _height,
                width: _width,
                imgUrl: 'assets/images/healthy_lifestyle.png',
              ),
            ],
          ),
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
  })   : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Color(0xffdef2f8), borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Align(
            // top: MediaQuery.of(context).size.height * 0.2 / 2.5,
            alignment: Alignment.centerLeft,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45,
              child: Text(
                'Planks ona thte case the',
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey),
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
    );
  }
}

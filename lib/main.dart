import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // Root application widget
  @override
  Widget build(BuildContext context) {
    _setWindowProperties();
    return new MaterialApp(
      title: 'Measure',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new RulerPage(),
    );
  }

  void _setWindowProperties() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setEnabledSystemUIOverlays([]);
  }
}

class RulerPage extends StatefulWidget {
  @override
  _RulerPageState createState() => new _RulerPageState();
}

class _RulerPageState extends State<RulerPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Expanded(
              child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'Hello world!',
              ),
            ],
          )),
          new Expanded(
              child: new Container(
            color: Colors.green,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image(
                    height: 48.0,
                    width: 48.0,
                    image: new AssetImage('assets/ruler.png')),
                new Container(
                    margin: const EdgeInsets.only(top: 8.0),
                    child: new Text(
                      'Measure',
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24.0),
                    )),
                new Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  child: new Text(
                    'Made by Joel Anderson',
                    style: new TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

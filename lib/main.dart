import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello World Travel Title",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello World Travel App"),
              backgroundColor: Colors.deepPurple,
            ),
            body: Builder(
                builder: (context) => SingleChildScrollView(
                  child: Padding(
                    padding:EdgeInsets.symmetric(vertical:200.0),
                    child: Center(
                            child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Hello World Travel',
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Discover the World',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurpleAccent),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.network(
                              'https://media.lactualite.com/2019/12/361ba8f8-istock-1084346110-1200x675.jpg',
                              height: 350,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: RaisedButton(
                              child: Text('Contact Us'),
                              onPressed: () => contactUs(context),
                            ),
                          ),
                        ])),
                  ),
                ))));
  }
}

void contactUs(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Contact Us'),
        content: Text('Mail us at hello@world.com'),
        actions: <Widget>[
          FlatButton(
            child: Text('Close'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      );
    },
  );
}

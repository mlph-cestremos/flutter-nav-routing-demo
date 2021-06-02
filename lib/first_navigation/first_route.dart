import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing/first_navigation/second_route.dart';

class FirstRoute extends StatelessWidget {
  final String title;

  const FirstRoute({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You want to go to the next screen?'),
            RaisedButton(
                child: Text('Next'),
                color: Colors.lightBlueAccent,
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    ))
          ],
        )),
      ),
    );
  }
}

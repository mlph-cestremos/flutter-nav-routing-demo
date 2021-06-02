import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Second Route'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You want to go back to the previous screen?'),
            RaisedButton(
                child: Text('Return'),
                color: Colors.amberAccent,
                onPressed: () => Navigator.pop(context))
          ],
        )),
      ),
    );
  }
}

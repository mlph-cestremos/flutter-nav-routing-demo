import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing/second_navigation/grocery.dart';


// Hello :)
class GroceryItemView extends StatelessWidget {
  final Grocery grocery;

  const GroceryItemView({Key key, @required this.grocery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(grocery.name),
          leading: GestureDetector(
              child: Icon(
                Icons.arrow_back,
                size: 24.0,
                semanticLabel: 'Return',
              ),
              onTap: () => Navigator.pop(context)),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/grocery.jpg',
              width: 310,
              height: 310,
            ),
            Text('PHP ${grocery.price.roundToDouble()}'),
            Text(grocery.description)
          ],
        )),
      ),
    );
  }
}

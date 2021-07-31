// These are the flutter imports
import 'package:flutter/material.dart';

// These are the page imports
import 'package:flutter_navigation_routing/second_navigation/grocery_list_view.dart';

void main() {
  runApp(MyApp());
}

// This class is the root widget from which all pages will stem from.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation & Routing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GroceryListView(),
    );
  }
}

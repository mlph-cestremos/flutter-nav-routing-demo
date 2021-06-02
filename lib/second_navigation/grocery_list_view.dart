import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing/second_navigation/grocery.dart';
import 'package:flutter_navigation_routing/second_navigation/grocery_item_view.dart';

class GroceryListView extends StatelessWidget {
  final groceryList = List.generate(
    20,
    (i) => Grocery(
        'Grocery item #$i',
        'A healthy description of Grocery item $i',
        Random().nextDouble() * 1000),
  );

  GroceryListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grocery List'),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.black,
          ),
          itemCount: groceryList.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GroceryItemView(
                            grocery: groceryList[index],
                          ))),
              title: Text(groceryList[index].name),
            );
          },
        ),
      ),
    );
  }
}

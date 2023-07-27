import 'package:flutter/material.dart';

import '../data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries List'),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text(groceryItems[index].name),
            leading: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: groceryItems[index].category.color,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            trailing: Text(
              groceryItems[index].quantity.toString(),
            ),
          );
        },
      ),
    );
  }
}

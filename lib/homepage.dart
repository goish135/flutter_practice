import 'dart:html';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:toggle_button/models/cart.dart';
import 'package:toggle_button/secondscreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScopedModelDescendant<Cart>(
        builder: (_, child, model) {
          return Column(
            children: [
              Text("${model.cartItems.length}", style: TextStyle(fontSize: 40)),
              FlatButton(
                child: Text('Add to Cart'),
                color: Colors.blue,
                onPressed: () {
                  model.addToCart();
                  print(model.cartItems);
                },
              ),
              FlatButton(
                child: Text('Go to Screen 2'),
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
              )
            ],
          );
        },
      ),
    );
  }
}

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:toggle_button/models/cart.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Second Screen')),
        body: ScopedModelDescendant<Cart>(
          builder: (_, child, model) {
            return Text(
                'Cart is having this much elements: ${model.cartItems.length}',
                style: TextStyle(fontSize: 28));
          },
        ));
  }
}

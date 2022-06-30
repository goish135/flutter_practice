import 'package:scoped_model/scoped_model.dart';

class Cart extends Model {
  List cartItems = [];

  addToCart() {
    cartItems.add(2);
    notifyListeners();
  }
}

// After calling addToCart() 3 times 
// [2,2,2] 

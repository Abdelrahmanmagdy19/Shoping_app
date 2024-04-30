import 'package:flutter/cupertino.dart';
import 'package:shopingapp/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'zoomfric',
        price: '300',
        description: 'jgjjkjdfjkjkdgkj',
        imagePath: 'lib/images/1.png'),
    Shoe(
        name: 'dvsklv',
        price: '220',
        description: 'jgjjkjdfjkjkdgkj',
        imagePath: 'lib/images/2.png'),
    Shoe(
        name: 'sdkjvnvjsndvlk',
        price: '400',
        description: 'jgjjkjdfjkjkdgkj',
        imagePath: 'lib/images/3.png'),
    Shoe(
        name: 'vdksvnk',
        price: '350',
        description: 'jgjjkjdfjkjkdgkj',
        imagePath: 'lib/images/4.png'),
  ];
  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUcerCart() {
    return userCart;
  }

  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemsFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

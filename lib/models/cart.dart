import 'package:flutter/material.dart';
import 'package:side_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      description: 'The Zoom Freak 1 is the first signature shoe of NBA superstar Giannis Antetokounmpo.',
      imagePath: 'lib/images/ZoomFreak.png',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '220',
      description: 'The Air Jordan 1 is a basketball shoe designed by Peter Moore for Nike.',
      imagePath: 'lib/images/AirJordan.png',
    ),
    Shoe(
      name: 'KD Treys',
      price: '240',
      description: 'The KD Trey 5 is a versatile basketball shoe designed for Kevin Durant.',
      imagePath: 'lib/images/KD.png',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '190',
      description: 'The Kyrie 6 is a basketball shoe designed for Kyrie Irving, known for its responsiveness and traction.',
      imagePath: 'lib/images/Kyrie.png',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  } 

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

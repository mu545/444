import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imageUrl,
      this.isFavorite = false});
  void FavoiritStatus() {
    final oldstates = isFavorite;
    isFavorite = !isFavorite;
    notifyListeners();
    // final url = 'https://shop-app-664ca-default-rtdb.firebaseio.com/prod.json';
    // try {
    //   await http.patch(
    //     Uri.parse(url),
    //     body: json.encode({'isFavorite': isFavorite}),
    //   );
    // } catch (error) {
    //   isFavorite = oldstates;
    // }

    // isFavorite = !isFavorite;
    // notifyListeners();
  }
}

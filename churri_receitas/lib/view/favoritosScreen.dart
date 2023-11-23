// FavoritosScreen.dart

import 'package:flutter/material.dart';
import 'package:churry/model/products_model.dart';
import 'package:churry/model/component/list_products_data.dart';
import 'package:churry/view/view_product.dart';


class FavoritosScreen extends StatelessWidget {
  final List<Product> favoritos;

  FavoritosScreen({required this.favoritos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
      ),
      body: ListView.builder(
        itemCount: favoritos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoritos[index].name),
            // Add more details or customize as needed
          );
        },
      ),
    );
  }
}

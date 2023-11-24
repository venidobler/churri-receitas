import 'package:churry/view/FavoritosScreen.dart';
import 'package:flutter/material.dart';
import 'package:churry/model/products_model.dart';
import '../model/component/list_products_data.dart';
import 'view_product.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favoritos',
          style: TextStyle(
            color: Colors.white, // Set the text color to white
            fontWeight: FontWeight.bold, // Optional: Set the font weight
          ),
        ),
        centerTitle: true, // Center the title
        backgroundColor: Colors.amber, // Set the background color to orange
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              List<Product> favoritos = getFavoriteProducts();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritosScreen(favoritos: favoritos),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: productsData.length,
            itemBuilder: (context, index) {
              Product product = productsData[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailScreen(product: product),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(
                              255,
                              235,
                              187,
                              115,
                            ), // Fundo laranja
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage(product.imageUrl),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          child: Container(
                            height: 40,
                            color: Colors.white,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  product.isFavorite = !product.isFavorite;
                                });
                              },
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: product.isFavorite
                                      ? Colors.red
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<Product> getFavoriteProducts() {
    return productsData.where((product) => product.isFavorite).toList();
  }
}

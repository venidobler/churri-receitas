import 'package:flutter/material.dart';
import 'package:churry/model/component/list_products_data.dart';
import 'package:churry/view/view_product.dart';
import '../model/products_model.dart';
import 'FavoritosScreen.dart';

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
  List<bool> isFavoriteList = List.generate(productsData.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receitas'),
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
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen(product: productsData[index]),
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
                                image: AssetImage(productsData[index].imageUrl),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Center(
                            child: Text(
                              productsData[index].name,
                              textAlign: TextAlign.center,
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
                                  isFavoriteList[index] = !isFavoriteList[index];
                                });
                              },
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: isFavoriteList[index] ? Colors.red : Colors.grey,
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
    List<Product> favoritos = [];
    for (int i = 0; i < productsData.length; i++) {
      if (isFavoriteList[i]) {
        favoritos.add(productsData[i]);
      }
    }
    return favoritos;
  }
}

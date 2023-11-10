import 'package:flutter/material.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({super.key});

  @override
  State<Favoritos> createState() => _Favoritos();
}

class _Favoritos extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../../assets/images/background.png'),
            fit: BoxFit.cover, // ajuste a imagem para cobrir toda a tela
          ),
        ),
        child: Center(
          // Adicione o conteúdo da sua página aqui
          child: Text('Favoritos', style: TextStyle(color: Colors.green)),
        ),
      ),
    );
  }
}

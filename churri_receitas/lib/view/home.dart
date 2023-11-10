import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
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
          child: Text('Home', style: TextStyle(color: Colors.green)),
        ),
      ),
    );
  }
}

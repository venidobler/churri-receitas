import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _Profile();
}

class _Profile extends State<Profile> {
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
          child: Text('Profile', style: TextStyle(color: Colors.green)),
        ),
      ),
    );
  }
}

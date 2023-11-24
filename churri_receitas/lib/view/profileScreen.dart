import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perfil',
          style: TextStyle(color: Colors.orange),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(24.0),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('../../assets/images/imagem_pessoa.jpg'),
              ),
            ),
            SizedBox(height: 36), 
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 24.0), 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoCard('Gustavo Lazarin da Silva'),
                  SizedBox(height: 24), 
                  _buildInfoCard('Email: lazaringuuh@icloud.com'),
                  SizedBox(height: 24),
                  _buildInfoCard('Telefone: +55 45 98813-6936'),
                ],
              ),
            ),
            SizedBox(height: 48), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _changePassword();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(200, 60),
                  ),
                  child: Text('Alterar Senha'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _logOut();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(200, 60), 
                  ),
                  child: Text('Sair'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String info) {
    return Container(
      padding: EdgeInsets.all(24), 
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              info,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  void _changePassword() {
    print('Changing password...');
  }

  void _logOut() {
    print('Logging out...');
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
  ));
}

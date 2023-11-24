import 'model/component/backgroundcomponent.dart';
import 'model/component/logo.dart';
import 'package:flutter/material.dart';
import 'view/home.dart';
import 'view/search.dart';
import 'view/favoritosScreen.dart';
import 'view/profileScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
        bottomAppBarTheme: BottomAppBarTheme(
          color: Color(0xffF9A72A),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Search(),
    FavoritosScreen(favoritos: [],),
    ProfileScreen(),
    
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF9A72A),
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoWithBorderRadius(),
          ],
        ),
      ),
      body: Stack(
        children: [
          Backgroundcomponent(),
          _pages[_selectedIndex], 
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffF9A72A),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                _onTabTapped(0);
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                _onTabTapped(1);
              },
            ),
            LogoWithBorderRadius(),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                _onTabTapped(2);
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                _onTabTapped(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LogoWithBorderRadius extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF9A72A),
        borderRadius:
            BorderRadius.circular(16.0), 
      ),
      child: Logo(), 
    );
  }
}

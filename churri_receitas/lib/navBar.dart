import 'package:flutter/material.dart';
import 'model/component/backgroundcomponent.dart';
import 'model/component/logo.dart';
import 'package:flutter/material.dart';
import 'view/home.dart';
import 'view/search.dart';
import 'view/favoritos.dart';
import 'view/profile.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Search(),
    Favoritos(),
    Profile(),
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
            Logo(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffF9A72A),
        onPressed: () {
        },
        child: LogoWithBorderRadius(),
      ),
      body: Stack(
        children: [
          Backgroundcomponent(),
          _pages[_selectedIndex],
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Color(0xffF9A72A),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    _onTabTapped(0);
                  },
                  icon: const Icon(
                    Icons.home,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _onTabTapped(2);
                  },
                  icon: const Icon(
                    Icons.favorite,
                  ),
                ),
                const SizedBox(width: 24),
                IconButton(
                  onPressed: () {
                    _onTabTapped(1);
                  },
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _onTabTapped(3);
                  },
                  icon: const Icon(
                    Icons.person,
                  ),
                )
              ],
            ),
          ),
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
      child: LogoNav(), 
    );
  }
}


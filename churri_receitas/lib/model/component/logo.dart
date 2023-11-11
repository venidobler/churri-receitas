import 'package:flutter/material.dart';

class LogoNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundImage: AssetImage('assets/images/logoNav.png'),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      '../../../assets/images/logo.png',
      height: 55,
      width: 55,
    );
  }
}

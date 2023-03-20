import 'package:exercice_app/menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<FullscreenMenuItem> items = [
    FullscreenMenuItem(
      title: 'Card 1',
      backgroundImage: 'assets/images/background.png',
    ),
    FullscreenMenuItem(
      title: 'Card 2',
      backgroundImage: 'assets/images/background.png',
    ),
    FullscreenMenuItem(
      title: 'Card 3',
      backgroundImage: 'assets/images/background.png',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Center(
        child: FullscreenMenu(items: items),
      ),
    );
  }
}

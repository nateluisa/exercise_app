import 'package:flutter/material.dart';

class FullscreenMenu extends StatelessWidget {
  final List<FullscreenMenuItem> items;

  FullscreenMenu({required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent[100],
      body: PageView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage(items[index].backgroundImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  items[index].title,
                  style: const TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class FullscreenMenuItem {
  final String title;
  final String backgroundImage;

  FullscreenMenuItem({required this.title, required this.backgroundImage});
}

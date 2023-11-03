import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Hola Mundo'),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ASSETS'),
                  Text('IMAGENES'),
                ],
              ),
            ),
            Image(image: AssetImage('assets/flutter.png'), width: 300, height: 300, fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}

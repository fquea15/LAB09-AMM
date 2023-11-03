import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/flutter.png',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                '¡Bienvenido a nuestra aplicación!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Explora las increíbles funcionalidades que tenemos para ofrecerte. ¡Comienza ahora mismo!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Acción a realizar al presionar el botón principal
                },
                child: Text('Comenzar'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Acción a realizar al presionar el botón secundario
                },
                child: Text('¿Ya tienes una cuenta? Inicia sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

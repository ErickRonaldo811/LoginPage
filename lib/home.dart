import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text('Hello World uwu'),
              
            
            ),

            TextButton(onPressed: () async{

                // Borrar preferencias de usuario (token)
                final prefs = await SharedPreferences.getInstance();
                prefs.remove('token');

                // Navegar de regreso a la pantalla de inicio de sesión
                Navigator.pop(context);



            }, child: Container(
              
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              height: 50,
              width:100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text("Log-Out",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
              )))

          ],
        ),
      ),
    );
  }
}
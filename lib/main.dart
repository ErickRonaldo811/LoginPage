import 'package:flutter/material.dart';

import 'package:loginpage/login_page.dart';
import 'package:loginpage/rutas.dart';




void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:  LoginPage(), // Manda al loginPage
      initialRoute: Routes.login.name,
      routes: MyRoutes.routes,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            appBar: AppBar(),
            body: Center(child: Text('La ruta ${settings.name} no existe')),
          ),
        );
      },
    );
  }
}
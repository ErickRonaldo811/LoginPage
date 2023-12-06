
import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';


import 'package:loginpage/login_page.dart';





enum Routes {  login , home}

class MyRoutes {
  static final routes = {
    
    Routes.login.name: (BuildContext context) => LoginPage(),
    Routes.home.name: (BuildContext context) => HomePage(),
  
    
  };
}
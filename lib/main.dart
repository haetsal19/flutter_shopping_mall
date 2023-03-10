import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/screens/screen_index.dart';
import 'package:flutter_shopping_mall/screens/screen_login.dart';
import 'package:flutter_shopping_mall/screens/screen_splash.dart';
import 'package:flutter_shopping_mall/screens/screen_detail.dart';
import 'package:flutter_shopping_mall/screens/screen_register.dart';
import 'package:flutter_shopping_mall/screens/screen_search.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Shopping mall',
      routes: {
        '/' : (context) => SplashScreen(),
        '/index' : (context) => IndexScreen(),
        '/login' : (context) => LoginScreen(),
        '/register' : (context) => RegisterScreen(),
        '/detail' : (context) => DetailScreen(),
        '/search' : (context) => SearchScreen(),
      },
      initialRoute: '/',
    );
  }
}
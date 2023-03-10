import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; //자동로그인에 필요한 정보를 저장하기 위해

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<bool> checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLogin = prefs.getBool('isLogin') ?? false;
    print("[*] 로그인 상태 : " + isLogin.toString());
    return isLogin;
  }

  void moveScreen() async {
    await checkLogin().then((isLogin) {
      if(isLogin) {
        Navigator.of(context).pushReplacementNamed('/index');
      } else {
        Navigator.of(context).pushReplacementNamed('/login');
      }
    });
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 1500), () {
      moveScreen();
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: null,
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}


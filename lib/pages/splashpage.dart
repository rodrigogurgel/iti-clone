import 'package:flutter/material.dart';
import 'package:iti_app/pages/homepage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var laranjaIti = Color.fromRGBO(236, 111, 1, 1);
    var rosaIti = Color.fromRGBO(255, 86, 141, 1);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              laranjaIti,
              rosaIti,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Image.asset(
            'images/logo-iti.png',
            color: Colors.white,
            height: 160,
            width: 160,
          ),
        ),
      ),
    );
  }
}

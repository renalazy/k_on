import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(Splash());

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashApp(),
    );
  }
}

class SplashApp extends StatefulWidget {
  @override
  _SplashAppState createState() => _SplashAppState();
}

class _SplashAppState extends State<SplashApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F9DA),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            RotationTransition(
              turns: AlwaysStoppedAnimation(40 / 360),
              child: Center(
                child: Image(
                  image: AssetImage('images/k-on-1.png'),
                  width: 435.0,
                  height: 244.0,
                  color: Color.fromRGBO(255, 255, 255, 0.3),
                  colorBlendMode: BlendMode.modulate,
                ),
              ),
            ),
            Center(
              child: Image.asset('images/k-on-logo.png',
                  width: 300.0, height: 150.0),
            ),
          ],
        ),
      ),
    );
  }
}

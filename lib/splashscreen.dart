import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_svg/flutter_svg.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  startTime() async {
    return Timer(Duration(seconds: 5),
        () => {Navigator.of(context).pushReplacementNamed('/login')});
  }

  @override
  void initState() {
    super.initState();
    //
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/images/logo.png', height: 300, width: 300),
      ),
    );
  }
}

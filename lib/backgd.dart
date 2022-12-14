import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroudImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                // your body content here
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget backgroudImage() {
    return ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
          colors: [Colors.black, Colors.black12],
          begin: Alignment.bottomCenter,
          end: Alignment.center,
        ).createShader(bounds),
        blendMode: BlendMode.darken,
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('eheh.jpg'), /// change this to your  image directory
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
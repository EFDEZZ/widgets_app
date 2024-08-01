import 'dart:math'show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  int width = 100;
  int height = 100;
  int borderRadius = 20;
  Color color = Colors.lightBlue;

  void changeShape(){
    final random = Random();
    width = random.nextInt(300)+120;
    height = random.nextInt(300)+120 ;
    borderRadius = random.nextInt(20)+20;
    color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      1
      );
      setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: changeShape,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOutCubic,
            width: width.toDouble() <= 0 ? 0: width.toDouble(),
            height: height.toDouble() <= 0 ? 0: height.toDouble(),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(borderRadius.toDouble()<= 0 ? 0: borderRadius.toDouble(),),
            ),  
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            changeShape();
        }, 
        child: const Icon(Icons.play_arrow_outlined),
        ),
    );
  }
}
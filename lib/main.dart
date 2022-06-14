import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MaterialApp(home: MyFadeTextWidget()));
}

class MyFadeTextWidget extends StatefulWidget {
  const MyFadeTextWidget({Key? key}) : super(key: key);

  @override
  State<MyFadeTextWidget> createState() => _MyFadeTextWidgetState();
}

class _MyFadeTextWidgetState extends State<MyFadeTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(
              repeatForever: true,
              isRepeatingAnimation: true,
              animatedTexts: [
                FadeAnimatedText('do IT!'),
                FadeAnimatedText('do it Right!!'),
                FadeAnimatedText('do it Right Now!!!'),
              ],
            ),
          ),
        ));
  }
}

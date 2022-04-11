import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final AnimationController _controller;
  bool _isPressed = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        // onDoubleTap:
        // onLongPress:             
        onTap: () {
          if (_isPressed == false) {
            _isPressed = true;
            _controller.forward().orCancel;
          } else {
            _isPressed = false;
            _controller.repeat().orCancel;
          }
        },
        child: Stack(
          children: [
            Center(
              child: Lottie.asset('assets/7250-wizard-animation-character.json',
                  fit: BoxFit.fill, controller: _controller),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(style: BorderStyle.solid)),
              padding: const EdgeInsets.all(24),
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.all(20),
              child: LinearProgressIndicator(
                value: _controller.value,
                backgroundColor: Colors.blue,
                color: Colors.black,
                minHeight: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

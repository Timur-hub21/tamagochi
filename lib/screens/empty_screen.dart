import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Will be implemented later',
        style: TextStyle(
          fontSize: 24,
          color: Colors.amber,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

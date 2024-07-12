import 'package:flutter/material.dart';

class ConstraintsSample extends StatelessWidget {
  const ConstraintsSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        color: Colors.red,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
      ),
    );
  }
}

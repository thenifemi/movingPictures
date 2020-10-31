import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Authenticated',
          style: TextStyle(fontSize: 50.0, color: Colors.white),
        ),
      ),
    );
  }
}

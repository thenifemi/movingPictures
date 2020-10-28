import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Heading",
              style: Theme.of(context).textTheme.headline5,
            ),
            Text("title"),
            Text("body"),
            Text("subtext"),
            Text("regular text"),
            Text("button text"),
          ],
        ),
      ),
    );
  }
}

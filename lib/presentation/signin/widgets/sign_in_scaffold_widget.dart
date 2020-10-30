import 'package:flutter/material.dart';

class SignInScaffoldWidget extends StatelessWidget {
  const SignInScaffoldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        BackgroundImage(),
        DarkOverlayWidget(),
      ],
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DarkOverlayWidget extends StatelessWidget {
  const DarkOverlayWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

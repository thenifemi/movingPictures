import 'package:flutter/material.dart';

import '../../core/constants.dart';

class SignInScaffoldWidget extends StatelessWidget {
  const SignInScaffoldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30.0,
        ),
        Image.asset(
          movingPicturesLogoRed,
          width: 180.0,
        ),
        Expanded(
          child: Stack(
            children: const [
              BackgroundImage(),
              DarkOverlayWidget(),
            ],
          ),
        ),
      ],
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Image.asset(
        signInScreenBackgroundImage,
        fit: BoxFit.fill,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}

class DarkOverlayWidget extends StatelessWidget {
  const DarkOverlayWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.6),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}

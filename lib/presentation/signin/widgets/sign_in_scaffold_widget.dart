import 'package:flutter/material.dart';
import 'package:movingPictures/presentation/core/language_constants.dart';

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
    final appTextTheme = Theme.of(context).textTheme;

    return Container(
      color: Colors.black.withOpacity(0.7),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              signInWelcomeMessage,
              style: TextStyle(
                fontFamily: appTextTheme.headline5.fontFamily,
                color: appTextTheme.headline5.color,
                fontWeight: FontWeight.w700,
                fontSize: 40.0,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

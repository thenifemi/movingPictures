import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/constants.dart';
import '../../core/language_constants.dart';

class SignInScaffoldWidget extends StatelessWidget {
  const SignInScaffoldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopRedBar(),
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
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.8),
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              child: Image.asset(
                movingPicturesLogoRed,
                width: 200.0,
              ),
            ),
            const SizedBox(height: 30.0),
            Text(
              signInWelcomeMessage,
              style: TextStyle(
                fontFamily: appTextTheme.headline5.fontFamily,
                color: appTextTheme.headline5.color,
                fontWeight: FontWeight.w700,
                fontSize: 40.0,
              ),
              // textAlign: TextAlign.end,
            ),
            const SizedBox(height: 20.0),
            SignInButton(appTextTheme: appTextTheme),
          ],
        ),
      ),
    );
  }
}

class TopRedBar extends StatelessWidget {
  const TopRedBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColors.red,
          height: 150.0,
        ),
        Container(
          color: Colors.black.withOpacity(0.3),
          height: 150.0,
        ),
      ],
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: RaisedButton(
        padding: const EdgeInsets.all(8.0),
        onPressed: () {},
        color: AppColors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppColors.white,
              ),
              padding: const EdgeInsets.all(3.0),
              child: Image.asset(
                googleIcon,
                width: 20.0,
                height: 20.0,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              singInButton,
              style: TextStyle(
                fontFamily: appTextTheme.button.fontFamily,
                color: appTextTheme.button.color,
                fontWeight: appTextTheme.button.fontWeight,
                fontSize: appTextTheme.button.fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

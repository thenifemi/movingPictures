import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/component_widgets/half_button_widget.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/language_constants.dart';
import 'small_buttons.dart';

class BannerBlockWidget extends StatelessWidget {
  const BannerBlockWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Stack(
        children: [
          const BackgroundPoster(),
          BottomItems(appTextTheme: appTextTheme),
        ],
      ),
    );
  }
}

class BackgroundPoster extends StatelessWidget {
  const BackgroundPoster({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.black,
            Colors.transparent,
            Colors.transparent,
            AppColors.black,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 0.2, 0.8, 1],
        ),
      ),
      child: Image.asset(
        theQueensGambitPoster,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}

class BottomItems extends StatelessWidget {
  const BottomItems({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 40.0,
          width: MediaQuery.of(context).size.width / 1.8,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.0,
              color: AppColors.white,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nifemiRecommends,
                style: appTextTheme.headline4,
              ),
              const SizedBox(width: 5.0),
              const Icon(
                Icons.verified,
                color: AppColors.red,
                size: 25.0,
              )
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FavoriteButtonWidget(
                appTextTheme: appTextTheme,
                onPressed: () {},
              ),
              SizedBox(
                height: 40.0,
                width: 100.0,
                child: PrimaryButton(
                  appTextTheme: appTextTheme,
                  name: watchTrailer,
                  color: AppColors.white,
                  onpressed: () {},
                ),
              ),
              InfoButtonWidget(appTextTheme: appTextTheme),
            ],
          ),
        ),
      ],
    );
  }
}

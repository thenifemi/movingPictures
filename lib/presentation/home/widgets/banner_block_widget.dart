import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/component_widgets/primary_button_widget.dart';
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            width: double.infinity,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, AppColors.black.withOpacity(0.9)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                tempo,
                fit: BoxFit.fill,
              ),
            ),
          ),
          BottomItems(appTextTheme: appTextTheme),
        ],
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
          width: MediaQuery.of(context).size.width / 1.6,
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
                width: 120.0,
                child: PrimaryButton(
                  appTextTheme: appTextTheme,
                  name: watchTrailer,
                  color: AppColors.white,
                  onpressed: () {},
                  isFullButton: false,
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

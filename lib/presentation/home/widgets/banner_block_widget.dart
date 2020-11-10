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
          Container(
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
          ),
          Container(
            color: AppColors.black.withOpacity(0.3),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
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
                      child: HalfButton(
                        appTextTheme: appTextTheme,
                        name: watchTrailer,
                        color: AppColors.white,
                        onpressed: () {},
                      ),
                    ),
                    InfoButtonWidget(
                      appTextTheme: appTextTheme,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

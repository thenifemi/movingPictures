import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_colors.dart';
import '../../core/component_widgets/primary_button_widget.dart';
import '../../core/constants/constants.dart';

class TmdbBlock extends StatelessWidget {
  const TmdbBlock({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "This project uses the TMDB API but is NOT endorsed or certified by TMDB.",
            style: appTextTheme.headline6,
            textAlign: TextAlign.center,
          ),
          Image.asset(tmdbLogo),
          PrimaryButton(
            appTextTheme: appTextTheme,
            name: "Go to TMDB",
            color: AppColors.white.withOpacity(0.5),
            onpressed: () {},
            isFullButton: false,
          ),
        ],
      ),
    );
  }
}

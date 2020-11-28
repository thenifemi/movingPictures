import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_colors.dart';
import '../../core/component_widgets/primary_button_widget.dart';
import '../../core/constants/constants.dart';

class GitHubBlock extends StatelessWidget {
  const GitHubBlock({
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
            "This project is Open-Source and is available on GitHub.",
            style: appTextTheme.headline6,
            textAlign: TextAlign.center,
          ),
          PrimaryButton(
            appTextTheme: appTextTheme,
            name: "See on GitHub",
            icon: SvgPicture.asset(
              githubIcon,
              color: AppColors.white,
            ),
            color: AppColors.white.withOpacity(0.5),
            onpressed: () {},
            isFullButton: false,
          ),
        ],
      ),
    );
  }
}

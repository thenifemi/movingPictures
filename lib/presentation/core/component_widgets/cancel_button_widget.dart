import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app_colors.dart';
import '../constants/constants.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => ExtendedNavigator.of(context).pop(),
      icon: Container(
        height: 32.0,
        width: 32.0,
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: SvgPicture.asset(
          cancelIcon,
          color: AppColors.white,
        ),
      ),
      color: AppColors.white.withOpacity(0.7),
    );
  }
}

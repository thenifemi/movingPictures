import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/constants/language_constants.dart';

class MoreLikeThisBlock extends StatelessWidget {
  const MoreLikeThisBlock({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.black,
          border: Border(
            top: BorderSide(width: 2.0, color: AppColors.gray),
          )),
      height: 600.0,
    );
  }
}

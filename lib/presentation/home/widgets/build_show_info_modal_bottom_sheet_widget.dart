import 'package:flutter/material.dart';
import 'package:movingPictures/presentation/core/app_colors.dart';

Future buildShowInfoModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: AppColors.gray,
    context: context,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height / 3.5,
    ),
  );
}

import 'package:flutter/material.dart';

import '../app_colors.dart';

class AgeRestrictionWidget extends StatelessWidget {
  final String age;
  const AgeRestrictionWidget({
    Key key,
    @required this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;
    return Container(
      height: 22.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0),
        border: Border.all(color: AppColors.red.withOpacity(0.9)),
        color: AppColors.red.withOpacity(0.9),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text(
          age,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            fontFamily: appTextTheme.bodyText1.fontFamily,
            color: AppColors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class People extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Friends",
        style: TextStyle(
          fontSize: 50.0,
          color: AppColors.white,
        ),
      ),
    );
  }
}

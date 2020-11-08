import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Favorites",
        style: TextStyle(
          fontSize: 50.0,
          color: AppColors.white,
        ),
      ),
    );
  }
}

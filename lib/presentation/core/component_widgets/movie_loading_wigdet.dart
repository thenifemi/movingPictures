import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../app_colors.dart';

class MovieLoadingWidget extends StatelessWidget {
  const MovieLoadingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.gray.withOpacity(0.2),
      highlightColor: AppColors.gray.withOpacity(0.5),
      period: const Duration(seconds: 3),
      child: Container(
        height: MediaQuery.of(context).size.height / 5.5,
        color: AppColors.gray,
      ),
    );
  }
}

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
      highlightColor: AppColors.white.withOpacity(0.5),
      child: Container(
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColors.gray,
        ),
        height: MediaQuery.of(context).size.height / 5,
      ),
    );
  }
}

class MovieErrorWidget extends StatelessWidget {
  const MovieErrorWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.gray,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: const Center(
        child: Icon(
          Icons.error_outline,
          color: AppColors.red,
        ),
      ),
    );
  }
}

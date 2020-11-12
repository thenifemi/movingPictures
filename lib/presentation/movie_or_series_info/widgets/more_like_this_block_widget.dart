import 'package:flutter/material.dart';
import 'package:movingPictures/presentation/core/constants/constants.dart';
import 'package:movingPictures/presentation/home/widgets/build_show_info_modal_bottom_sheet_widget.dart';

import '../../core/app_colors.dart';
import '../../core/constants/language_constants.dart';

class MoreLikeThisBlock extends StatelessWidget {
  const MoreLikeThisBlock({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;

    final appTextTheme = Theme.of(context).textTheme;

    return Container(
      height: MediaQuery.of(context).size.height / 1.1,
      decoration: const BoxDecoration(
        color: AppColors.black,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: const EdgeInsets.only(top: 10.0),
              decoration: const BoxDecoration(
                  border: Border(
                top: BorderSide(width: 5.0, color: AppColors.red),
              )),
              child: Text(
                morelikethis,
                style: TextStyle(
                    fontFamily: appTextTheme.headline5.fontFamily,
                    fontSize: 14.0,
                    fontWeight: appTextTheme.headline5.fontWeight,
                    color: appTextTheme.headline5.color),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              childAspectRatio: itemWidth / itemHeight,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: List.generate(
                9,
                (i) => GestureDetector(
                  onTap: () => buildShowInfoModalBottomSheet(
                    appTextTheme: appTextTheme,
                    context: context,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      theQueensGambitPoster,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

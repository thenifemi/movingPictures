import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/app_colors.dart';
import '../../core/constants.dart';
import '../../core/language_constants.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.white,
      selectedLabelStyle: const TextStyle(
        color: AppColors.white,
        fontSize: 11.0,
      ),
      unselectedItemColor: AppColors.gray,
      unselectedLabelStyle: const TextStyle(
        color: AppColors.gray,
        fontSize: 11.0,
      ),
      backgroundColor: AppColors.gray.withOpacity(0.3),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: SvgPicture.asset(
              homeIcon,
              color: AppColors.white,
            ),
          ),
          label: home,
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: SvgPicture.asset(searchIcon),
          ),
          label: search,
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: SvgPicture.asset(favoriteIcon),
          ),
          label: favorites,
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: SvgPicture.asset(friendsIcon),
          ),
          label: friends,
        ),
      ],
    );
  }
}

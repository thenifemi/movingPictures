import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/app_colors.dart';
import '../core/constants/constants.dart';
import '../core/constants/language_constants.dart';

class MainBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  const MainBottomNavigationBar({
    Key key,
    @required this.currentIndex,
  }) : super(key: key);

  @override
  _MainBottomNavigationBarState createState() =>
      // ignore: no_logic_in_create_state
      _MainBottomNavigationBarState(currentIndex: currentIndex);
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  int currentIndex;
  _MainBottomNavigationBarState({@required this.currentIndex});

  final List<Map<String, dynamic>> navbarItems = [
    {"icon": homeIcon, "label": home},
    {"icon": searchIcon, "label": search},
    {"icon": favoriteIcon, "label": favorites},
    {"icon": friendsIcon, "label": friends},
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: const TextStyle(
        color: AppColors.white,
        fontSize: 11.0,
      ),
      selectedItemColor: AppColors.white,
      unselectedItemColor: AppColors.gray,
      unselectedLabelStyle: const TextStyle(
        color: AppColors.gray,
        fontSize: 11.0,
      ),
      backgroundColor: AppColors.gray.withOpacity(0.3),
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTabTapped,
      items: navbarItems.map((item) {
        final bool isSelected = navbarItems.indexOf(item) == currentIndex;

        return BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: SvgPicture.asset(
              item["icon"].toString(),
              color: isSelected ? AppColors.white : AppColors.gray,
            ),
          ),
          label: item["label"].toString(),
        );
      }).toList(),
    );
  }
}

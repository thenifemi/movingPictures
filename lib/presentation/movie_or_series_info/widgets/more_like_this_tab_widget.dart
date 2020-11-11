import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/constants/language_constants.dart';

class MoreLikeThisTab extends StatelessWidget {
  const MoreLikeThisTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: SliverPersistentHeader(
        delegate: _SliverAppBarDelegate(
          TabBar(
            indicatorWeight: 0.01,
            indicatorColor: Colors.transparent,
            tabs: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: AppColors.red,
                    width: 107.0,
                    height: 5.0,
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    morelikethis,
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        pinned: true,
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

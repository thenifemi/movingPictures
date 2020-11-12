import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

import '../../application/auth/user_profile/user_profile_bloc.dart';
import '../core/app_colors.dart';
import '../core/constants/constants.dart';
import '../core/constants/language_constants.dart';
import '../routes/router.gr.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;

  const MainAppBar({
    Key key,
    @required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return AppBar(
      backgroundColor: Colors.transparent,
      title: Image.asset(
        movingPicturesLogoRed,
        width: 100.0,
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            notificationIcon,
            width: 20.0,
            color: AppColors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: BlocBuilder<UserProfileBloc, UserProfileState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const CircleAvatar(
                  backgroundColor: AppColors.gray,
                ),
                loadingProgress: (_) => Shimmer.fromColors(
                  baseColor: AppColors.gray,
                  highlightColor: Colors.white60,
                  child: const CircleAvatar(),
                ),
                loadSuccess: (state) {
                  final user = state.appUser;
                  return GestureDetector(
                    onTap: () => ExtendedNavigator.of(context)
                        .pushProfileScreen(user: user),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.network(
                          user.photoURL,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                },
                loadFailure: (_) => const CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text("!!"),
                ),
              );
            },
          ),
        )
      ],
      bottom: TabBar(
        controller: tabController,
        indicatorColor: AppColors.red,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 3.0,
        labelColor: appTextTheme.bodyText1.color,
        unselectedLabelColor: AppColors.white.withOpacity(0.5),
        tabs: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(movies.toUpperCase()),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(series.toUpperCase()),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 90);
}

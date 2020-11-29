import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movingPictures/application/auth/user_profile/user_profile_bloc.dart';
import 'package:movingPictures/presentation/core/app_colors.dart';
import 'package:movingPictures/presentation/core/app_localizations.dart';
import 'package:movingPictures/presentation/core/constants/constants.dart';
import 'package:movingPictures/presentation/core/constants/language_constants.dart';
import 'package:shimmer/shimmer.dart';
import '../../routes/router.gr.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key key,
    @required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;
    final lang = AppLocalizations.of(context);

    return SliverAppBar(
      floating: true,
      snap: true,
      title: Row(
        children: [
          Image.asset(
            movingPicturesManLogoRed,
            height: 50.0,
          ),
          TabBar(
            isScrollable: true,
            controller: tabController,
            indicatorColor: AppColors.red,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3.0,
            labelColor: appTextTheme.bodyText1.color,
            unselectedLabelColor: AppColors.white.withOpacity(0.5),
            tabs: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(lang.translate(movies).toUpperCase()),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(lang.translate(series).toUpperCase()),
              ),
            ],
          ),
        ],
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
    );
  }
}

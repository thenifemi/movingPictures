import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../application/auth/user_profile/user_profile_bloc.dart';
import '../../core/app_colors.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        const Icon(Icons.notification_important_rounded, size: 25.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
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

                  return CircleAvatar(
                    backgroundColor: AppColors.gray,
                    backgroundImage: NetworkImage(
                      user.photoURL,
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

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}

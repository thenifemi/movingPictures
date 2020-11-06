import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/auth/user_profile/user_profile_bloc.dart';
import '../../injection.dart';
import '../core/app_colors.dart';
import '../routes/router.gr.dart';
import 'main_app_bar_widget.dart';
import 'main_bottom_navigation_bar_widget.dart';

class MainLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<UserProfileBloc>()
            ..add(const UserProfileEvent.watchProfileStarted()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unAuthenticated: (_) =>
                    ExtendedNavigator.of(context).replace(Routes.signInScreen),
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: const MainAppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Authenticated',
                  style: TextStyle(fontSize: 50.0, color: Colors.white),
                ),
                const SizedBox(height: 40.0),
                SignOutButton(appTextTheme: appTextTheme),
              ],
            ),
          ),
          bottomNavigationBar: const MainBottomNavigationBar(),
        ),
      ),
    );
  }
}

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: RaisedButton(
        padding: const EdgeInsets.all(8.0),
        onPressed: () {
          context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
        },
        color: AppColors.red,
        child: Text(
          "Sign out",
          style: TextStyle(
            fontFamily: appTextTheme.button.fontFamily,
            color: appTextTheme.button.color,
            fontWeight: appTextTheme.button.fontWeight,
            fontSize: appTextTheme.button.fontSize,
          ),
        ),
      ),
    );
  }
}
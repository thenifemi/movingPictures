import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/sign_in/sign_in_bloc.dart';
import '../../core/app_colors.dart';
import '../../core/app_localizations.dart';
import '../../core/component_widgets/flushbar_method.dart';
import '../../core/component_widgets/primary_button_widget.dart';
import '../../core/component_widgets/saving_in_progress_widget.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/language_constants.dart';
import '../../routes/router.gr.dart';

class SignInScaffoldWidget extends StatelessWidget {
  const SignInScaffoldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => showFlushbar(
              context: context,
              message: failure.map(
                cancelledByUser: (_) => lang.translate(cancelled),
                serverError: (_) => lang.translate(oopsServerError),
                unexpected: (_) => lang.translate(unexpectedError),
              ),
            ),
            (_) {
              ExtendedNavigator.of(context).replace(Routes.mainBodyLayout);
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      buildWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting,
      builder: (context, state) {
        return Stack(
          children: [
            Column(
              children: [
                const TopRedBar(),
                Expanded(
                  child: Stack(
                    children: [
                      const BackgroundImage(),
                      DarkOverlayWidget(state: state),
                    ],
                  ),
                ),
              ],
            ),
            SavingInProgressOverlay(isSaving: state.isSubmitting),
          ],
        );
      },
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Image.asset(
        signInScreenBackgroundImage,
        fit: BoxFit.fill,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}

class DarkOverlayWidget extends StatelessWidget {
  final SignInState state;
  const DarkOverlayWidget({
    Key key,
    @required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;
    final lang = AppLocalizations.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.8),
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              child: Image.asset(
                movingPicturesLogoRed,
                width: 200.0,
              ),
            ),
            const SizedBox(height: 30.0),
            Text(
              lang.translate(signInWelcomeMessage),
              style: TextStyle(
                fontFamily: appTextTheme.headline5.fontFamily,
                color: appTextTheme.headline5.color,
                fontWeight: FontWeight.w700,
                fontSize: 40.0,
              ),
              // textAlign: TextAlign.end,
            ),
            const SizedBox(height: 20.0),
            PrimaryButton(
              state: state,
              appTextTheme: appTextTheme,
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: AppColors.white,
                ),
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(
                  googleIcon,
                  width: 20.0,
                  height: 20.0,
                ),
              ),
              name: lang.translate(signInButton),
              color: AppColors.red,
              isFullButton: false,
              onpressed: () {
                if (state.isSubmitting) {
                  //Do nothing when state is submiting
                } else {
                  context
                      .read<SignInBloc>()
                      .add(const SignInEvent.signInwithGooglePressed());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TopRedBar extends StatelessWidget {
  const TopRedBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColors.red,
          height: 150.0,
        ),
        Container(
          color: Colors.black.withOpacity(0.3),
          height: 150.0,
        ),
      ],
    );
  }
}

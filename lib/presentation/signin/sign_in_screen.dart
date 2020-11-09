import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/sign_in/sign_in_bloc.dart';
import '../../injection.dart';
import 'widgets/sign_in_scaffold_widget.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SignInBloc>(),
          ),
        ],
        child: const SignInScaffoldWidget(),
      ),
    );
  }
}

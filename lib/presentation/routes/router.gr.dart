// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../signin/sign_in_screen.dart';

class Routes {
  static const String signInScreen = '/';
  static const all = <String>{
    signInScreen,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.signInScreen, page: SignInScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SignInScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignInScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSignInScreen() => push<dynamic>(Routes.signInScreen);
}

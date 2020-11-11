import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movingPictures/presentation/core/constants/constants.dart';

import '../../../domain/auth/app_user.dart';
import '../../core/app_colors.dart';
import '../../core/constants/language_constants.dart';

class ProfileInfoBlock extends StatelessWidget {
  const ProfileInfoBlock({
    Key key,
    @required this.user,
    @required this.appTextTheme,
  }) : super(key: key);

  final AppUser user;
  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            height: 60.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.network(
                user.photoURL,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: appTextTheme.bodyText1,
              ),
              Text(
                user.email,
                style: appTextTheme.headline6,
              ),
              const SizedBox(height: 8.0),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: AppColors.gray,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      signedInWithGoogle,
                      style: appTextTheme.subtitle2,
                    ),
                    SizedBox(
                      height: 18.0,
                      child: SvgPicture.asset(
                        shieldIcon,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

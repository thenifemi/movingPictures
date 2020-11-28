import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_colors.dart';
import '../../core/component_widgets/primary_button_widget.dart';
import '../../core/constants/constants.dart';

class GitHubBlock extends StatelessWidget {
  const GitHubBlock({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "This project is Open-Source and available on GitHub.",
            style: appTextTheme.headline6,
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                githubIcon,
                color: Colors.blue,
              ),
              const SizedBox(width: 5.0),
              const Text(
                "See on GitHub",
                style: TextStyle(color: Colors.blue),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.blue,
                size: 14.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}

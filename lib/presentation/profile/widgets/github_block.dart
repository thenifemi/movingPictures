import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/app_localizations.dart';
import '../../core/component_widgets/flushbar_method.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/language_constants.dart';

class GitHubBlock extends StatelessWidget {
  const GitHubBlock({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    // ignore: avoid_void_async
    void _launchURL() async {
      const url = githubLink;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        showFlushbar(
            context: context, message: lang.translate(unexpectedError));
      }
    }

    return Center(
      child: Column(
        children: [
          Text(
            lang.translate(availableOnGithub),
            style: appTextTheme.headline6,
            textAlign: TextAlign.center,
          ),
          GestureDetector(
            onTap: _launchURL,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  githubIcon,
                  color: Colors.blue,
                ),
                const SizedBox(width: 5.0),
                Text(
                  lang.translate(seeOnGithub),
                  style: const TextStyle(color: Colors.blue),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                  size: 14.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final state;
  final TextTheme appTextTheme;
  final String name;
  final Color color;
  final Function onpressed;
  final bool isFullButton;
  final Widget icon;
  const PrimaryButton({
    Key key,
    this.state,
    @required this.appTextTheme,
    @required this.name,
    @required this.color,
    @required this.onpressed,
    @required this.isFullButton,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isFullButton
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width / 1.9,
      child: RaisedButton(
        padding: const EdgeInsets.all(8.0),
        onPressed: () => onpressed(),
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Row(children: [icon, const SizedBox(width: 5.0)])
            else
              Container(),
            Text(
              name,
              style: TextStyle(
                fontSize: appTextTheme.button.fontSize,
                fontWeight: appTextTheme.button.fontWeight,
                color: color != AppColors.white
                    ? AppColors.white
                    : AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

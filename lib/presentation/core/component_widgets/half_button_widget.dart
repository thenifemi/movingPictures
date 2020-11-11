import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../constants/constants.dart';
import '../constants/language_constants.dart';

class PrimaryButton extends StatelessWidget {
  final state;
  final TextTheme appTextTheme;
  final String name;
  final Color color;
  final Function onpressed;
  final bool isFullButton;

  const PrimaryButton({
    Key key,
    @required this.appTextTheme,
    @required this.name,
    @required this.color,
    @required this.onpressed,
    this.state,
    this.isFullButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isFullButton
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width / 2,
      child: RaisedButton(
        padding: const EdgeInsets.all(8.0),
        onPressed: () => onpressed(),
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (name == signInButton)
              Row(
                children: [
                  Container(
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
                  const SizedBox(width: 10.0),
                ],
              )
            else
              Container(),
            Text(
              name,
              style: TextStyle(
                fontSize: appTextTheme.button.fontSize,
                fontWeight: appTextTheme.button.fontWeight,
                color:
                    color == AppColors.red ? AppColors.white : AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

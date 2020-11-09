import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class HalfButton extends StatelessWidget {
  final TextTheme appTextTheme;
  final String name;
  final Color color;
  final Function onpressed;

  const HalfButton({
    Key key,
    @required this.appTextTheme,
    @required this.name,
    @required this.color,
    @required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: RaisedButton(
        padding: const EdgeInsets.all(8.0),
        onPressed: () => onpressed(),
        color: color,
        child: Text(
          name,
          style: TextStyle(
            fontSize: appTextTheme.button.fontSize,
            fontWeight: appTextTheme.button.fontWeight,
            color: color == AppColors.red ? AppColors.white : AppColors.black,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/app_colors.dart';
import '../core/constants/constants.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 50.0,
          width: MediaQuery.of(context).size.width,
          child: TextFormField(
            cursorColor: AppColors.white,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            style: const TextStyle(color: AppColors.white, fontSize: 18.0),
            decoration: InputDecoration(
              prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(searchIcon, color: Colors.grey)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 25.0),
              labelText: 'Search for a movie, series or genre',
              labelStyle: const TextStyle(color: Colors.grey, fontSize: 14.0),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              fillColor: AppColors.gray,
              filled: true,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

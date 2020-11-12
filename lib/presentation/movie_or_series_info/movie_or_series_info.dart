import 'dart:ui';

import 'package:flutter/material.dart';

import '../core/component_widgets/cancel_button_widget.dart';
import '../core/constants/constants.dart';
import 'widgets/items_widget.dart';
import 'widgets/more_like_this_block_widget.dart';

class MovieOrSeriesInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;
    final heightSize = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: heightSize * 0.03),
            //* Top Container: Holds Movie/Series information
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(theQueensGambitPoster),
                        fit: BoxFit.cover,
                      ),
                      gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Items(
                        appTextTheme: appTextTheme,
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: CancelButton(),
                ),
              ],
            ),
            //* Bottom Container: Holds [MORE LIKE THIS]
            const MoreLikeThisBlock(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BannerBlockWidget extends StatelessWidget {
  const BannerBlockWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: const Placeholder(),
    );
  }
}

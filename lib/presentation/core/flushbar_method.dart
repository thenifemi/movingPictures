import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

Future<dynamic> showFlushbar({
  @required BuildContext context,
  @required String message,
}) {
  return Flushbar(
    message: message,
    flushbarStyle: FlushbarStyle.FLOATING,
    duration: const Duration(seconds: 3),
    margin: const EdgeInsets.all(15),
    borderRadius: 8,
  ).show(context);
}

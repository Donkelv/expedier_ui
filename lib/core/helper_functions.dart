import 'package:flutter/material.dart';

Future navigateWithFade(
  BuildContext context,
  Widget page, {
  int durationMillis = 400,
}) async {
  return await Navigator.of(context).push(
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: Duration(milliseconds: durationMillis),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    ),
  );
}

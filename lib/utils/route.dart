import 'package:flutter/material.dart';

routePush({
  required int duration,
  required BuildContext context,
  required Widget page,
}) {
  Future.delayed(
    Duration(seconds: duration),
    () => {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      )
    },
  );
}

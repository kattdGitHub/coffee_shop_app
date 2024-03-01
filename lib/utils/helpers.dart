import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void pushTo(BuildContext context, Widget widget) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ));
}

void back(BuildContext context) {
  Navigator.pop(context);
}

void pushReplacement(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ));
}

Widget wSize(double v) {
  return SizedBox(
    width: v,
  );
}

Widget hSize(double v) {
  return SizedBox(
    height: v,
  );
}

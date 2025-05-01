import 'package:flutter/material.dart';

Widget myLodaing([double? size]) {
  return SizedBox(
    height: size ?? 30,
    width: size ?? 30,
    child: CircularProgressIndicator(
      strokeWidth: 3,
      color: Colors.white..withAlpha(77),
    ),
  );
}

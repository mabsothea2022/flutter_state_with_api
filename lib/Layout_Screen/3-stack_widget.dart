import 'package:app_co3es1/Layout_Screen/sample_List.dart';
import 'package:flutter/material.dart';

Widget buildStack() {
  return Stack(
    alignment: Alignment.center,
    children: [
      ...containerList(),
    ],
  );
}

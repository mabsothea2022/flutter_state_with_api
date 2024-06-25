import 'package:app_co3es1/Layout_Screen/sample_List.dart';
import 'package:flutter/material.dart';

/*
  * Culomn widget
  */
// Widget buildColumn() {
//   // _  : meaning is private
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: containerList(),
//   );
// }

Widget buildColumn() {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    physics: BouncingScrollPhysics(),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ...containerList(),
        ...containerList(),
        ...containerList(),
      ],
    ),
  );
}

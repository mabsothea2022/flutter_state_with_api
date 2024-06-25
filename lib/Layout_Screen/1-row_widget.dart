import 'package:app_co3es1/Layout_Screen/sample_List.dart';
import 'package:flutter/material.dart';

/*
 *  Row widget
*/
Widget buildRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: containerList(),
  );
}

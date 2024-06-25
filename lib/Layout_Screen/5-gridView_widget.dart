import 'package:app_co3es1/Layout_Screen/sample_List.dart';
import 'package:flutter/material.dart';

Widget buildGridView() {
  return GridView.count(
    crossAxisCount: 3,
    childAspectRatio: 3 / 10,
    physics: BouncingScrollPhysics(),
    children: [
      ...containerList(),
      ...containerList1(),
      ...containerList2(),
    ],
  );
}

Widget buildGridViewExtent() {
  return GridView.extent(
    maxCrossAxisExtent: 100,
    childAspectRatio: 3 / 4,
    physics: BouncingScrollPhysics(),
    children: [
      ...containerList(),
      ...containerList1(),
      ...containerList2(),
    ],
  );
}

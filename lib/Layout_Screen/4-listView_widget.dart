import 'package:app_co3es1/Layout_Screen/sample_List.dart';
import 'package:flutter/material.dart';

/*
 * ListView with default vertical 
*/
// Widget buildListView() {
//   return ListView(
//     physics: BouncingScrollPhysics(),
//     children: [
//       ...containerList(),
//       ...containerList(),
//       ...containerList(),
//     ],
//   );
// }

/*
 * ListView with  horizontal 
*/
Widget buildListViewHorizontal() {
  return Container(
    height: 500,
    child: ListView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      children: [
        ...containerList(),
        ...containerList(),
        ...containerList(),
      ],
    ),
  );
}

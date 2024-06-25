import 'package:app_co3es1/Layout_Screen/sample_List.dart';
import 'package:flutter/material.dart';

Widget buildPageView() {
  return PageView(
    scrollDirection: Axis.vertical,
    physics: BouncingScrollPhysics(),
    children: PageView1(),
  );
}

Widget buildPageViewSlideShow() {
  return Container(
    height: 600,
    child: PageView(
      physics: BouncingScrollPhysics(),
      children: PageView1(),
    ),
  );
}

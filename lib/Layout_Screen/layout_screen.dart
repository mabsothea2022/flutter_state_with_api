import 'package:app_co3es1/Layout_Screen/6-pageView_widget.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: buildPageViewSlideShow(),
      ),
    );
  }
}




/*
 * for pageview with auto_number 
*/
// import 'package:app_co3es1/Layout_Screen/6-pageView_widget.dart';
// import 'package:app_co3es1/Layout_Screen/sample_List.dart';
// import 'package:flutter/material.dart';

// class LayoutScreen extends StatefulWidget {
//   const LayoutScreen({super.key});

//   @override
//   _LayoutScreenState createState() => _LayoutScreenState();
// }

// class _LayoutScreenState extends State<LayoutScreen> {
//   PageController _pageController = PageController();
//   int _currentPage = 0;

//   @override
//   void initState() {
//     super.initState();
//     _pageController.addListener(() {
//       setState(() {
//         _currentPage = _pageController.page?.round() ?? 0;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: buildPageView(),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               'Page ${_currentPage + 1} of ${PageView1().length}',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.red,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

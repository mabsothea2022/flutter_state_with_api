// import 'package:app_co3es1/Layout_Screen/layout_screen.dart';
// import 'package:app_co3es1/assignment/2-ass_nu_layout/ass_layout_screen.dart';
// import 'package:app_co3es1/getData_API/screens/item_home_screen.dart';
// import 'package:app_co3es1/login_screen/login_withOut_SetState/login_screen.dart';
// import 'package:app_co3es1/login_screen/login_with_SetState/login_screen.dart';
// import 'package:app_co3es1/setState/withsetState/withsetState.dart';
// import 'package:flutter/material.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   /*
//    * GlobalKey allow dev use endDrawer when click some buttom
//   */
//   final _scaffoldKey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       body: _buildBody(),
//       bottomNavigationBar: _buildBottom(),
//       endDrawer: _buildEndDrawer(),
//     );
//   }

//   int _currentIndex = 0;
//   final int _menuIndex = 4;
//   final int _accountIndex = 5;
//   final int _settingIndex = 6;
//   final int _developerIndex = 7;
//   int _screenIndex = 0;

//   Widget _buildEndDrawer() {
//     return Drawer(
//       child: ListView(
//         children: [
//           DrawerHeader(child: Icon(Icons.face)),
//           ListTile(
//             leading: Icon(Icons.account_box),
//             title: Text("Account"),
//             onTap: () {
//               setState(() {
//                 _navIndex = _menuIndex;
//                 _screenIndex = _accountIndex;
//               });
//               Navigator.of(context).pop();
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.settings),
//             title: Text("Settings"),
//             onTap: () {
//               setState(() {
//                 _navIndex = _menuIndex;
//                 _screenIndex = _settingIndex;
//               });
//               Navigator.of(context).pop();
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.people),
//             title: Text("Developers"),
//             onTap: () {
//               setState(() {
//                 _navIndex = _menuIndex;
//                 _screenIndex = _developerIndex;
//               });
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   int _navIndex = 0;
//   Widget _buildBottom() {
//     return BottomNavigationBar(
//       backgroundColor: Colors.indigo,
//       onTap: (index){
//         setState(() {
//           if(index == _menuIndex){
//             _navIndex = _menuIndex;
//             _scaffoldKey.currentState!.openEndDrawer();
//           }
//           else{
//             _navIndex = index;
//             _screenIndex = index;
//           }
//         });
//       },
//       selectedItemColor: Colors.yellow,
//       unselectedItemColor: Colors.white54,
//       showSelectedLabels: true,
//       showUnselectedLabels: true,
//       currentIndex: _currentIndex,
//       type: BottomNavigationBarType.fixed,
//       items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//         BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
//         BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//         BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
//         BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
//       ],
//     );
//   }

//   /*
//    * link page in flutter can be use two way
//    *  - way 1 : use indexpage (has sample)
//    *  - way 2 : use pageview
//   */
//   Widget _buildBody() {
//     return IndexedStack(
//       index: _currentIndex,
//       children: [
//         LoginScreen(),
//         LoginWithOutsetState(),
//         LayoutScreen(),
//         SampleWithsetState(),
//         Ass_LayoutScreen(),
//         Container(color: Colors.red),
//         Container(color: Colors.blue),
//         Container(color: Colors.green),
//         // Container(color: Colors.yellow),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _buildBody(),
      bottomNavigationBar: _buildBottom(),
      endDrawer: _buildDrawer(),
    );
  }

  final int _menuIndex = 3;
  final int _accountIndex = 4;
  final int _settingIndex = 5;
  final int _developerIndex = 6;
  int _screenIndex = 0;

  Widget _buildDrawer(){
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Icon(Icons.face)),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Account"),
            onTap: (){
              setState(() {
                _navIndex = _menuIndex;
                _screenIndex = _accountIndex;
              });
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: (){
              setState(() {
                _navIndex = _menuIndex;
                _screenIndex = _settingIndex;
              });
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Developers"),
            onTap: (){
              setState(() {
                _navIndex = _menuIndex;
                _screenIndex = _developerIndex;
              });
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  

  Widget _buildBody() {
    return IndexedStack(
      index: _screenIndex,
      children: [
        Container(color: Colors.pink),
        Container(color: Colors.indigo),
        Container(color: Colors.orange),
        SizedBox(),
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.yellow),
      ],
    );
  }

  int _navIndex = 0;

  Widget _buildBottom() {
    return BottomNavigationBar(
      backgroundColor: Colors.indigo,
      onTap: (index){
        setState(() {
          if(index == _menuIndex){
            _navIndex = _menuIndex;
            _scaffoldKey.currentState!.openEndDrawer();
          }
          else{
            _navIndex = index;
            _screenIndex = index;
          }
        });
      },
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Colors.white54,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: _navIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
      ],
    );
  }

}

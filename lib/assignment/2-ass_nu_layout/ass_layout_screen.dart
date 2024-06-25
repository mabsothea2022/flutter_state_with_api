import 'package:flutter/material.dart';

class Ass_LayoutScreen extends StatefulWidget {
  const Ass_LayoutScreen({super.key});

  @override
  State<Ass_LayoutScreen> createState() => _Ass_LayoutScreenState();
}

class _Ass_LayoutScreenState extends State<Ass_LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildScreenLayout(),
      ),
    );
  }

  Widget _buildScreenLayout() {
    return Container(
      child: _buildPage(),
    );
  }

  Widget _buildPage() {
    return PageView(
      children: _containerList(),
    );
  }

  List<Widget> _containerList() {
    return [
      Container(width: 100, height: 200, color: Colors.red),
      Container(width: 100, height: 200, color: Colors.yellow),
      Container(width: 100, height: 200, color: Colors.white),
      Image.asset("images/images (1).jpg", fit: BoxFit.contain),
      Image.asset("images/images (2).jpg", fit: BoxFit.cover),
      Image.asset("images/images (3).jpg", fit: BoxFit.fill),
      //     "https://i.pinimg.com/564x/e6/9a/ae/e69aae2d3f024758225b4e69d5587d0a.jpg"),
      // Image.network(
      //     "https://i.pinimg.com/564x/67/91/7b/67917b989827be01bebdf67a777196f7.jpg"),
      // Image.network(
      //     "https://i.pinimg.com/564x/d8/d6/f6/d8d6f66fde3359f333c17851bfff4184.jpg"),
      // Image.network(
      //     "https://i.pinimg.com/564x/82/88/0c/82880cafe5f48ab9a15d6fda6b97d9f2.jpg"),
    ];
  }
}

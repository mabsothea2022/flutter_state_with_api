import 'package:app_co3es1/Navigator_Link_Page/detail_screen.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Sample"),
      ),
      body: _buildBody(),
    );
  }

  List<String> images = [
    "https://upload.wikimedia.org/wikipedia/en/a/a8/The_Woman_in_the_House_Across_the_Street_from_the_Girl_in_the_Window.png",
    "https://upload.wikimedia.org/wikipedia/en/f/ff/The_Batman_%28film%29_poster.jpg",
    "https://terrigen-cdn-dev.marvel.com/content/prod/1x/spider-mannowayhome_lob_crd_03.jpg",
    "https://static.wikia.nocookie.net/marvelcinematicuniverse/images/b/be/Doctor_Strange_Poster_2.jpg/revision/latest/top-crop/width/360/height/360?cb=20220213234429",
    "https://pics.filmaffinity.com/Venom-824559573-large.jpg",
    "https://media.titanbooks.com/catalog/products/Morbius.jpg",
  ];

  Widget _buildBody() {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return _buildItem(images[index]);
      },
    );
  }

  Widget _buildItem(String item) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ComplexScreen(item),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Image.network(
          item,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

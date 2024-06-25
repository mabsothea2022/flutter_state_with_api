import 'package:flutter/material.dart';

class NetflixScreen extends StatelessWidget {
  // const NetflixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Netflix Screen Layout'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return _buildGridView();
  }

  Widget _buildGridView() {
    return GridView.builder(
      padding: EdgeInsets.all(5),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2 / 3,
        mainAxisSpacing: 5,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return _buildGridView();
      },
    );
  }

  Widget _buildGridViewItem(String img) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildHorizontalListViewItem(String img) {
    return Container(
      width: 120,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildBigList() {
    return ListView(
      children: [
        _buildListViewHorizontal(),
        _buildListViewHorizontal(),
        _buildListViewHorizontal(),
        _buildListViewHorizontal(),
        _buildListViewHorizontal(),
      ],
    );
  }

  Widget _buildListViewHorizontal() {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          debugPrint(images[index]);
          return _buildHorizontalListViewItem(images[index]);
        },
      ),
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
}

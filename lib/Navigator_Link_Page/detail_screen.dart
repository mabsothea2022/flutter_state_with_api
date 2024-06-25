import 'package:flutter/material.dart';

class ComplexScreen extends StatefulWidget {
  const ComplexScreen(String item, {super.key});

  @override
  State<ComplexScreen> createState() => _ComplexScreenState();
}

class _ComplexScreenState extends State<ComplexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Complex Screen"),
        backgroundColor: Colors.grey[900],
      ),
      body: _buildFBLayout(),
    );
  }

  Widget _buildFBLayout() {
    return RefreshIndicator(
      color: Colors.pink,
      onRefresh: () async {
        //code later
      },
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          _buildStoryListView(),
          _buildPostListView(),
          _buildStoryListView(),
          _buildPostListView(),
        ],
      ),
    );
  }

  Widget _buildStoryListView() {
    return Container(
      height: 250,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(images[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPostListView() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Container(
          height: 250,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(images[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }

  Widget _buildBody() {
    return _buildBigList();
  }

  Widget _buildBigList() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "New on Nextflix",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        _buildListViewHorizontal(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Best Action Movies Of All Time",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        _buildListViewHorizontal(),
        _buildListViewHorizontal(),
        _buildListViewHorizontal(),
      ],
    );
  }

  Widget _buildListViewHorizontal() {
    return Container(
      height: 250,
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

  Widget _buildHorizontalListViewItem(String img) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      padding: EdgeInsets.all(5),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return _buildGridViewItem(images[index]);
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

  Widget _buildListView() {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        debugPrint(images[index]);
        return _buildListViewItem(images[index]);
      },
    );
  }

  Widget _buildListViewItem(String img) {
    return Container(
      height: 250,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.cover,
        ),
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

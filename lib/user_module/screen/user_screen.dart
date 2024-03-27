import 'package:app_co3es1/user_module/model/user_model.dart';
import 'package:app_co3es1/user_module/services/user_service.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  late Future<RadomUserModel> _radomUserModel = UserService.getAPI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Screen"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildErrorRefresh() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Something went wrong!!!"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _radomUserModel = UserService.getAPI();
                });
              },
              child: Text("Refresh!"))
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: FutureBuilder<RadomUserModel>(
        // future: UserService.getAPI(),
        future: _radomUserModel,
        builder: (context, snapshot) {
          // if it has error or internet is disconnect it will show error
          if (snapshot.hasError) {
            return _buildErrorRefresh();
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return _buildGridView(snapshot.data);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Widget _buildGridView(RadomUserModel? data) {
    if (data == null) {
      return SizedBox();
    }
    return RefreshIndicator(
      displacement: 250,
      backgroundColor: const Color.fromARGB(255, 56, 56, 54),
      color: Colors.white,
      strokeWidth: 3,
      triggerMode: RefreshIndicatorTriggerMode.onEdge,
      onRefresh: () async {
        // Use state in async for reload data from API UserService
        setState(() {
          _radomUserModel = UserService.getAPI();
        });
      },
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2 / 3,
        ),
        itemCount: data.results.length,
        itemBuilder: (context, index) {
          return _buildItem(data.results[index]);
        },
      ),
    );
  }

  Widget _buildItem(Result item) {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => MovieDetailPage(item),
        //   ),
        // );
      },
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child: Image.network(item.picture.large, fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Text(
              "${item.name.first} ${item.name.last}",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

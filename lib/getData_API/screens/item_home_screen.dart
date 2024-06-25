import 'package:app_co3es1/getData_API/models/item_models.dart';
import 'package:app_co3es1/getData_API/services/item_service.dart';
import 'package:flutter/material.dart';

class ItemHomeScreen extends StatefulWidget {
  const ItemHomeScreen({super.key});

  @override
  State<ItemHomeScreen> createState() => _ItemHomeScreenState();
}

class _ItemHomeScreenState extends State<ItemHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Screen'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: FutureBuilder<ItemModel>(
        future: ItemSevice.readAPI(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Errror ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return _buildOutput(snapshot.data);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Widget _buildOutput(ItemModel? model) {
    if (model == null) {
      return SizedBox();
    } else {
      return _buildListView(model.results);
    }
  }

  Widget _buildListView(List<Result> results) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return _buildItem(results[index]);
      },
    );
  }

  Widget _buildItem(Result item) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.title),
        subtitle: Text(item.description),
        trailing: Text('USD ${item.price}'),
      ),
    );
  }
}

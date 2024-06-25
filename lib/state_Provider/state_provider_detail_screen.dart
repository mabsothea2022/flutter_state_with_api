import 'package:app_co3es1/state_Provider/counter_login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StateDetailScreen extends StatefulWidget {
  const StateDetailScreen({super.key});

  @override
  State<StateDetailScreen> createState() => _StateDetailScreenState();
}

class _StateDetailScreenState extends State<StateDetailScreen> {
  @override
  Widget build(BuildContext context) {
    int counter = context.watch<CounterLogic>().counter;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("State Detail Screen"),
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter: $counter"),
            IconButton(
              onPressed: () {
                context.read<CounterLogic>().decrease();
              },
              icon: Icon(Icons.remove),
            ),
            IconButton(
              onPressed: () {
                context.read<CounterLogic>().increase();
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

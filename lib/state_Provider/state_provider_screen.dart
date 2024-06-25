import 'package:app_co3es1/state_Provider/counter_login.dart';
import 'package:app_co3es1/state_Provider/state_provider_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class StateScreen extends StatefulWidget {
  const StateScreen({super.key});

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  @override
  Widget build(BuildContext context) {
    int counter = context.watch<CounterLogic>().counter;

    return Scaffold(
      appBar: AppBar(
        title: Text("State Screen"),
        actions: [
          IconButton(
            onPressed: () {
              context.read<CounterLogic>().decrease();
              // setState(() {
              //   counter--;
              // });
            },
            icon: Icon(Icons.remove),
          ),
          IconButton(
            onPressed: () {
              context.read<CounterLogic>().increase();
              // setState(() {
              //   counter++;
              // });
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StateDetailScreen(),
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Text("Counter: $counter"),
      ),
    );
  }
}

import 'package:app_co3es1/state_Provider/counter_login.dart';
import 'package:app_co3es1/state_Provider/state_provider_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget stateAppWithState() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterLogic()),
    ],
    child: StateApp(),
  );
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateScreen(),
    );
  }
}

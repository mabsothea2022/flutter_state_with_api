import 'package:app_co3es1/user_module/screen/user_screen.dart';
import 'package:flutter/material.dart';

class UserApp extends StatelessWidget {
  const UserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserScreen(),
      theme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[900],
          ),
          textTheme: TextTheme(
            headlineLarge: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            bodyLarge: TextStyle(fontSize: 20),
          )),
    );
  }
}

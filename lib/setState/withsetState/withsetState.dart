import 'package:flutter/material.dart';

class SampleWithsetState extends StatefulWidget {
  @override
  State<SampleWithsetState> createState() => _SampleStateState();
}

class _SampleStateState extends State<SampleWithsetState> {
  // const SampleState({super.key});

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "counter = $counter",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
                debugPrint(counter.toString());
              },
              child: Text("Change Text"),
            ),
          ],
        ),
      ),
    );
  }
}

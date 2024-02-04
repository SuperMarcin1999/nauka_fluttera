// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // Variables
  var _counter = 0;

  // Methods
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // message
            Text("You pressed the button this many times:"),

            // counter value
            Text(
              "$_counter",
              style: TextStyle(
                fontSize: 40,
              ),
            ),

            // button
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Increment!"),
            )
          ],
        ),
      ),
    );
  }
}

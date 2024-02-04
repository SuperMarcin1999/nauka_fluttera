// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  final _textEditingController = TextEditingController();

  var _savedInput = "";

  btnPressed() {
    var input = _textEditingController.text;

    setState(() {
      _savedInput = input;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text
            Text(_savedInput),

            // textfield
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your name...",
              ),
            ),

            // button
            ElevatedButton(
              onPressed: btnPressed,
              child: Text(
                "Sumbit",
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nauka_fluttera/pages/counter_page.dart';
import 'package:nauka_fluttera/pages/home_page.dart';
import 'package:nauka_fluttera/pages/todo_page.dart';
import 'package:nauka_fluttera/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var _selectedPageIndex = 0;

  void _nagivateBottomBar(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  final _pages = [
    HomePage(),
    ToDoPage(),
    CounterPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st page")),
      body: _pages[_selectedPageIndex],
      drawer: Drawer(
        backgroundColor: Colors.lightBlue,
        child: Column(
          children: [
            // common to place a drawer header here
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),

            // home page list tile
            GestureDetector(
              onTap: () => {
                Navigator.popAndPushNamed(context, "homePage"),
              },
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("H O M E"),
              ),
            ),

            // setting page list tile
            GestureDetector(
              onTap: () => {
                Navigator.pushNamed(context, "settingsPage"),
              },
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("S E T T I N G S"),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPageIndex,
        onTap: _nagivateBottomBar,
        items: [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: "Todo",
          ),

          // counter
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: "Counter",
          ),

          // settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

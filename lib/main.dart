import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

var indexClicked = 0;

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [
    Center(
      child: Text(
        'Inbox',
      ),
    ),
    Center(
      child: Text(
        'Starred',
      ),
    ),
    Center(
      child: Text(
        'Sent',
      ),
    ),
    Center(
      child: Text(
        'Drafts',
      ),
    ),
    Center(
      child: Text(
        'Trash',
      ),
    ),
    Center(
      child: Text(
        'Spam',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Navigation Example',
        ),
      ),
      body: pages[indexClicked],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Image(
                image: AssetImage(
                  'assets/images/drawer.jpg',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_navigation_drawer_example/defaults/defaults.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: const Text(
          'Navigation Example',
        ),
      ),
      body: pages[indexClicked],
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/drawer.jpg',
                  ),
                ),
              ),
              padding: EdgeInsets.zero,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'assets/images/profile.jpg',
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Rambo',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.grey[300],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'john@rambo.com',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.grey[300],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        indexClicked = 0;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Defaults.drawerItemIcon[0],
                      size: 30,
                      color: indexClicked == 0
                          ? Defaults.drawerItemSelectedColor
                          : Defaults.drawerItemColor,
                    ),
                    title: Text(
                      Defaults.drawerItemText[0],
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: indexClicked == 0
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        indexClicked = 1;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Defaults.drawerItemIcon[1],
                      size: 30,
                      color: indexClicked == 1
                          ? Defaults.drawerItemSelectedColor
                          : Defaults.drawerItemColor,
                    ),
                    title: Text(
                      Defaults.drawerItemText[1],
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: indexClicked == 1
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        indexClicked = 2;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Defaults.drawerItemIcon[2],
                      size: 30,
                      color: indexClicked == 2
                          ? Defaults.drawerItemSelectedColor
                          : Defaults.drawerItemColor,
                    ),
                    title: Text(
                      Defaults.drawerItemText[2],
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: indexClicked == 2
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                  AppDrawerTile(
                    index: 0,
                    onTap: () {
                      setState(() {
                        indexClicked = 0;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  AppDrawerTile(
                      index: 1,
                      onTap: () {
                        setState(() {
                          indexClicked = 1;
                        });
                        Navigator.pop(context);
                      }),
                  AppDrawerTile(
                      index: 2,
                      onTap: () {
                        setState(() {
                          indexClicked = 2;
                        });
                        Navigator.pop(context);
                      }),
                  AppDrawerTile(
                      index: 3,
                      onTap: () {
                        setState(() {
                          indexClicked = 3;
                        });
                        Navigator.pop(context);
                      }),
                  AppDrawerTile(
                      index: 4,
                      onTap: () {
                        setState(() {
                          indexClicked = 4;
                        });
                        Navigator.pop(context);
                      }),
                  AppDrawerTile(
                      index: 5,
                      onTap: () {
                        setState(() {
                          indexClicked = 5;
                        });
                        Navigator.pop(context);
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppDrawerTile extends StatelessWidget {
  const AppDrawerTile({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        Defaults.drawerItemIcon[index],
        size: 30,
        color: indexClicked == index
            ? Defaults.drawerItemSelectedColor
            : Defaults.drawerItemColor,
      ),
      title: Text(
        Defaults.drawerItemText[index],
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: indexClicked == index
              ? Defaults.drawerItemSelectedColor
              : Defaults.drawerItemColor,
        ),
      ),
    );
  }
}

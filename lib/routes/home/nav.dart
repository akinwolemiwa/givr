import 'package:flutter/material.dart';
import 'package:givr/models/navbarmodel.dart';
import 'package:givr/routes/home/homepage.dart';
import 'package:givr/routes/home/notificationscreen.dart';
import 'package:givr/routes/home/profile.dart';
import 'package:provider/provider.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  final tabs = [
    const HomePage(),
    const NotifScreen(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    final nav = Provider.of<NavBarProvider>(context);
    return Scaffold(
      body: tabs[nav.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: nav.currentIndex,
        onTap: (index) {
          nav.currentIndex = index;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
    );
  }
}
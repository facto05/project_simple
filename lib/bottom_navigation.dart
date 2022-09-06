import 'package:flutter/material.dart';
import 'package:project_simple/home_screen.dart';
import 'package:project_simple/profile_screen.dart';
import 'package:project_simple/screen/movie_popular_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedNavBar = 0;
  final List _widgetOption = [
    const HomeState(),
    const MoviePopularState(),
    const ProfileState()
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: _widgetOption.elementAt(_selectedNavBar)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movie"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedItemColor: Colors.red,
        currentIndex: _selectedNavBar,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}

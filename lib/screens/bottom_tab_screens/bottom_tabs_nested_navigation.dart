import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomTabsNestedNavigation extends StatelessWidget {
  const BottomTabsNestedNavigation({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    void _goBranch(int index) {
      navigationShell.goBranch(index,
          initialLocation: index == navigationShell.currentIndex);
    }

    return Scaffold(
      body: SafeArea(child: navigationShell),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        selectedItemColor: Colors.blueGrey,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'Challenge'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Profile')
        ],
        onTap: _goBranch,
      ),
    );
  }
}

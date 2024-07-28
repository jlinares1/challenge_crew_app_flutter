import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:io';

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
      bottomNavigationBar: SizedBox(
        height: Platform.isIOS ? 85 : 55,
        child: BottomNavigationBar(
          currentIndex: navigationShell.currentIndex,
          selectedItemColor: Colors.blueGrey,
          elevation: 0,
          iconSize: 26,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Challenge'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Profile')
          ],
          onTap: _goBranch,
        ),
      ),
    );
  }
}

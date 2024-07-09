import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomTabsNestedNavigation extends StatefulWidget {
  const BottomTabsNestedNavigation({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<BottomTabsNestedNavigation> createState() =>
      _BottomTabsNestedNavigationState();
}

class _BottomTabsNestedNavigationState
    extends State<BottomTabsNestedNavigation> {
  @override
  Widget build(BuildContext context) {
    void _goBranch(int index) {
      widget.navigationShell.goBranch(index,
          initialLocation: index == widget.navigationShell.currentIndex);
    }

    return Scaffold(
      body: SafeArea(child: widget.navigationShell),
      bottomNavigationBar: NavigationBar(
        selectedIndex: widget.navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.calendar_month), label: 'Challenge'),
          NavigationDestination(
              icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabbed_bottom_nav/core/screens/login_container.dart';
import 'package:flutter_tabbed_bottom_nav/core/screens/onboarding_container.dart';
import 'package:flutter_tabbed_bottom_nav/core/screens/search_container.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppContainer(),
    );
  }
}

class AppContainer extends StatefulWidget {
  const AppContainer({super.key});

  @override
  State createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  static const List<Widget> _pages = <Widget>[
    OnboardingContainer(),
    LoginContainer(),
    SearchContainer(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _pages.elementAt(_selectedIndex), //New
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Onboarding',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Login',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Search',
            ),
          ],
        ),
      ),
    );
  }
}

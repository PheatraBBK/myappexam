import 'package:flutter/material.dart';

class NavigatorMenu extends StatefulWidget {
  const NavigatorMenu({super.key});

  @override
  State<NavigatorMenu> createState() => _NavigatorMenuState();
}

class _NavigatorMenuState extends State<NavigatorMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Ping'),
            accountEmail: Text('Ping168@github.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Icon(Icons.person_outline),
              ),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          )
        ],
      ),
    );
  }
}

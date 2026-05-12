import 'package:flutter/material.dart';

import '../features/user/data/remote/response/personal_response.dart';
import '../flavors.dart';

class SampleHomeScreen extends StatefulWidget {
  _SampleWidgetState createState() => _SampleWidgetState();
}

class _SampleWidgetState extends State<StatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget> [
    Icon(Icons.call, size: 200,),
    Icon(Icons.camera, size: 200),
    Icon(Icons.chat, size: 200)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      PersonalResponse(
        id: 1,
        fullName: "",
          firstName: "",
          email: "",
          lastName: "",
          avatar: "");
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {},
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'settings', child: Text('Settings')),
              const PopupMenuItem(value: 'about', child: Text('About')),
            ],
          ),
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera), label: 'Camera'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        ],
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.green,
      ),
    );
  }
}

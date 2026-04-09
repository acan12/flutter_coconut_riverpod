import 'package:flutter/material.dart';
import 'package:global_components_library/global_components_library.dart';

import '../flavors.dart';

class MyHomePage extends StatefulWidget {
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<StatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget> [
    Icon(Icons.call, size: 200,),
    Icon(Icons.camera, size: 200),
    Icon(Icons.chat, size: 200)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(F.title)),
      body: Center(
        child: CustomWidgetYoutap.loadCard()



      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.call), label: 'Call'),
          BottomNavigationBarItem(
              icon: new Icon(Icons.camera), label: 'Camera'),
          BottomNavigationBarItem(icon: new Icon(Icons.chat), label: 'Chat'),
        ],
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.green,
      ),
    );
  }



}

class CustomWidgetYoutap {
  
  static GCLButton loadButtons(BuildContext context) {
    return GCLButton(
      outlined: false,
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      onPressed: () {
        GCLBottomSheet.showModal<Widget>(
          context,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(24),
                child: GCLButton(
                  outlined: false,
                  onPressed: () {},
                  child: const Text("Button 1 Filled"),
                ),
              ),
              GCLButton(
                outlined: true,
                onPressed: () {},
                margin: const EdgeInsets.only(
                  right: 24,
                  left: 24,
                  bottom: 24,
                ),
                child: const Text("Button 2 outlined"),
              ),
            ],
          ),
        );
      },
      child: const Text("Button Bottom Sheet (Dismissible)"),
    );
    
  }

  static GCLMaterialCard loadCard() {
    return GCLMaterialCard(
      padding: EdgeInsets.symmetric(
        horizontal: 1.rem,
        vertical: 1.3.rem,
      ),
      gradient: LinearGradient(
        colors: [
          appTheme.primaryColor.k60,
          appTheme.primaryColor,
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.centerRight,
      ),
      border: GCLConstants.roundedBorder(SRadius.r_12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.qr_code_2,
            color: Colors.white,
          ),
          SizedBox(height: 1.rem),
          Text(
            "Show QR code for real-time payments",
            // style: appTheme.body2.colorWhite,
          ),
        ],
      ),
    );
  }
}

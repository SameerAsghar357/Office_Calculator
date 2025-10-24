import 'package:flutter/material.dart';

class MenubuttonScreen extends StatefulWidget {
  const MenubuttonScreen({super.key});

  @override
  State<MenubuttonScreen> createState() => _MenubuttonScreenState();
}

enum ItemsList { bbcNews, aryNews, nncNews, independent }

class _MenubuttonScreenState extends State<MenubuttonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Button Page', style: TextStyle(color: Colors.white)),
        actions: [
          PopupMenuButton(
            color: Colors.white,
            iconColor: Colors.white,
            onSelected: (value) {
              if (value == ItemsList.bbcNews) {
                debugPrint('bbcNews Selected');
              } else if (value == ItemsList.aryNews) {
                debugPrint('aryNews Selected');
              } else if (value == ItemsList.nncNews) {
                debugPrint('nncNews Selected');
              } else {
                debugPrint('independent Selected');
              }
            },
            itemBuilder: (context) => <PopupMenuEntry<ItemsList>>[
              PopupMenuItem(value: ItemsList.bbcNews, child: Text('Item 1')),
              PopupMenuItem(value: ItemsList.aryNews, child: Text('Item 2')),
              PopupMenuItem(value: ItemsList.nncNews, child: Text('Item 3')),
              PopupMenuItem(
                value: ItemsList.independent,
                child: Text('Item 4'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

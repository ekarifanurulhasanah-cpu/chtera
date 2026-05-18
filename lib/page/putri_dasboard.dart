import 'package:chtera/page/pempage.dart';
import 'package:chtera/page/propage.dart';
import 'package:chtera/page/putri_chattpage.dart';
import 'package:chtera/model/putri_menumodel.dart';
import 'package:flutter/material.dart';

class PutriDasboard extends StatefulWidget {
  const PutriDasboard({super.key});

  @override
  State<PutriDasboard> createState() => _MenuPageState();
}

class _MenuPageState extends State<PutriDasboard> {
  int selectedIndex = 0;
  Map<int, PutriMenumodel> menu = {
    0: PutriMenumodel(
      icon: Icons.chat_rounded,
      label: 'Chatt',
      color: Colors.black,
      page: PutriChattpage(),
    ),
    1: PutriMenumodel(
      icon: Icons.download_for_offline_outlined,
      label: 'Pembaruan',
      color: Colors.black,
      page: Pempage(),
    ),
    2: PutriMenumodel(
      icon: Icons.person,
      label: 'Profile',
      color: Colors.black,
      page: Propage(),
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.tealAccent,
        currentIndex: selectedIndex,
        elevation: 10,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: menu.entries
            .map(
              (c) => BottomNavigationBarItem(
                icon: Icon(c.value.icon),
                activeIcon: Icon(c.value.icon),
                label: c.value.label,
                backgroundColor: c.value.color,
              ),
            )
            .toList(),
      ),
      body: menu[selectedIndex]!.page,
    );
  }
}

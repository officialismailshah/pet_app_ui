import 'package:flutter/material.dart';
import 'package:pet_app/UI/drawer_menu.dart';

import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DrawerScreen(),
        HomeScreen(),
      ],
    );
  }
}

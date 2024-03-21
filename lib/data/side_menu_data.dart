import 'package:flutter/material.dart';
import 'package:responsive/models/side_menu_model.dart';

class SideMenuData {
  final sideMenu = <SideMenu>[
    SideMenu(icon: Icons.home, title: 'Dashboard'),
    SideMenu(icon: Icons.person, title: 'Profile'),
    SideMenu(icon: Icons.run_circle, title: 'Exersice'),
    SideMenu(icon: Icons.settings, title: 'Settings'),
    SideMenu(icon: Icons.history, title: 'History'),
    SideMenu(icon: Icons.logout, title: 'SignOut'),
  ];
}

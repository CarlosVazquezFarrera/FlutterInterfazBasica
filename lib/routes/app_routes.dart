import 'package:basico/models/models.dart';
import 'package:basico/routes/routers_screen.dart';
import 'package:basico/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static final _menuOptions = <MenuOptions>[
    MenuOptions(route: RoutersScreen.home, screen: const HomeScreen()),
  ];

  /// Create our routes and bindinthem to screens
  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final route in _menuOptions) {
      appRoutes.addAll({route.route: (BuildContext context) => route.screen});
    }
    return appRoutes;
  }
}

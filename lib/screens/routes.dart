import 'package:flutter/material.dart';
import 'package:sign_up_login_ui/screens/profile.dart';
import 'package:sign_up_login_ui/screens/reg.dart';

import 'login.dart';

Route<dynamic> routeGenerator(RouteSettings settings) {
  switch (settings.name) {
    case '/login':
      return MaterialPageRoute(builder: (_) => LoginScreen());
    case '/reg':
      return MaterialPageRoute(builder: (_) => RegScreen());
    case '/profile':
      return MaterialPageRoute(builder: (_) => ProfileScreen());
    default:
      return MaterialPageRoute(builder: (_) => LoginScreen());
  }
}

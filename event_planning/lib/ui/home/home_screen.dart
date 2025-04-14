import 'package:flutter/material.dart';

import 'tabs/profile/profile_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routHome = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileTab(),
    );
  }
}

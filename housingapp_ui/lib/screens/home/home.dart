import 'package:flutter/material.dart';

import './components/CustomAppBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}

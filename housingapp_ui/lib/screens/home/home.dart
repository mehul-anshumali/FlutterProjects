import 'package:flutter/material.dart';
import 'package:housingapp_ui/constants/constant.dart';

import './components/CustomAppBar.dart';
import 'components/catogaries.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: appPadding / 2,
        ),
        child: Column(
          children: [
            CustomAppBar(),
            CatogaryList(),
            HouseList(),
          ],
        ),
      ),
    );
  }
}

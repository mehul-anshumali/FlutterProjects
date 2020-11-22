import 'package:flutter/material.dart';

import '../widgets/customAppBar.dart';
import '../widgets/subsriptionTile.dart';

import './explore.dart';

class ChoosePlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFB98959),
        body: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomAppBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24),
                  child: Text(
                    "Choose a plan",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                ),
                SubscriptionContainer(
                  text: "Week subscription",
                  amount: "1.99",
                  imagePath: "assets/weekly.jpg",
                ),
                SubscriptionContainer(
                  text: "1 Month subscription",
                  amount: "4.39",
                  imagePath: "assets/monthly.jpg",
                ),
                SubscriptionContainer(
                  text: "3 Month subscription",
                  amount: "9.99",
                  imagePath: "assets/3monthly.jpg",
                ),
                SubscriptionContainer(
                  text: "6 Month subscription",
                  amount: "13",
                  imagePath: "assets/6monthly.jpg",
                ),
              ],
            ),
            Positioned(
              bottom: 48,
              left: 16,
              child: Text(
                "Last step to enjoy",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontFamily: 'Ubuntu',
                ),
              ),
            ),
            Positioned(
              bottom: -30,
              right: -30,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ExploreScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFDAD4CC).withOpacity(0.8),
                  ),
                  child: Align(
                    alignment: Alignment(-0.4, -0.4),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:housingapp_ui/constants/constant.dart';
import 'package:housingapp_ui/data/data.dart';

class CatogaryList extends StatefulWidget {
  @override
  _CatogaryListState createState() => _CatogaryListState();
}

class _CatogaryListState extends State<CatogaryList> {
  int selectedIndex = 0;
  Widget _buildCatogary(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(right: appPadding / 3),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: appPadding / 2),
          // width: size.width * 0.25,
          decoration: BoxDecoration(
            color: selectedIndex == index ? darkBlue : black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              categoryList[index],
              style: TextStyle(
                color: selectedIndex == index ? white : black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height * 0.05,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return _buildCatogary(context, index);
          },
        ),
      ),
    );
  }
}

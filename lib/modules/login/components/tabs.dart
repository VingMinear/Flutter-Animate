import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
    required this.press,
  }) : super(key: key);

  final ValueChanged<int> press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.12),
        borderRadius: BorderRadius.circular(14),
      ),
      padding: EdgeInsets.all(5),
      child: DefaultTabController(
        length: 2,
        child: TabBar(
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          indicatorColor: Colors.white,
          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          labelColor: Colors.black,
          dividerColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          unselectedLabelColor: Colors.white,
          onTap: press,
          tabs: [Tab(text: "Morning 🌅☀️"), Tab(text: "Night 🌑🌟")],
        ),
      ),
    );
  }
}

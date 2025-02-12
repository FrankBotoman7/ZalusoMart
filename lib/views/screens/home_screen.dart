import 'package:flutter/material.dart';

import 'package:zalusomart/views/screens/widgets/banner_widget.dart';
import 'package:zalusomart/views/screens/widgets/beauty_widget.dart';
import 'package:zalusomart/views/screens/widgets/category_text.dart';
import 'package:zalusomart/views/screens/widgets/customAppBar.dart';
import 'package:zalusomart/views/screens/widgets/men_shoes.dart';
import 'package:zalusomart/views/screens/widgets/reuseText_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 10,
          ),
          BannerWidget(),
          SizedBox(
            height: 10,
          ),
          CategoryText(),
          ResuseTextWidget(
            title: "Men's Shoes",
          ),
          MenShoes(),
          SizedBox(
            height: 10,
          ),
          ResuseTextWidget(
            title: 'Beauty',
          ),
          BeautyWidget(),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:fruit_shop_appdevdiva/widgets/bottom_navigation.dart';
import 'package:fruit_shop_appdevdiva/widgets/build_categories_cards.dart';
import 'package:fruit_shop_appdevdiva/widgets/build_fuit_cards.dart';
import 'package:fruit_shop_appdevdiva/widgets/mid_white_bg.dart';
import 'package:fruit_shop_appdevdiva/widgets/top_bg.dart';

import 'widgets/search.dart';

main() => runApp(MaterialApp(home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff73c45a),
          shape: CircleBorder(), splashColor: Colors.yellow,
          onPressed: () {},
          child: Icon(Icons.shopping_cart, color: Colors.white),
          //params
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomNavigation(),
        body: Stack(
          fit: StackFit.expand,
          children: [
            top_bg(),
            search(),
            mid_white_bg(),
            Center(
              child: buildFruitCards(),
            ),
            Positioned(
                bottom: MediaQuery.sizeOf(context).height * 0.06,
                child: Categories()),
          ],
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:challenge_20200411/modules/home/widgets/card_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/add_to_cart_button_widget.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/image_builder_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool firstSelected = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFEBF1F5),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Column(
          children: <Widget>[
            AppBarWidget(height: 70),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: height * .65,
                    width: width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              firstSelected = true;
                            });
                          },
                          child: ImageBuilderWidget(
                            isSelected: firstSelected,
                            height: height,
                            width: width,
                            asset: "images/front-jacket-nobg.png",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              firstSelected = false;
                            });
                          },
                          child: ImageBuilderWidget(
                            isSelected: !firstSelected,
                            height: height,
                            width: width,
                            asset: "images/back-jacket-nobg.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                  CardWidget(
                    width: width,
                    height: height,
                    sizeList: ["s", "m", "l", "xl", "2xl", "3xl"],
                  ),
                  AddToCartButtonWidget(width: width, height: height)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

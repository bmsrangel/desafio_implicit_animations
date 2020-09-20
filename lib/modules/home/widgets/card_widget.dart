import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'size_button_widget.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    Key key,
    @required this.width,
    @required this.height,
    @required this.sizeList,
  }) : super(key: key);

  final double width;
  final double height;
  final List<String> sizeList;

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
        width: widget.width,
        height: widget.height * .4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.center,
              width: widget.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widget.sizeList
                        .map<Widget>(
                          (sizeItem) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex =
                                    widget.sizeList.indexOf(sizeItem);
                              });
                            },
                            child: SizeButtonWidget(
                              width: widget.width,
                              sizeText: sizeItem,
                              itemIndex: widget.sizeList.indexOf(sizeItem),
                              selectedIndex: selectedIndex,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "MEN'S RUNNING JACKET",
                    style: GoogleFonts.bebasNeue(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "NIKE WINDRUNNER\nWILD RUN",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "\$120",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(.4)
                    ],
                    stops: [
                      .6,
                      1.0,
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

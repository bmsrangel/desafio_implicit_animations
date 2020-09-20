import 'package:flutter/material.dart';

class ImageBuilderWidget extends StatelessWidget {
  const ImageBuilderWidget({
    Key key,
    @required this.isSelected,
    @required this.height,
    @required this.width,
    @required this.asset,
  }) : super(key: key);

  final bool isSelected;
  final double height;
  final double width;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isSelected ? 1 : 0.5,
      duration: Duration(milliseconds: 500),
      child: AnimatedContainer(
        margin: EdgeInsets.only(top: 20),
        height: isSelected ? height * .64 : height * .35,
        width: width * .5,
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(asset),
            fit: BoxFit.fitHeight,
          ),
        ),
        duration: Duration(milliseconds: 500),
      ),
    );
  }
}

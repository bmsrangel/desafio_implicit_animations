import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeButtonWidget extends StatelessWidget {
  const SizeButtonWidget({
    Key key,
    @required this.width,
    @required this.sizeText,
    this.itemIndex,
    this.selectedIndex,
  }) : super(key: key);

  final double width;
  final String sizeText;
  final int itemIndex;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      alignment: Alignment.center,
      width: width * .14,
      height: width * .14,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: selectedIndex == itemIndex ? Colors.white : null,
      ),
      child: Text(
        sizeText.toUpperCase(),
        textAlign: TextAlign.center,
        style: GoogleFonts.bebasNeue(
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

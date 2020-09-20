import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCartButtonWidget extends StatelessWidget {
  const AddToCartButtonWidget({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final TextStyle cartButtonTextStyle =
        GoogleFonts.bebasNeue(color: Colors.white, letterSpacing: 1);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 30),
        width: width * .8,
        height: height * .11,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            Text(
              "ADD TO CART",
              style: cartButtonTextStyle.copyWith(
                  fontWeight: FontWeight.w500, fontSize: 18),
            ),
            Text(
              "\$120",
              style: cartButtonTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

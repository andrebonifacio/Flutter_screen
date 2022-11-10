import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          Spacer(),
          _buttonPreview(30, 80)
        ],
      ),
    );
  }
}

_buttonPreview(double _height, double _width) {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      minimumSize: Size(_width, _height),
      backgroundColor: kPrimaryColor,
      padding: EdgeInsets.all(5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));
  return TextButton(
    style: flatButtonStyle,
    onPressed: () {},
    child: Text(
      "More",
      style: TextStyle(color: Colors.white),
    ),
  );
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  margin: EdgeInsets.only(right: kDefaultPadding / 4),
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2))),
        ],
      ),
    );
  }
}

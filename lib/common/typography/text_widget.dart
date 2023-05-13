import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
    this.text, {
    Key? key,
    this.fontWeight = FontWeight.w400,
    this.color = Colors.black,
    this.centralize = false,
    this.size = 13,
    this.underlined = false,
  }) : super(key: key);
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final bool centralize;
  final double size;
  final bool underlined;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        decoration: underlined ? TextDecoration.underline : null,
      ),
      textAlign: centralize ? TextAlign.center : TextAlign.start,
    );
  }
}

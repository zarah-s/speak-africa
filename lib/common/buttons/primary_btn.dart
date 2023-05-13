import 'package:flutter/material.dart';
import 'package:speak_nigerian/common/typography/text_widget.dart';
import 'package:speak_nigerian/constants/constants.dart';

class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn(
    this.text, {
    this.icon,
    this.width = double.infinity,
    this.padding = const EdgeInsets.symmetric(vertical: 10),
    this.borderRadius = 20,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final IconData? icon;
  final String text;
  final double width;
  final EdgeInsets padding;
  final double borderRadius;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: width,
        padding: padding,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(),
                  TextWidget(
                    text,
                    size: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  // Spacer(),
                  Icon(
                    icon,
                    size: 20,
                    color: Colors.white,
                  ),
                  // SizedBox(
                  //   width: 2,
                  // )
                ],
              )
            : TextWidget(
                text,
                size: 16,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
      ),
    );
  }
}

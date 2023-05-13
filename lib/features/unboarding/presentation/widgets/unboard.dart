import 'package:flutter/material.dart';
import 'package:speak_nigerian/common/typography/text_widget.dart';

class Unboard extends StatelessWidget {
  const Unboard({
    Key? key,
    this.content,
    this.title,
    this.imageName,
  }) : super(key: key);
  final String? imageName;
  final String? title;
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(height: 40),
        Image.asset(
          imageName!,
          // width: Get.width - 30,
          // height: Get.width - 30,
        ),
        const SizedBox(
          height: 30,
        ),
        TextWidget(
          title!,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF00173D),
          size: 32,
          centralize: true,
        ),
        const SizedBox(
          height: 15,
        ),
        TextWidget(
          content!,
          centralize: true,
          color: const Color(0xFF969191),
          size: 14,
        )
      ],
    );
  }
}

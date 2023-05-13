import 'package:flutter/material.dart';
import 'package:speak_nigerian/common/typography/text_widget.dart';
import 'package:speak_nigerian/constants/constants.dart';

class AuthActivity extends StatelessWidget {
  const AuthActivity(
      {Key? key, required this.activeIndex, required this.onChangePage})
      : super(key: key);
  final int activeIndex;
  final Function(int) onChangePage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            onChangePage(0);
          },
          child: Column(
            children: [
              const TextWidget(
                'Sign In',
                fontWeight: FontWeight.w600,
                size: 32,
              ),
              const SizedBox(
                height: 2,
              ),
              if (activeIndex == 0) const ActiveStyle()
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            onChangePage(1);
          },
          child: Column(
            children: [
              const TextWidget(
                'Sign Up',
                fontWeight: FontWeight.w600,
                size: 32,
              ),
              const SizedBox(
                height: 2,
              ),
              if (activeIndex == 1) const ActiveStyle()
            ],
          ),
        )
      ],
    );
  }
}

class ActiveStyle extends StatelessWidget {
  const ActiveStyle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      width: (MediaQuery.of(context).size.width / 2) - 120,
      height: 4,
    );
  }
}

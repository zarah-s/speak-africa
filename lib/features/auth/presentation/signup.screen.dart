import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speak_nigerian/common/buttons/primary_btn.dart';
import 'package:speak_nigerian/common/typography/text_widget.dart';
import 'package:speak_nigerian/constants/constants.dart';
import 'package:speak_nigerian/features/auth/controller/auth.controller.dart';
import 'package:speak_nigerian/features/auth/presentation/sections/signup_form.section%20copy.dart';
import 'package:speak_nigerian/features/auth/presentation/widgets/auth_activity.dart';
import 'package:speak_nigerian/features/auth/presentation/widgets/social_auth.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key, required this.onChangePage}) : super(key: key);
  final Function(int) onChangePage;

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  AuthController controller = Get.find();
  final _formKey = GlobalKey<FormState>();

  final TextStyle _textStyle = const TextStyle(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        controller.unFocusKeyboard(context);
        return Future.value(false);
      },
      child: GestureDetector(
        onTap: () {
          controller.unFocusKeyboard(context);
        },
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    AuthActivity(
                      activeIndex: 1,
                      onChangePage: widget.onChangePage,
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    SignupFormSection(formKey: _formKey),
                    const SizedBox(
                      height: 50,
                    ),
                    PrimaryBtn(
                      "Sign Up",
                      onTap: () {},
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Column(
                        children: [
                          const TextWidget(
                            'Or Sign Up With',
                            color: Color(0XFFB9B9B9),
                            size: 16,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SocialAuth(),
                          const SizedBox(
                            height: 30,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "By creating an account your are accepting our",
                                  style: _textStyle,
                                ),
                                TextSpan(
                                  text: " Terms of service",
                                  style: _textStyle.copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

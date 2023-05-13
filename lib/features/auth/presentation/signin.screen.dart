import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speak_nigerian/common/buttons/primary_btn.dart';
import 'package:speak_nigerian/common/typography/text_widget.dart';
import 'package:speak_nigerian/features/auth/controller/auth.controller.dart';
import 'package:speak_nigerian/features/auth/presentation/sections/signin_form.section.dart';
import 'package:speak_nigerian/features/auth/presentation/widgets/auth_activity.dart';
import 'package:speak_nigerian/features/auth/presentation/widgets/social_auth.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key, required this.onChangePage}) : super(key: key);
  final Function(int) onChangePage;

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  AuthController controller = Get.find();
  final _formKey = GlobalKey<FormState>();

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
                      height: 150,
                    ),
                    AuthActivity(
                      activeIndex: 0,
                      onChangePage: widget.onChangePage,
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    SigninFormSection(formKey: _formKey),
                    const SizedBox(
                      height: 50,
                    ),
                    PrimaryBtn(
                      "Sign In",
                      onTap: () {},
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Column(
                        children: const [
                          TextWidget(
                            'Forgot Password?',
                            centralize: true,
                            underlined: true,
                            size: 16,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextWidget(
                            'Or Sign Up With',
                            color: Color(0XFFB9B9B9),
                            size: 16,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SocialAuth(),
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

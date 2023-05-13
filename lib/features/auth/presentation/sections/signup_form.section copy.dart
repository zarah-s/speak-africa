import 'package:flutter/material.dart';
import 'package:speak_nigerian/features/auth/presentation/widgets/input_field.dart';

class SignupFormSection extends StatelessWidget {
  const SignupFormSection({Key? key, required this.formKey}) : super(key: key);
  final GlobalKey formKey;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          InputField(
            label: "Full Name",
            hintText: "Enter your Full Name",
            textInputAction: TextInputAction.next,
          ),
          SizedBox(
            height: 20,
          ),
          InputField(
            label: "Email",
            hintText: "Enter your  Email address ",
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
          ),
          SizedBox(
            height: 20,
          ),
          InputField(
            label: "Password",
            hintText: "Enter your Password",
            obscureText: true,
          ),
        ],
      ),
    );
  }
}

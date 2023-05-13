import 'package:flutter/material.dart';
import 'package:speak_nigerian/constants/constants.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.hintText,
    this.label,
    this.obscureText = false,
    this.onChange,
    this.onPressIcon,
    this.keyboardType,
    this.validator,
    this.textInputAction,
  }) : super(key: key);
  final bool obscureText;
  final String? label;
  final String? hintText;
  final Function(String)? onChange;
  final Function(String?)? validator;
  final Function? onPressIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  @override
  Widget build(BuildContext context) {
    const border = UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0XFFB9B9B9),
        width: 0.7,
      ),
    );
    return TextFormField(
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      validator: (value) {
        return validator!(value);
      },
      onChanged: onChange,
      cursorColor: primaryColor,
      decoration: InputDecoration(
        border: border,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
          ),
        ),
        enabledBorder: border,
        contentPadding: EdgeInsets.zero,
        labelText: label,
        hintText: hintText,
        suffixIcon: obscureText
            ? const Icon(
                Icons.visibility_off,
                size: 18,
              )
            : null,
        hintStyle: const TextStyle(
          color: Color(0xFFB9B9B9),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        labelStyle: const TextStyle(
          color: Colors.black,
          // fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

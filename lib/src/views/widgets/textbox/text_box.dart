import 'package:flutter/material.dart';

typedef String Validator(string);
typedef void OnSaved(string);

Widget buildTextBox(
    {String? hint,
    Widget? suffixIcon,
    Widget? prefixIcon,
    TextEditingController? controller,
    String? label,
    Validator? validator,
    OnSaved? onSaved,
    TextInputType inputType = TextInputType.text,
    bool enable = true,
    bool isPassword = false}) {
  return TextFormField(
    enabled: enable,
    keyboardType: inputType,
    obscureText: isPassword,
    controller: controller,
    textAlignVertical: TextAlignVertical.center,
    textAlign: TextAlign.left,
    decoration: InputDecoration(
      border: InputBorder.none,
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 30.0, 10.0),
      labelText: label,
      hintText: hint,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    ),
    validator: validator,
    onSaved: onSaved,
  );
}

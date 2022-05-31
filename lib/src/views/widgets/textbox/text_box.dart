import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rago/src/constante/fontSize.dart';
import 'package:rago/src/utils/colors.dart';

typedef String Validator(string);
typedef void OnSaved(string);

Widget buildTextBox(
    {String hint,
    Widget suffixIcon,
    Widget prefixIcon,
    TextEditingController controller,
    String label,
    Validator validator,
    OnSaved onSaved,
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
      labelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
          color: grey,
          fontSize: FontSize.small,
        ),
      ),
      hintText: hint,
      hintStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
          color: grey,
          fontSize: FontSize.small,
        ),
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    ),
    validator: validator,
    onSaved: onSaved,
  );
}

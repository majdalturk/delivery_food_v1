import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? inputType;
  final Widget? suffexicon;
  final ValueSetter? onSaved;
  final ValueSetter? onChanged;
  final int? maxLines;

  const CustomTextField(
      {super.key,
      this.inputType,
      this.suffexicon,
      this.onSaved,
      this.onChanged,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
          filled: true,
          suffix: suffexicon,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xfdfcccccc)))),
    );
  }
}

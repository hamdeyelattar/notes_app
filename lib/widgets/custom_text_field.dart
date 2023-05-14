import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Filed is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontWeight: FontWeight.w100),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kprimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}

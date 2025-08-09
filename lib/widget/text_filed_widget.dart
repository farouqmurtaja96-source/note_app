import 'package:flutter/material.dart';

class TextFiledWidget extends StatelessWidget {
  const TextFiledWidget({
    super.key,
    required this.hint,
    this.maxline = 1,
    this.onSave,
    this.onChage,
  });
  final String hint;
  final int maxline;
  final void Function(String?)? onSave;
  final Function(String)? onChage;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChage,
      onSaved: onSave,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'filed is required';
        } else {
          return null;
        }
      },
      cursorColor: Colors.lightBlue,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,

        border: OutlineBorder(Colors.white),
        enabledBorder: OutlineBorder(Colors.grey),
        focusedBorder: OutlineBorder(Colors.lightBlue),
      ),
    );
  }

  OutlineInputBorder OutlineBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color!),
    );
  }
}

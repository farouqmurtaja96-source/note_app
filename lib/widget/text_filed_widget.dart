import 'package:flutter/material.dart';

class TextFiledWidget extends StatelessWidget {
  const TextFiledWidget({super.key, required this.hint, this.maxline = 1});
  final String hint;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
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

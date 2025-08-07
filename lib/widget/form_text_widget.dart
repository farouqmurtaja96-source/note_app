import 'package:flutter/material.dart';
import 'package:note_appv3/widget/button_widget.dart';
import 'package:note_appv3/widget/text_filed_widget.dart';

class FormTextWidget extends StatefulWidget {
  const FormTextWidget({super.key});

  @override
  State<FormTextWidget> createState() => _FormTextWidgetState();
}

class _FormTextWidgetState extends State<FormTextWidget> {
  @override
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          TextFiledWidget(
            hint: 'Title',
            onSave: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          TextFiledWidget(
            hint: 'Content',
            maxline: 5,
            onSave: (value) {
              content = value;
            },
          ),
          SizedBox(height: 32),
          ButtonWidget(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();

                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}

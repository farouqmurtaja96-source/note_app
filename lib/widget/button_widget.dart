import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.onTap, this.isLoading = false});
  final Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : Text(
                  'Add',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
        ),
      ),
    );
  }
}

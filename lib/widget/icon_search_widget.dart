import 'package:flutter/material.dart';

class IconSearchWidget extends StatelessWidget {
  const IconSearchWidget({super.key, required this.icon, this.onPress});
  final IconData icon;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.17),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(onPressed: onPress, icon: Icon(icon, size: 24)),
    );
  }
}

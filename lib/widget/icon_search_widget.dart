import 'package:flutter/material.dart';

class IconSearchWidget extends StatelessWidget {
  const IconSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.17),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(Icons.search, size: 26),
    );
  }
}

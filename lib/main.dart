import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:note_appv3/views/home_views.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox('notes_boxe');
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: HomeViews(),
    );
  }
}

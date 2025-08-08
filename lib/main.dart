import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_appv3/const/const.dart';
import 'package:note_appv3/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_appv3/model/note_model.dart';
import 'package:note_appv3/sample_bloc_observe.dart';

import 'package:note_appv3/views/home_views.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kPrimary);
  Bloc.observer = SampleBlocObserve();

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: HomeViews(),
      ),
    );
  }
}

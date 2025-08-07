import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_appv3/const/const.dart';
import 'package:note_appv3/cubit/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:note_appv3/model/note_model.dart';
import 'package:note_appv3/sample_bloc_observe.dart';

import 'package:note_appv3/views/home_views.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SampleBlocObserve();
  await Hive.openBox(kPrimary);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubitCubit())],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: HomeViews(),
      ),
    );
  }
}

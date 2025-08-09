import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_appv3/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_appv3/widget/app_bar_widget.dart';
import 'package:note_appv3/widget/itme_list_widget.dart';

class ViewBodyWidget extends StatefulWidget {
  const ViewBodyWidget({super.key});

  @override
  State<ViewBodyWidget> createState() => _ViewBodyWidgetState();
}

class _ViewBodyWidgetState extends State<ViewBodyWidget> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<NotesCubit>(context).featch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          AppBarWidget(icon: Icons.search, title: 'Notes'),

          Expanded(child: ItmeListWidget()),
        ],
      ),
    );
  }
}

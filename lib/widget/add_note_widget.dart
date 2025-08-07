import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_appv3/cubit/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:note_appv3/widget/form_text_widget.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
      listener: (context, state) {
        if (state is AddNoteCubitSucces) {
          Navigator.pop(context);
        } else if (state is AddNoteCubitFaliuer) {
          print('faliuer ${state.errorState}');
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: SingleChildScrollView(
            child: ModalProgressHUD(
              inAsyncCall: state is AddNoteCubitLodaing ? true : false,
              child: FormTextWidget(),
            ),
          ),
        );
      },
    );
  }
}

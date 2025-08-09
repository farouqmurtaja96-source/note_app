import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_appv3/cubit/add_note_cubit/add_note_cubit_cubit.dart';

class ColorItme extends StatelessWidget {
  const ColorItme({required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(backgroundColor: color, radius: 34),
          )
        : CircleAvatar(backgroundColor: color, radius: 38);
  }
}

class ColorListWidget extends StatefulWidget {
  const ColorListWidget({super.key});

  @override
  State<ColorListWidget> createState() => _ColorListWidgetState();
}

class _ColorListWidgetState extends State<ColorListWidget> {
  int currentindex = 0;
  List<Color> colors = [
    Color(0xffb38cb4),
    Color(0xffB7918C),
    Color(0xffC5A48A),
    Color(0xffDDC67B),
    Color(0xffF8F272),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, intdex) {
          return GestureDetector(
            onTap: () {
              currentindex = intdex;
              BlocProvider.of<AddNoteCubitCubit>(context).color =
                  colors[intdex];
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ColorItme(
                isActive: currentindex == intdex,
                color: colors[intdex],
              ),
            ),
          );
        },
      ),
    );
  }
}

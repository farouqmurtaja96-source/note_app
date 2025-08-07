part of 'add_note_cubit_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteCubitLodaing extends AddNoteCubitState {}

final class AddNoteCubitSucces extends AddNoteCubitState {}

final class AddNoteCubitFaliuer extends AddNoteCubitState {
  final String errorState;

  AddNoteCubitFaliuer({required this.errorState});
}

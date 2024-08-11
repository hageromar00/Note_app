import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/const.dart';
import 'package:note_app/cubits/note_cubit/note_state.dart';
import 'package:note_app/model/note_model.dart';

class NoteViewCubit extends Cubit<NoteState> {
  NoteViewCubit() : super(NoteInitial());
  List<NoteModel>? notes;
  fetchNote() {
    var noteboxe = Hive.box<NoteModel>(KNoteBox);
   notes= noteboxe.values.toList();
    emit(NoteSuccess());
  }
}

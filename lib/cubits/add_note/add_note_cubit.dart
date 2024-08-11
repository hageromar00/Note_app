import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/const.dart';
import 'package:note_app/cubits/add_note/add_note_state.dart';
import 'package:note_app/model/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color? color = const Color.fromARGB(255, 92, 74, 58);
  AddNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNotesLoad());
    try {
      var noteBoxes = await Hive.box<NoteModel>(KNoteBox);
      noteBoxes.add(note);
      print('كله تحت السيطره');
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailed(e.toString()));
    }
  }
}

// class AddNoteCubit extends Cubit<AddNoteState> {
//   AddNoteCubit() : super(AddNoteInitial());
//    addNote(NoteModel note) async {
   
//     emit(AddNotesLoad());
//     try {
//       var notesBox = Hive.box<NoteModel>(KNoteBox);
//       await notesBox.add(note);
//       // print('hello');
//       emit(AddNotesSuccess());
//     } catch (e) {
//       emit(AddNotesFailed(e.toString()));
//       // AddNotesFailed(e.toString());
//     }
//   }
// }
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note/add_note_state.dart';
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  
}
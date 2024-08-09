class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNotesLoad extends AddNoteState {}

class AddNotesSuccess extends AddNoteState {}

class AddNotesFailed extends AddNoteState {
  final String errMessage;
  AddNotesFailed(this.errMessage);
}

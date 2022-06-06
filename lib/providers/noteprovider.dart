import 'package:flutter/foundation.dart';
import 'package:notes_app/models/note.dart';

class NoteProvider extends ChangeNotifier{
  List<Note> _notes = [];
  List<Note> get noteslist{
    return _notes;
  }

  void addnote(Note note){
    _notes.add(note);
    notifyListeners();
  } 
}
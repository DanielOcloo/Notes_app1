import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/providers/noteprovider.dart';
import 'package:provider/provider.dart';

class NotePage extends StatefulWidget {
  const NotePage({
    Key? key,
  }) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  TextEditingController _titlecontroller = TextEditingController();
  TextEditingController _bodycontroller = TextEditingController();
   Note _newnote = Note();
  @override
  Widget build(BuildContext context) {
    final provider = context.read<NoteProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 60.0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _newnote.title = _titlecontroller.text;
                _newnote.body = _bodycontroller.text;
              });
              provider.addnote(_newnote);
              Navigator.pop(context);
            },
            icon: const Icon(Icons.save),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              TextField(
                controller: _titlecontroller,
                decoration: const InputDecoration(
                  hintText: 'Title',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _bodycontroller,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'Type here',
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_enhance,
              color: Colors.black,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.mic,
              color: Colors.black,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock_open,
              color: Colors.black.withOpacity(0.5),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

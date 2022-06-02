import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({
    Key? key,
  }) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 60.0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});

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
            children: const <Widget>[
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Title',
                  border: InputBorder.none,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
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

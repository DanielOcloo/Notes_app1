import 'package:notes_app/providers/noteprovider.dart';
import 'package:provider/provider.dart';

import 'Screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NoteProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Home page',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: const HomePage(),
      ),
    );
  }
}

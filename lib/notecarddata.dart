import 'package:flutter/material.dart';
import 'notecard.dart';

class NoteCardData extends StatefulWidget {
  const NoteCardData({Key? key}) : super(key: key);

  @override
  State<NoteCardData> createState() => _NoteCardDataState();
}

class _NoteCardDataState extends State<NoteCardData> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const NoteCard(
          title: 'Note 1',
          body: 'dlkajdkjsa\ndajsdklsj',
          lastedited: '04/05/2022',
        );
      },
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      primary: false,
    );
  }
}

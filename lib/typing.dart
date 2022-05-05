import 'package:flutter/material.dart';

class Typing extends StatelessWidget {
  final String? title;

  final String? date;

  const Typing({
    Key? key,
    this.title,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 20),
        Text(
          '$title',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text(
                'Customize',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            const Icon(
              Icons.circle_rounded,
              color: Color.fromARGB(255, 163, 4, 121),
              size: 15,
            ),
          ],
        ),
        const SizedBox(height: 20),
        const TextField(
          minLines: 10,
          maxLines: 100,
          decoration: InputDecoration(
            hintText: 'This is a long piece of note. Lets go',
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
            border: InputBorder.none,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            '$date',
            style: TextStyle(
                color: Colors.grey.withOpacity(0.7),
                fontWeight: FontWeight.w600,
                fontSize: 15),
          ),
        )
      ],
    );
  }
}

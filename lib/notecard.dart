import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  final String? title;
  final String? body;
  final String? lastedited;

  const NoteCard({
    Key? key,
    this.title,
    this.body,
    this.lastedited,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 190,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        border: Border.all(
          width: 1,
          color: Colors.grey.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //this didn't seem to have any effect
        //mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Icon(
                Icons.circle_rounded,
                color: Colors.purple,
                size: 10,
              ),
              const SizedBox(width: 10),
              Text(
                '$title',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            '$body',
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '$lastedited',
              style: TextStyle(
                color: Colors.black.withOpacity(0.3),
                fontWeight: FontWeight.w500,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

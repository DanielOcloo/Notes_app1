import 'package:flutter/material.dart';

class Short extends StatelessWidget {
  final String? title;
  final String? body;
  final String? bottomtext;

  const Short({
    Key? key,
    this.title,
    this.body,
    this.bottomtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 100,
        width: 190,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 10,
              bottom: 10,
              child: Text(
                '$bottomtext',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '$bottomtext',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.3),
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShortIcon extends StatelessWidget {
  final String? title;
  final String? icon;
  final String? bottomtext;

  const ShortIcon({
    Key? key,
    this.title,
    this.icon,
    this.bottomtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 100,
        width: 190,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 10,
              bottom: 10,
              child: Text(
                '$bottomtext',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: 10),
                  const Icon(
                    Icons.lock,
                    size: 25,
                  ),
                  const SizedBox(height: 13),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '$bottomtext',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.3),
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Medium extends StatelessWidget {
  final String? title;
  final String? body;
  final String? bottomtext;

  const Medium({
    Key? key,
    this.title,
    this.body,
    this.bottomtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 170,
        width: 190,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 10,
              bottom: 10,
              child: Text(
                '$bottomtext',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Long extends StatelessWidget {
  final String? title;
  final String? body;
  final String? bottomtext;

  const Long({
    Key? key,
    this.title,
    this.body,
    this.bottomtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        height: 240,
        width: 190,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 10,
              bottom: 10,
              child: Text(
                '$bottomtext',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

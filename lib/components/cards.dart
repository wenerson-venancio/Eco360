import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                color: Colors.black
              ),
            )
          ],
        ),
        Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(

          ),
        )
      ],
    );
  }
}

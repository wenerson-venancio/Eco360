import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  )),
              Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

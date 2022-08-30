// ignore_for_file: sort_child_properties_last

import 'package:eco360/components/cards.dart';
import 'package:eco360/components/empresa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: Column(
          children: [
            Column(
              children: [
                Column(
                  children: [
                   
                    Container(
                      height: 200,
                      width: 400,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 3, 32, 65),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Header(),
                            SizedBox(
                              height: 10,
                            ),
                            Empresa(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }

  PreferredSize _appBar() {
    return PreferredSize(
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 3, 32, 65),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        preferredSize: const Size.fromHeight(0));
  }
}

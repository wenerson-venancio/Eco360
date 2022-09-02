// ignore_for_file: sort_child_properties_last, sized_box_for_whitespace
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          Stack(
            children: [
              Container(
                height: 190,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Color.fromARGB(255, 3, 32, 65),
                ),
              ),
              Container(
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          Text(
                            'Menu',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'EMPRESA: JS DISTRIBUIDORA',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'CNPJ: 000.0000.0001-00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Sistema ECO',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            transform: Matrix4.translationValues(0, -55, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        child: Column(
                          
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                              )
                            ]),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        child: SvgPicture.asset('assets/menu_receber.svg'),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                              )
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            transform: Matrix4.translationValues(0, -55, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        child: Container(
                            height: 100,
                            width: 100,
                            child: SvgPicture.asset('assets/menu_pagar.svg')),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                              )
                            ]),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        child: SvgPicture.asset('assets/menu_vendas.svg'),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                              )
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            transform: Matrix4.translationValues(0, -55, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        child: SvgPicture.asset('assets/menu_registradora.svg'),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                              )
                            ]),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        child: SvgPicture.asset(
                          'assets/menu_estoque.svg',
                          width: 100,
                          height: 100,
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                              )
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
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

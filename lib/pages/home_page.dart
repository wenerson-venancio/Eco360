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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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


          //Daqui para baixo começa os BottomCards

          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                transform: Matrix4.translationValues(0, -50, 0),
                                height: 180,
                                width: 180,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,

                                    )
                                  ]
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/fluxo_caixa.svg',
                                      height: 160,
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(0, -20, 0),
                                        height: 20,
                                        child: const Text(
                                          'Fluxo de Caixa',
                                          style: TextStyle(color: Color.fromARGB(255, 59, 95, 126), fontSize: 16),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          Container(
                            transform: Matrix4.translationValues(0, -50, 0),
                            height: 180,
                            width: 180,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,

                                )
                              ]
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/a receber.svg',
                                  height: 160,
                                ),
                                Container(
                                    transform: Matrix4.translationValues(0, -20, 0),
                                    height: 20,
                                    child: const Text(
                                      'A Receber',
                                      style: TextStyle(color: Color.fromARGB(255, 59, 95, 126), fontSize: 16),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                transform: Matrix4.translationValues(0, -50, 0),
                                height: 180,
                                width: 180,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,

                                    )
                                  ]
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/menu_pagar.svg',
                                      height: 160,
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(0, -20, 0),
                                        height: 20,
                                        child: const Text(
                                          'A Pagar',
                                          style: TextStyle(color: Color.fromARGB(255, 59, 95, 126), fontSize: 16),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          Container(
                            transform: Matrix4.translationValues(0, -50, 0),
                            height: 180,
                            width: 180,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,

                                )
                              ]
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/menu_vendas.svg',
                                  height: 160,
                                ),
                                Container(
                                    transform: Matrix4.translationValues(0, -20, 0),
                                    height: 20,
                                    child: const Text(
                                      'Vendas',
                                      style: TextStyle(color: Color.fromARGB(255, 59, 95, 126), fontSize: 16),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                transform: Matrix4.translationValues(0, -50, 0),
                                height: 180,
                                width: 180,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,

                                    )
                                  ]
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/registradora.svg',
                                      height: 160,
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(0, -20, 0),
                                        height: 20,
                                        child: const Text(
                                          'Registradora',
                                          style: TextStyle(color: Color.fromARGB(255, 59, 95, 126), fontSize: 16),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          Container(
                            transform: Matrix4.translationValues(0, -50, 0),
                            height: 180,
                            width: 180,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,

                                )
                              ]
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/estoque-lineout2.svg',
                                  height: 160,
                                ),
                                Container(
                                    transform: Matrix4.translationValues(0, -20, 0),
                                    height: 20,
                                    child: const Text(
                                      'Fluxo de Caixa',
                                      style: TextStyle(color: Color.fromARGB(255, 59, 95, 126), fontSize: 16),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
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

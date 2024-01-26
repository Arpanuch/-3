import 'package:flutter/material.dart';

class test_page extends StatefulWidget {
  const test_page({super.key});

  @override
  State<test_page> createState() => _test_pageState();
}

class _test_pageState extends State<test_page> {
  var _text = "";
  IconData? _icon = null;
  var underscore = "_";


  Widget buildItem({
    //required IconData icon,
    required String label,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          //_text = Random().nextInt(100).toString();
          _text = label;
        });
      },
      child: Container(
        width: 100.0,
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //var itemList = [
    //  buildItem(icon: Icons.phone, label: "โทร", color: Colors.pink),
    // buildItem(icon: Icons.route, label: "เส้นทาง", color: Colors.blue),
    // buildItem(icon: Icons.share, label: "แชร์", color: Colors.green),

    // ];

    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 50.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite, size: 60.0),
          Container(
              padding: EdgeInsets.only(top: 16),
              child: Center(child: Text("PIN LOGIN"))),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 225),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(underscore),
                          ],
                        ),
                        Column(
                          children: [
                            Text(underscore),
                          ],
                        ),
                        Column(
                          children: [
                            Text(underscore),
                          ],
                        ),
                        Column(
                          children: [
                            Text(underscore),
                          ],
                        ),
                        Column(
                          children: [
                            Text(underscore),
                          ],
                        ),
                        Column(
                          children: [
                            Text(underscore),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(_icon, size: 100.0),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                        margin: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildItem(label: "1"),
                            Text("one"),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                        margin: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.black),
                        ),
                        child: Column(
                          children: [
                            buildItem(label: "2"),
                            Text("two"),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                        margin: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.black),
                        ),
                        child: Column(
                          children: [
                            buildItem(label: "3"),
                            Text("three"),
                          ],
                        )),
                  ),
                ]),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.0, color: Colors.black),
                            ),
                            child: Column(
                              children: [
                                buildItem(label: "4"),
                                Text("four"),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.0, color: Colors.black),
                            ),
                            child: Column(
                              children: [
                                buildItem(label: "5"),
                                Text("five"),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.0, color: Colors.black),
                            ),
                            child: Column(
                              children: [
                                buildItem(label: "6"),
                                Text("six"),
                              ],
                            )),
                      ),
                    ]),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.0, color: Colors.black)),
                            child: Column(
                              children: [
                                buildItem(label: "7"),
                                Text("seven"),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.0, color: Colors.black)),
                            child: Column(
                              children: [
                                buildItem(label: "8"),
                                Text("eigth"),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.0, color: Colors.black)),
                            child: Column(
                              children: [
                                buildItem(label: "9"),
                                Text("nine"),
                              ],
                            )),
                      ),
                    ]),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        child: buildItem(label: ""),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.0, color: Colors.black)),
                          child: Column(
                            children: [
                              buildItem(label: "0"),
                              Text("zero"),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        child: buildItem(label: ""),
                        
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

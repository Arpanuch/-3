import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var _text = ""; //state variable
  IconData? _icon = null;
  Widget buildItem(
    IconData icon,
    String label,
    Color color,
  ) {
    // GestureDetector เป็นฟังชั่นที่ใส่จะเปลี่ยนเป็นคลิกได้
    return InkWell(
      onTap: () {
        //setState ใส่เพื่อสั่งให้ build เริ่มรันใหม่
        setState(() {
          // _text = Random().nextInt(100).toString();
          _text = label;
          _icon = icon;
        });
      },
      child: Container(
        width: 100.0,
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Icon(
              icon,
              color: color,
            ),
            Text(
              label,
            )
          ],
        ),
      ),
    );
  }

  // Widget buildTextWithBackground({
  @override
  Widget build(BuildContext context) {
    var iTemList = [
      buildItem(Icons.phone, "โทร", Colors.blue),
      buildItem(Icons.route, "เส้นทาง", Colors.green),
      buildItem(Icons.share, "แชร์", Colors.pink),
      buildItem(Icons.person, "ฉัน", Colors.orange),
    ];
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _text = "";
                  _icon = null;
                });
              },
              child: Text("Clear"),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(_icon, size: 60.0),
                    Text(
                      _text,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: iTemList,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});
  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  late String seciliCins;
  void cinsBelirle(icerik) {
    setState(() {
      seciliCins = icerik;
      print("basildi.");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LifeApp"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildContainer(150, Colors.red, Icons.coffee, "Bay"),
                ),
                Expanded(
                  child: buildContainer(150, Colors.red, Icons.train, "Bay"),
                ),
              ],
            ),
          ),
          Expanded(
            child: buildContainer(300, Colors.red, Icons.add, "Bay"),
          ),
          Expanded(
            child: buildContainer(300, Colors.red, Icons.alarm, "Bay"),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildContainer(
                      150,
                      const Color.fromARGB(255, 255, 255, 255),
                      Icons.male,
                      "Bay"),
                ),
                Expanded(
                  child: buildContainer(
                      150,
                      const Color.fromARGB(255, 255, 255, 255),
                      Icons.female,
                      "Bayan"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer(
      double genislik, Color renk, IconData icon, String icerik) {
    return Container(
      margin: const EdgeInsets.all(12),
      width: genislik,
      height: 150,
      child: TextButton(
        onPressed: () {
          cinsBelirle(icerik);
          print("sd");
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.black,
              size: 48,
            ),
            SizedBox(height: 8.0),
            Text(
              icerik,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      decoration:
          BoxDecoration(color: renk, borderRadius: BorderRadius.circular(10)),
    );
  }
}

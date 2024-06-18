import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      children: [
        Text(
          "Selamat datang di Learning\nManagement System Infinite Learning",
          style:
              TextStyle(fontSize: 18, height: 1.4, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Text(
          "Semoga harimu menyenangkan",
          style: TextStyle(
              fontSize: 14, height: 1.4, fontWeight: FontWeight.normal),
        ),
        SizedBox(height: 40),
        Container(
          child: Row(children: [
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 45, top: 20, bottom: 35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: <Color>[
                    Color(0xff002fff),
                    Color(0xff00f4ff),
                  ],
                ),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Jumlah Tugas",
                      style: TextStyle(
                          fontSize: 12,
                          height: 1.4,
                          fontWeight: FontWeight.bold)),
                  Container(
                      alignment: Alignment.center,
                      child: Text("2",
                          style: TextStyle(
                              fontSize: 34,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            SizedBox(width: 20),
            Container(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: <Color>[
                    Color(0xff002fff),
                    Color(0xff00f4ff),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mentor",
                      style: TextStyle(
                          fontSize: 12,
                          height: 1.4,
                          fontWeight: FontWeight.bold)),
                  Text("Jessica",
                      style: TextStyle(
                          fontSize: 34,
                          height: 1.4,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ]),
        )
      ],
    );
  }
}

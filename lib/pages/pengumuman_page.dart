import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_learning/nav/course_view.dart';

class PengumumanPage extends StatefulWidget {
  const PengumumanPage({super.key});

  @override
  State<PengumumanPage> createState() => _PengumumanPageState();
}

class _PengumumanPageState extends State<PengumumanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0), // here the desired height
            child: SafeArea(
              child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  // alignment: Alignment.center,
                  height: 80,
                  // color: Colors.red,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_ios))),
            )),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Pengumuman",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 10),
              Expanded(
                  child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text("22 Sept 2023",
                                style: TextStyle(
                                    fontSize: 14,
                                    height: 1.4,
                                    fontWeight: FontWeight.normal))
                          ]),
                        ),
                        SizedBox(height: 10),
                        Text(
                            "Hallo Anyone!! Siapa nih yang udah ga sabar untuk DevFest",
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.4,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text("10 Oct 2023",
                                style: TextStyle(
                                    fontSize: 14,
                                    height: 1.4,
                                    fontWeight: FontWeight.normal))
                          ]),
                        ),
                        SizedBox(height: 10),
                        Text(
                            "Hallo Inners, Berhubung Event DevFest 5.0 akan segera kita mulai, kita akan buka rekrutmen panitia. Stay Tuned yaa!!!",
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.4,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text("31 Okt 2023",
                                style: TextStyle(
                                    fontSize: 14,
                                    height: 1.4,
                                    fontWeight: FontWeight.normal))
                          ]),
                        ),
                        SizedBox(height: 10),
                        Text(
                            "Hallo Inners, Infinite Learning bakalan ngadain event Halloween nih!!",
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.4,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text("1 Nov 2023",
                                style: TextStyle(
                                    fontSize: 14,
                                    height: 1.4,
                                    fontWeight: FontWeight.normal))
                          ]),
                        ),
                        SizedBox(height: 10),
                        Text(
                            "Hallo Inners, are you ready for Halloween??",
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.4,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text("6 Nov 2023",
                                style: TextStyle(
                                    fontSize: 14,
                                    height: 1.4,
                                    fontWeight: FontWeight.normal))
                          ]),
                        ),
                        SizedBox(height: 10),
                        Text(
                            "Hallo Inners, DevFest 5.0 tinggal 5 hari lagi, jangan lupa datang yaa!! ada banyak hadiah menarik loh",
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.4,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text("20 Nov 2023",
                                style: TextStyle(
                                    fontSize: 14,
                                    height: 1.4,
                                    fontWeight: FontWeight.normal))
                          ]),
                        ),
                        SizedBox(height: 10),
                        Text(
                            "Hallo Inners, jangan lupa dan tetap semangat ngerjain projek nya ya!!",
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.4,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text("15 Dec 2023",
                                style: TextStyle(
                                    fontSize: 14,
                                    height: 1.4,
                                    fontWeight: FontWeight.normal))
                          ]),
                        ),
                        SizedBox(height: 10),
                        Text(
                            "Sudah di penghujung periode Studi Independen guys, tetap semangat yaa!!",
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.4,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text("25 Dec 2023",
                                style: TextStyle(
                                    fontSize: 14,
                                    height: 1.4,
                                    fontWeight: FontWeight.normal))
                          ]),
                        ),
                        SizedBox(height: 10),
                        Text(
                            "Anything Anyone batch 2 will be back at Infinite Learning!!",
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.4,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_learning/nav/course_view.dart';
import 'package:infinite_learning/pages/course/add_pengumuman_page.dart';
import 'package:infinite_learning/pages/course/add_tugas_page.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  var _tab = 0;

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
                    "Web Development",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 20),
              Container(
                  height: 45,
                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
                  child: ListView(
                      // padding: EdgeInsets.symmetric(vertical: 10),
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                            onTap: () {
                              if (_tab != 0) {
                                setState(() {
                                  _tab = 0;
                                });
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12),
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: _tab == 0 ? Colors.blue : Colors.white,
                                  border: Border.all(
                                      color: Colors.blue, width: 1.5)),
                              child: Text(
                                "Materi",
                                style: TextStyle(
                                    color:
                                        _tab == 0 ? Colors.white : Colors.blue),
                              ),
                            )),
                        GestureDetector(
                            onTap: () {
                              if (_tab != 1) {
                                setState(() {
                                  _tab = 1;
                                });
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12),
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: _tab == 1 ? Colors.blue : Colors.white,
                                  border: Border.all(
                                      color: Colors.blue, width: 1.5)),
                              child: Text(
                                "Tugas",
                                style: TextStyle(
                                    color:
                                        _tab == 1 ? Colors.white : Colors.blue),
                              ),
                            )),
                        GestureDetector(
                            onTap: () {
                              if (_tab != 2) {
                                setState(() {
                                  _tab = 2;
                                });
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12),
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: _tab == 2 ? Colors.blue : Colors.white,
                                  border: Border.all(
                                      color: Colors.blue, width: 1.5)),
                              child: Text(
                                "Meeting",
                                style: TextStyle(
                                    color:
                                        _tab == 2 ? Colors.white : Colors.blue),
                              ),
                            )),
                        GestureDetector(
                            onTap: () {
                              if (_tab != 3) {
                                setState(() {
                                  _tab = 3;
                                });
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12),
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: _tab == 3 ? Colors.blue : Colors.white,
                                  border: Border.all(
                                      color: Colors.blue, width: 1.5)),
                              child: Text(
                                "Pengumuman",
                                style: TextStyle(
                                    color:
                                        _tab == 3 ? Colors.white : Colors.blue),
                              ),
                            )),
                      ])),
              _tab == 0
                  ? _buildMateriList()
                  : _tab == 1
                      ? _buildTugasList()
                      : _tab == 2
                          ? _buildMeetingList()
                          : _buildPengumumanList()
            ],
          ),
        ));
  }

  Widget _buildMateriList() {
    return Expanded(
        child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar Web",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Pengenalan Dasar Web adalah pemahaman awal tentang bagaimana internet dan web berfungsi, termasuk konsep server dan klien, protokol HTTP/HTTPS, DNS, serta komponen utama halaman web seperti HTML, CSS, dan JavaScript.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 2",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("HTML (HyperText Markup Language)",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Pengenalan Dasar Web adalah pemahaman awal tentang bagaimana internet dan web berfungsi, termasuk konsep server dan klien, protokol HTTP/HTTPS, DNS, serta komponen utama halaman web seperti HTML, CSS, dan JavaScript.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 3",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("CSS (Cascading Style Sheets)",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "CSS (Cascading Style Sheets) adalah bahasa desain yang digunakan untuk mengontrol tampilan dan tata letak halaman web. CSS memungkinkan pengembang untuk mengatur gaya elemen HTML, seperti warna, font, margin, padding, dan posisi. ",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 4",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("JavaScript",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "JavaScript adalah bahasa pemrograman yang digunakan untuk membuat halaman web menjadi interaktif dan dinamis. Ini memungkinkan pengembang untuk mengimplementasikan fitur-fitur seperti animasi, pengolahan data di sisi klien, dan manipulasi elemen HTML secara real-time, sehingga meningkatkan pengalaman pengguna secara keseluruhan.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 5",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Version Control with Git",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Version Control with Git adalah sistem pengelolaan versi yang digunakan untuk melacak perubahan dalam kode sumber selama pengembangan perangkat lunak.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 6",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Responsive Web Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Responsive Web Design adalah pendekatan dalam desain web yang memastikan tampilan dan fungsi situs web optimal pada berbagai perangkat dan ukuran layar.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 7",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Latihan dan Proyek Kecil",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Latihan dan Proyek Kecil adalah kegiatan praktis yang dirancang untuk membantu peserta mengaplikasikan konsep dan keterampilan yang telah dipelajari. ",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
      ],
    ));
  }

  Widget _buildTugasList() {
    return Expanded(
        child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 6",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AddTugasPage("Tambah")));
                      },
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 24,
                      ))
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/task.png',
                        height: 25,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Membangun Aplikasi Blog Sederhana",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                      SizedBox(width: 8),
                      PopupMenuButton(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 'edit',
                              child: Text('Edit'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            ),
                          ];
                        },
                        onSelected: (String value) {
                          print('You Click on po up menu item');
                          if (value == "edit") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AddTugasPage("Edit")));
                          } else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 0),
                                      height: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset('assets/images/alert.png',
                                              height: 100),
                                          SizedBox(height: 10),
                                          Text(
                                            "Apakah kamu yakin ingin Menghapus Tugas?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16, height: 1.3),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 80,
                                                    alignment: Alignment.center,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 35,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.grey[300]),
                                                    child: Text("Tidak"),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 80,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 30,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.redAccent),
                                                    child: Text(
                                                      "Ya",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )
                                                ]),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      )
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 5",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/task.png',
                        height: 25,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mendesain Halaman Web Responsive",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                      SizedBox(width: 8),
                      PopupMenuButton(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 'edit',
                              child: Text('Edit'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            )
                          ];
                        },
                        onSelected: (String value) {
                          print('You Click on po up menu item');
                          if (value == "edit") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AddTugasPage("Edit")));
                          } else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 0),
                                      height: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset('assets/images/alert.png',
                                              height: 100),
                                          SizedBox(height: 10),
                                          Text(
                                            "Apakah kamu yakin ingin Menghapus Tugas?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16, height: 1.3),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 80,
                                                    alignment: Alignment.center,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 35,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.grey[300]),
                                                    child: Text("Tidak"),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 80,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 30,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.redAccent),
                                                    child: Text(
                                                      "Ya",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )
                                                ]),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      )
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 4",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/task.png',
                        height: 30,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Kolaborasi Proyek di Github",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                      SizedBox(width: 8),
                      PopupMenuButton(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 'edit',
                              child: Text('Edit'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            )
                          ];
                        },
                        onSelected: (String value) {
                          print('You Click on po up menu item');
                          if (value == "edit") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AddTugasPage("Edit")));
                          } else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 0),
                                      height: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset('assets/images/alert.png',
                                              height: 100),
                                          SizedBox(height: 10),
                                          Text(
                                            "Apakah kamu yakin ingin Menghapus Tugas?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16, height: 1.3),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 80,
                                                    alignment: Alignment.center,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 35,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.grey[300]),
                                                    child: Text("Tidak"),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 80,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 30,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.redAccent),
                                                    child: Text(
                                                      "Ya",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )
                                                ]),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      )
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 3",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/task.png',
                        height: 25,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Membuat Aplikasi To-Do List Sederhana",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                      SizedBox(width: 8),
                      PopupMenuButton(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 'edit',
                              child: Text('Edit'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            )
                          ];
                        },
                        onSelected: (String value) {
                          print('You Click on po up menu item');
                          if (value == "edit") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AddTugasPage("Edit")));
                          } else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 0),
                                      height: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset('assets/images/alert.png',
                                              height: 100),
                                          SizedBox(height: 10),
                                          Text(
                                            "Apakah kamu yakin ingin Menghapus Tugas?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16, height: 1.3),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 80,
                                                    alignment: Alignment.center,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 35,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.grey[300]),
                                                    child: Text("Tidak"),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 80,
                                                    padding:
                                         EdgeInsets.symmetric(
                                                            // horizontal: 30,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.redAccent),
                                                    child: Text(
                                                      "Ya",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )
                                                ]),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      )
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 2",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/task.png',
                        height: 25,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Membangun Halaman Profil Personal menggunakan CSS",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                      SizedBox(width: 8),
                      PopupMenuButton(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 'edit',
                              child: Text('Edit'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            )
                          ];
                        },
                        onSelected: (String value) {
                          print('You Click on po up menu item');
                          if (value == "edit") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AddTugasPage("Edit")));
                          } else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 0),
                                      height: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset('assets/images/alert.png',
                                              height: 100),
                                          SizedBox(height: 10),
                                          Text(
                                            "Apakah kamu yakin ingin Menghapus Tugas?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16, height: 1.3),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 80,
                                                    alignment: Alignment.center,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 35,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.grey[300]),
                                                    child: Text("Tidak"),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 80,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 30,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.redAccent),
                                                    child: Text(
                                                      "Ya",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )
                                                ]),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      )
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 1",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 5, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/task.png',
                        height: 25,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color.fromARGB(255, 245, 239, 239),
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                      SizedBox(width: 8),
                      PopupMenuButton(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 'edit',
                              child: Text('Edit'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            )
                          ];
                        },
                        onSelected: (String value) {
                          print('You Click on po up menu item');
                          if (value == "edit") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AddTugasPage("Edit")));
                          } else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 0),
                                      height: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset('assets/images/alert.png',
                                              height: 100),
                                          SizedBox(height: 10),
                                          Text(
                                            "Apakah kamu yakin ingin Menghapus Tugas?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16, height: 1.3),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 80,
                                                    alignment: Alignment.center,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 35,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.grey[300]),
                                                    child: Text("Tidak"),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 80,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 30,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.redAccent),
                                                    child: Text(
                                                      "Ya",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )
                                                ]),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      )
                    ]),
              )
            ],
          ),
        ),
      ],
    ));
  }

  Widget _buildMeetingList() {
    return Expanded(
        child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Meeting 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 20,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Color.fromARGB(255, 245, 239, 239),
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Jessica Aulia S.Kom (Teori)\nKelas: Web Development Pagi & Merdeka Belajar\nJadwal/Jam: Senin, 09.00-13.00 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
                            color: Color.fromARGB(255, 245, 239, 239),
                            fontWeight: FontWeight.normal)),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Meeting 2",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 20,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Color.fromARGB(255, 245, 239, 239),
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Jessica Aulia S.Kom (Challenge Mentor)\nKelas: Web Development Siang & Merdeka Belajar\nJadwal/Jam: Senin, 14.00-18.00 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
                            color: Color.fromARGB(255, 245, 239, 239),
                            fontWeight: FontWeight.normal)),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Meeting 3",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 20,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Color.fromARGB(255, 245, 239, 239),
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Jessica Aulia S.Kom (Malam)\nKelas: Web Development Malam & Merdeka Belajar\nJadwal/Jam: Senin, 19.00-23.00 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
                            color: Color.fromARGB(255, 245, 239, 239),
                            fontWeight: FontWeight.normal)),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }

  Widget _buildPengumumanList() {
    return Expanded(
        child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Pengumuman",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AddPengumumanPage("Tambah")));
                      },
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 24,
                      ))
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/profile.png', height: 34),
                      SizedBox(width: 10),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jessica",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.4,
                                      color: Color.fromARGB(255, 245, 239, 239),
                                      // decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.watch_later_outlined, size: 16),
                                  SizedBox(width: 2),
                                  Text("22 Dec 2023",
                                      style: TextStyle(
                                          fontSize: 11,
                                          height: 1.4,
                                          color: Color.fromARGB(255, 245, 239, 239),
                                          // decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.normal)),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                              "Halo semua, Akhirnya kita sudah sampai di ujung kegiatan kita. Selamat berjumap di kesempatan lainnya. Senang bisa mengenal kalian semua",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                   color: Color.fromARGB(255, 245, 239, 239),
                                  fontWeight: FontWeight.normal)),
                        ],
                      )),
                      SizedBox(width: 8),
                      PopupMenuButton(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 'edit',
                              child: Text('Edit'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            )
                          ];
                        },
                        onSelected: (String value) {
                          print('You Click on po up menu item');
                          if (value == "edit") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AddPengumumanPage("Edit")));
                          } else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 0),
                                      height: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset('assets/images/alert.png',
                                              height: 100),
                                          SizedBox(height: 10),
                                          Text(
                                            "Apakah kamu yakin ingin menghapus Pengumuman?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16, height: 1.3),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 80,
                                                    alignment: Alignment.center,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 35,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.grey[300]),
                                                    child: Text("Tidak"),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 80,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 30,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.redAccent),
                                                    child: Text(
                                                      "Ya",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )
                                                ]),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      )
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 104, 158),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jessica Aulia",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Color.fromARGB(255, 245, 239, 239),
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 16),
                        SizedBox(width: 2),
                        Text("25 Nov 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Color.fromARGB(255, 245, 239, 239),
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Halo semua nggak kerasa kita udah deket akhir kegiatan Studi Independen, tetep semangat ngerjain proyek dan jaga kesehatan ya",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Color.fromARGB(255, 245, 239, 239),
                        fontWeight: FontWeight.normal)),
              ],
            )),
            SizedBox(width: 8),
            PopupMenuButton(
              padding: EdgeInsets.zero,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 'edit',
                    child: Text('Edit'),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Text('Delete'),
                  )
                ];
              },
              onSelected: (String value) {
                print('You Click on po up menu item');
                if (value == "edit") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AddPengumumanPage("Edit")));
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 0),
                            height: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/alert.png',
                                    height: 100),
                                SizedBox(height: 10),
                                Text(
                                  "Apakah kamu yakin ingin menghapus Pengumuman?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16, height: 1.3),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 80,
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              // horizontal: 35,
                                              vertical: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.grey[300]),
                                          child: Text("Tidak"),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 80,
                                          padding: EdgeInsets.symmetric(
                                              // horizontal: 30,
                                              vertical: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.redAccent),
                                          child: Text(
                                            "Ya",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ]),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                }
              },
            )
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 104, 158),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jessica Aulia",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Color.fromARGB(255, 245, 239, 239),
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 16),
                        SizedBox(width: 2),
                        Text("12 Okt 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Color.fromARGB(255, 245, 239, 239),
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Halo temen - temen\nSiang ini kita akan presentasi proyek yang akan menjelaskan progress pengerjaan proyek yang sudah dibagikan minggu kemarin ya.",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Color.fromARGB(255, 245, 239, 239),
                        fontWeight: FontWeight.normal)),
              ],
            )),
            SizedBox(width: 8),
            PopupMenuButton(
              padding: EdgeInsets.zero,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 'edit',
                    child: Text('Edit'),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Text('Delete'),
                  )
                ];
              },
              onSelected: (String value) {
                print('You Click on po up menu item');
                if (value == "edit") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AddPengumumanPage("Edit")));
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 0),
                            height: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/alert.png',
                                    height: 100),
                                SizedBox(height: 10),
                                Text(
                                  "Apakah kamu yakin ingin menghapus Pengumuman?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16, height: 1.3),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 80,
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              // horizontal: 35,
                                              vertical: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.grey[300]),
                                          child: Text("Tidak"),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 80,
                                          padding: EdgeInsets.symmetric(
                                              // horizontal: 30,
                                              vertical: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.redAccent),
                                          child: Text(
                                            "Ya",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ]),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                }
              },
            )
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 104, 158),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jessica Aulia",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Color.fromARGB(255, 245, 239, 239),
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 16),
                        SizedBox(width: 2),
                        Text("20  Sept 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Color.fromARGB(255, 245, 239, 239),
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Halo Semua. Tugas udah aku upload ya, selamat mengerjakan",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Color.fromARGB(255, 245, 239, 239),
                        fontWeight: FontWeight.normal)),
              ],
            )),
            SizedBox(width: 8),
            PopupMenuButton(
              padding: EdgeInsets.zero,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 'edit',
                    child: Text('Edit'),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Text('Delete'),
                  )
                ];
              },
              onSelected: (String value) {
                print('You Click on po up menu item');
                if (value == "edit") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AddPengumumanPage("Edit")));
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 0),
                            height: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/alert.png',
                                    height: 100),
                                SizedBox(height: 10),
                                Text(
                                  "Apakah kamu yakin ingin menghapus Pengumuman?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16, height: 1.3),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 80,
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              // horizontal: 35,
                                              vertical: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.grey[300]),
                                          child: Text("Tidak"),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 80,
                                          padding: EdgeInsets.symmetric(
                                              // horizontal: 30,
                                              vertical: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.redAccent),
                                          child: Text(
                                            "Ya",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ]),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                }
              },
            )
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 104, 158),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lauren Allow",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Color.fromARGB(255, 245, 239, 239),
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 16),
                        SizedBox(width: 2),
                        Text("18 Augt 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Color.fromARGB(255, 245, 239, 239),
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Hai Guys, siapa yang udah ga sabar our first class tomorrow??\nSampai jumapa besok ya temen - temen jangan begadang dan jaga stay healthy",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Color.fromARGB(255, 245, 239, 239),
                        fontWeight: FontWeight.normal)),
              ],
            )),
            SizedBox(width: 8),
            PopupMenuButton(
              padding: EdgeInsets.zero,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 'edit',
                    child: Text('Edit'),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Text('Delete'),
                  )
                ];
              },
              onSelected: (String value) {
                print('You Click on po up menu item');
                if (value == "edit") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AddPengumumanPage("Edit")));
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 0),
                            height: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/alert.png',
                                    height: 100),
                                SizedBox(height: 10),
                                Text(
                                  "Apakah kamu yakin ingin menghapus Pengumuman?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16, height: 1.3),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 80,
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              // horizontal: 35,
                                              vertical: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.grey[300]),
                                          child: Text("Tidak"),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 80,
                                          padding: EdgeInsets.symmetric(
                                              // horizontal: 30,
                                              vertical: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.redAccent),
                                          child: Text(
                                            "Ya",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ]),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                }
              },
            )
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 104, 158),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lauren Allow",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Color.fromARGB(255, 245, 239, 239),
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 16),
                        SizedBox(width: 2),
                        Text("14 Agustus 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Color.fromARGB(255, 245, 239, 239),
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Halo teman - teman welcome to Infinite Learning!!\nIni adalah aplikasi yang akan kita pakai selama kegiatan Studi Independen\nNice To Meet You Yaa:)",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Color.fromARGB(255, 245, 239, 239),
                        fontWeight: FontWeight.normal)),
              ],
            )),
            SizedBox(width: 8),
            PopupMenuButton(
              padding: EdgeInsets.zero,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 'edit',
                    child: Text('Edit'),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Text('Delete'),
                  )
                ];
              },
              onSelected: (String value) {
                print('You Click on po up menu item');
                if (value == "edit") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AddPengumumanPage("Edit")));
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 0),
                            height: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/alert.png',
                                    height: 100),
                                SizedBox(height: 10),
                                Text(
                                  "Apakah kamu yakin ingin menghapus Pengumuman?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16, height: 1.3),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 80,
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              // horizontal: 35,
                                              vertical: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.grey[300]),
                                          child: Text("Tidak"),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 80,
                                          padding: EdgeInsets.symmetric(
                                              // horizontal: 30,
                                              vertical: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.redAccent),
                                          child: Text(
                                            "Ya",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ]),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                }
              },
            )
          ]),
        )
      ],
    ));
  }
}

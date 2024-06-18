import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../pages/course/materi_list.dart';
import '../pages/course/tugas_list.dart';
// import 'package:infinite_learning/nav/course_view.dart';
// import 'package:infinite_learning/pages/course/add_tugas_page.dart';

class CourseView extends StatefulWidget {
  const CourseView({super.key});

  @override
  State<CourseView> createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  var _tab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 45,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
              child: ListView(
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
                              border:
                                  Border.all(color: Colors.blue, width: 1.5)),
                          child: Text(
                            "Materi",
                            style: TextStyle(
                                color: _tab == 0 ? Colors.white : Colors.blue),
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
                              border:
                                  Border.all(color: Colors.blue, width: 1.5)),
                          child: Text(
                            "Tugas",
                            style: TextStyle(
                                color: _tab == 1 ? Colors.white : Colors.blue),
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
                              border:
                                  Border.all(color: Colors.blue, width: 1.5)),
                          child: Text(
                            "Meeting",
                            style: TextStyle(
                                color: _tab == 2 ? Colors.white : Colors.blue),
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
                              border:
                                  Border.all(color: Colors.blue, width: 1.5)),
                          child: Text(
                            "Pengumuman",
                            style: TextStyle(
                                color: _tab == 3 ? Colors.white : Colors.blue),
                          ),
                        )),
                  ])),
          _tab == 0
              ? MateriList()
              : _tab == 1
                  ? TugasList()
                  : _tab == 2
                      ? _buildMeetingList()
                      : _buildPengumumanList()
        ],
      ),
    );
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
                        "Jessice Aulia S.Kom (Teori)\nKelas: Web Development Pagi & Merdeka Belajar\nJadwal/Jam: Senin, 09.00-13.00 WIB",
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
                        "Jessica Aulia (Individual Mentor)\nKelas: Web Development Malam & Merdeka Belajar\nJadwal/Jam: Senin, 19.00-23.00 WIB",
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
                  // GestureDetector(
                  //     onTap: () {
                  //       // Navigator.push(
                  //       //     context,
                  //       //     MaterialPageRoute(
                  //       //         builder: (BuildContext context) =>
                  //       //             AddPengumumanPage("Tambah")));
                  //     },
                  //     child: Icon(
                  //       Icons.add_circle_outline,
                  //       size: 24,
                  //     ))
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/profile2.png', height: 34),
                      SizedBox(width: 10),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Roy Prasetya",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.4,
                                      color: Colors.black,
                                      // decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.account_box, size: 16),
                                  SizedBox(width: 2),
                                  Text("14 Okt 2023",
                                      style: TextStyle(
                                          fontSize: 11,
                                          height: 1.4,
                                          color: Colors.black,
                                          // decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.normal)),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                              "Hari ini akan presentasi proyek yang akan menjelaskan progress pengerjaan proyek yang sudah dikerjakan oleh tim",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )),
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile2.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Roy Prasetya",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Colors.black,
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 16),
                        SizedBox(width: 2),
                        Text("14 Okt 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Colors.black,
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Hari ini akan presentasi proyek yang akan menjelaskan progress pengerjaan proyek yang sudah dikerjakan oleh tim",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        fontWeight: FontWeight.normal)),
              ],
            )),
            SizedBox(width: 8),
            // PopupMenuButton(
            //   padding: EdgeInsets.zero,
            //   itemBuilder: (context) {
            //     return [
            //       PopupMenuItem(
            //         value: 'edit',
            //         child: Text('Edit'),
            //       ),
            //       PopupMenuItem(
            //         value: 'delete',
            //         child: Text('Delete'),
            //       )
            //     ];
            //   },
            //   onSelected: (String value) {
            //     print('You Click on po up menu item');
            //     if (value == "edit") {
            //       // Navigator.push(
            //       //     context,
            //       //     MaterialPageRoute(
            //       //         builder: (BuildContext context) =>
            //       //             AddPengumumanPage("Edit")));
            //     } else {
            //       showDialog(
            //           context: context,
            //           builder: (BuildContext context) {
            //             return Dialog(
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10.0)),
            //               child: Container(
            //                 padding: EdgeInsets.symmetric(
            //                     vertical: 20, horizontal: 0),
            //                 height: 250,
            //                 child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Image.asset('assets/images/alert.png',
            //                         height: 100),
            //                     SizedBox(height: 10),
            //                     Text(
            //                       "Apakah kamu yakin ingin menghapus Pengumuman?",
            //                       textAlign: TextAlign.center,
            //                       style: TextStyle(fontSize: 16, height: 1.3),
            //                     ),
            //                     SizedBox(height: 10),
            //                     Container(
            //                       child: Row(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.center,
            //                           children: [
            //                             Container(
            //                               width: 80,
            //                               alignment: Alignment.center,
            //                               padding: EdgeInsets.symmetric(
            //                                   // horizontal: 35,
            //                                   vertical: 8),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(5),
            //                                   color: Colors.grey[300]),
            //                               child: Text("Tidak"),
            //                             ),
            //                             SizedBox(width: 10),
            //                             Container(
            //                               alignment: Alignment.center,
            //                               width: 80,
            //                               padding: EdgeInsets.symmetric(
            //                                   // horizontal: 30,
            //                                   vertical: 8),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(5),
            //                                   color: Colors.redAccent),
            //                               child: Text(
            //                                 "Ya",
            //                                 style:
            //                                     TextStyle(color: Colors.white),
            //                               ),
            //                             )
            //                           ]),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             );
            //           });
            //     }
            //   },
            // )
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile2.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Roy Prasetya",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Colors.black,
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 16),
                        SizedBox(width: 2),
                        Text("14 Okt 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Colors.black,
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Hari ini akan presentasi proyek yang akan menjelaskan progress pengerjaan proyek yang sudah dikerjakan oleh tim",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        fontWeight: FontWeight.normal)),
              ],
            )),
            SizedBox(width: 8),
            // PopupMenuButton(
            //   padding: EdgeInsets.zero,
            //   itemBuilder: (context) {
            //     return [
            //       PopupMenuItem(
            //         value: 'edit',
            //         child: Text('Edit'),
            //       ),
            //       PopupMenuItem(
            //         value: 'delete',
            //         child: Text('Delete'),
            //       )
            //     ];
            //   },
            //   onSelected: (String value) {
            //     print('You Click on po up menu item');
            //     if (value == "edit") {
            //       // Navigator.push(
            //       //     context,
            //       //     MaterialPageRoute(
            //       //         builder: (BuildContext context) =>
            //       //             AddPengumumanPage("Edit")));
            //     } else {
            //       showDialog(
            //           context: context,
            //           builder: (BuildContext context) {
            //             return Dialog(
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10.0)),
            //               child: Container(
            //                 padding: EdgeInsets.symmetric(
            //                     vertical: 20, horizontal: 0),
            //                 height: 250,
            //                 child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Image.asset('assets/images/alert.png',
            //                         height: 100),
            //                     SizedBox(height: 10),
            //                     Text(
            //                       "Apakah kamu yakin ingin menghapus Pengumuman?",
            //                       textAlign: TextAlign.center,
            //                       style: TextStyle(fontSize: 16, height: 1.3),
            //                     ),
            //                     SizedBox(height: 10),
            //                     Container(
            //                       child: Row(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.center,
            //                           children: [
            //                             Container(
            //                               width: 80,
            //                               alignment: Alignment.center,
            //                               padding: EdgeInsets.symmetric(
            //                                   // horizontal: 35,
            //                                   vertical: 8),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(5),
            //                                   color: Colors.grey[300]),
            //                               child: Text("Tidak"),
            //                             ),
            //                             SizedBox(width: 10),
            //                             Container(
            //                               alignment: Alignment.center,
            //                               width: 80,
            //                               padding: EdgeInsets.symmetric(
            //                                   // horizontal: 30,
            //                                   vertical: 8),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(5),
            //                                   color: Colors.redAccent),
            //                               child: Text(
            //                                 "Ya",
            //                                 style:
            //                                     TextStyle(color: Colors.white),
            //                               ),
            //                             )
            //                           ]),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             );
            //           });
            //     }
            //   },
            // )
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile2.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Roy Prasetya",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Colors.black,
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 16),
                        SizedBox(width: 2),
                        Text("14 Okt 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Colors.black,
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Hari ini akan presentasi proyek yang akan menjelaskan progress pengerjaan proyek yang sudah dikerjakan oleh tim",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        fontWeight: FontWeight.normal)),
              ],
            )),
            SizedBox(width: 8),
            // PopupMenuButton(
            //   padding: EdgeInsets.zero,
            //   itemBuilder: (context) {
            //     return [
            //       PopupMenuItem(
            //         value: 'edit',
            //         child: Text('Edit'),
            //       ),
            //       PopupMenuItem(
            //         value: 'delete',
            //         child: Text('Delete'),
            //       )
            //     ];
            //   },
            //   onSelected: (String value) {
            //     print('You Click on po up menu item');
            //     if (value == "edit") {
            //       // Navigator.push(
            //       //     context,
            //       //     MaterialPageRoute(
            //       //         builder: (BuildContext context) =>
            //       //             AddPengumumanPage("Edit")));
            //     } else {
            //       showDialog(
            //           context: context,
            //           builder: (BuildContext context) {
            //             return Dialog(
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10.0)),
            //               child: Container(
            //                 padding: EdgeInsets.symmetric(
            //                     vertical: 20, horizontal: 0),
            //                 height: 250,
            //                 child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Image.asset('assets/images/alert.png',
            //                         height: 100),
            //                     SizedBox(height: 10),
            //                     Text(
            //                       "Apakah kamu yakin ingin menghapus Pengumuman?",
            //                       textAlign: TextAlign.center,
            //                       style: TextStyle(fontSize: 16, height: 1.3),
            //                     ),
            //                     SizedBox(height: 10),
            //                     Container(
            //                       child: Row(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.center,
            //                           children: [
            //                             Container(
            //                               width: 80,
            //                               alignment: Alignment.center,
            //                               padding: EdgeInsets.symmetric(
            //                                   // horizontal: 35,
            //                                   vertical: 8),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(5),
            //                                   color: Colors.grey[300]),
            //                               child: Text("Tidak"),
            //                             ),
            //                             SizedBox(width: 10),
            //                             Container(
            //                               alignment: Alignment.center,
            //                               width: 80,
            //                               padding: EdgeInsets.symmetric(
            //                                   // horizontal: 30,
            //                                   vertical: 8),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(5),
            //                                   color: Colors.redAccent),
            //                               child: Text(
            //                                 "Ya",
            //                                 style:
            //                                     TextStyle(color: Colors.white),
            //                               ),
            //                             )
            //                           ]),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             );
            //           });
            //     }
            //   },
            // )
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile2.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Roy Prasetya",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Colors.black,
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 16),
                        SizedBox(width: 2),
                        Text("14 Okt 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Colors.black,
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Hari ini akan presentasi proyek yang akan menjelaskan progress pengerjaan proyek yang sudah dikerjakan oleh tim",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        fontWeight: FontWeight.normal)),
              ],
            )),
            SizedBox(width: 8),
            // PopupMenuButton(
            //   padding: EdgeInsets.zero,
            //   itemBuilder: (context) {
            //     return [
            //       PopupMenuItem(
            //         value: 'edit',
            //         child: Text('Edit'),
            //       ),
            //       PopupMenuItem(
            //         value: 'delete',
            //         child: Text('Delete'),
            //       )
            //     ];
            //   },
            //   onSelected: (String value) {
            //     print('You Click on po up menu item');
            //     if (value == "edit") {
            //       // Navigator.push(
            //       //     context,
            //       //     MaterialPageRoute(
            //       //         builder: (BuildContext context) =>
            //       //             AddPengumumanPage("Edit")));
            //     } else {
            //       showDialog(
            //           context: context,
            //           builder: (BuildContext context) {
            //             return Dialog(
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10.0)),
            //               child: Container(
            //                 padding: EdgeInsets.symmetric(
            //                     vertical: 20, horizontal: 0),
            //                 height: 250,
            //                 child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Image.asset('assets/images/alert.png',
            //                         height: 100),
            //                     SizedBox(height: 10),
            //                     Text(
            //                       "Apakah kamu yakin ingin menghapus Pengumuman?",
            //                       textAlign: TextAlign.center,
            //                       style: TextStyle(fontSize: 16, height: 1.3),
            //                     ),
            //                     SizedBox(height: 10),
            //                     Container(
            //                       child: Row(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.center,
            //                           children: [
            //                             Container(
            //                               width: 80,
            //                               alignment: Alignment.center,
            //                               padding: EdgeInsets.symmetric(
            //                                   // horizontal: 35,
            //                                   vertical: 8),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(5),
            //                                   color: Colors.grey[300]),
            //                               child: Text("Tidak"),
            //                             ),
            //                             SizedBox(width: 10),
            //                             Container(
            //                               alignment: Alignment.center,
            //                               width: 80,
            //                               padding: EdgeInsets.symmetric(
            //                                   // horizontal: 30,
            //                                   vertical: 8),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(5),
            //                                   color: Colors.redAccent),
            //                               child: Text(
            //                                 "Ya",
            //                                 style:
            //                                     TextStyle(color: Colors.white),
            //                               ),
            //                             )
            //                           ]),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             );
            //           });
            //     }
            //   },
            // )
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile2.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Roy Prasetya",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Colors.black,
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 16),
                        SizedBox(width: 2),
                        Text("14 Okt 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Colors.black,
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Hari ini akan presentasi proyek yang akan menjelaskan progress pengerjaan proyek yang sudah dikerjakan oleh tim",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        fontWeight: FontWeight.normal)),
              ],
            )),
            SizedBox(width: 8),
            // PopupMenuButton(
            //   padding: EdgeInsets.zero,
            //   itemBuilder: (context) {
            //     return [
            //       PopupMenuItem(
            //         value: 'edit',
            //         child: Text('Edit'),
            //       ),
            //       PopupMenuItem(
            //         value: 'delete',
            //         child: Text('Delete'),
            //       )
            //     ];
            //   },
            //   onSelected: (String value) {
            //     print('You Click on po up menu item');
            //     if (value == "edit") {
            //       // Navigator.push(
            //       //     context,
            //       //     MaterialPageRoute(
            //       //         builder: (BuildContext context) =>
            //       //             AddPengumumanPage("Edit")));
            //     } else {
            //       showDialog(
            //           context: context,
            //           builder: (BuildContext context) {
            //             return Dialog(
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10.0)),
            //               child: Container(
            //                 padding: EdgeInsets.symmetric(
            //                     vertical: 20, horizontal: 0),
            //                 height: 250,
            //                 child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Image.asset('assets/images/alert.png',
            //                         height: 100),
            //                     SizedBox(height: 10),
            //                     Text(
            //                       "Apakah kamu yakin ingin menghapus Pengumuman?",
            //                       textAlign: TextAlign.center,
            //                       style: TextStyle(fontSize: 16, height: 1.3),
            //                     ),
            //                     SizedBox(height: 10),
            //                     Container(
            //                       child: Row(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.center,
            //                           children: [
            //                             Container(
            //                               width: 80,
            //                               alignment: Alignment.center,
            //                               padding: EdgeInsets.symmetric(
            //                                   // horizontal: 35,
            //                                   vertical: 8),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(5),
            //                                   color: Colors.grey[300]),
            //                               child: Text("Tidak"),
            //                             ),
            //                             SizedBox(width: 10),
            //                             Container(
            //                               alignment: Alignment.center,
            //                               width: 80,
            //                               padding: EdgeInsets.symmetric(
            //                                   // horizontal: 30,
            //                                   vertical: 8),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(5),
            //                                   color: Colors.redAccent),
            //                               child: Text(
            //                                 "Ya",
            //                                 style:
            //                                     TextStyle(color: Colors.white),
            //                               ),
            //                             )
            //                           ]),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             );
            //           });
            //     }
            //   },
            // )
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile2.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Roy Prasetya",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Colors.black,
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 16),
                        SizedBox(width: 2),
                        Text("14 Okt 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Colors.black,
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Hari ini akan presentasi proyek yang akan menjelaskan progress pengerjaan proyek yang sudah dikerjakan oleh tim",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        fontWeight: FontWeight.normal)),
              ],
            )),
            SizedBox(width: 8),
            // PopupMenuButton(
            //   padding: EdgeInsets.zero,
            //   itemBuilder: (context) {
            //     return [
            //       PopupMenuItem(
            //         value: 'edit',
            //         child: Text('Edit'),
            //       ),
            //       PopupMenuItem(
            //         value: 'delete',
            //         child: Text('Delete'),
            //       )
            //     ];
            //   },
            //   onSelected: (String value) {
            //     print('You Click on po up menu item');
            //     if (value == "edit") {
            //       // Navigator.push(
            //       //     context,
            //       //     MaterialPageRoute(
            //       //         builder: (BuildContext context) =>
            //       //             AddPengumumanPage("Edit")));
            //     } else {
            //       showDialog(
            //           context: context,
            //           builder: (BuildContext context) {
            //             return Dialog(
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10.0)),
            //               child: Container(
            //                 padding: EdgeInsets.symmetric(
            //                     vertical: 20, horizontal: 0),
            //                 height: 250,
            //                 child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Image.asset('assets/images/alert.png',
            //                         height: 100),
            //                     SizedBox(height: 10),
            //                     Text(
            //                       "Apakah kamu yakin ingin menghapus Pengumuman?",
            //                       textAlign: TextAlign.center,
            //                       style: TextStyle(fontSize: 16, height: 1.3),
            //                     ),
            //                     SizedBox(height: 10),
            //                     Container(
            //                       child: Row(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.center,
            //                           children: [
            //                             Container(
            //                               width: 80,
            //                               alignment: Alignment.center,
            //                               padding: EdgeInsets.symmetric(
            //                                   // horizontal: 35,
            //                                   vertical: 8),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(5),
            //                                   color: Colors.grey[300]),
            //                               child: Text("Tidak"),
            //                             ),
            //                             SizedBox(width: 10),
            //                             Container(
            //                               alignment: Alignment.center,
            //                               width: 80,
            //                               padding: EdgeInsets.symmetric(
            //                                   // horizontal: 30,
            //                                   vertical: 8),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(5),
            //                                   color: Colors.redAccent),
            //                               child: Text(
            //                                 "Ya",
            //                                 style:
            //                                     TextStyle(color: Colors.white),
            //                               ),
            //                             )
            //                           ]),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             );
            //           });
            //     }
            //   },
            // )
          ]),
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_learning/nav/course_view.dart';
import 'package:infinite_learning/pages/course/add_pengumuman_page.dart';
import 'package:infinite_learning/pages/course/add_tugas_page.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  var _tab = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 60),
              child: Text(
                "Profile",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Text(
                      "Detail Data",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3), //color of shadow
                        spreadRadius: 1, //spread radius
                        blurRadius: 2, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/mentor.jpg',
                          height: 120, width: 120),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jessica Aulia",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Divider(),
                              Text("ID: 20103848",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: Colors.grey)),
                              Divider(),
                              Text("Mentor: Web Development",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), 
                          spreadRadius: 1, 
                          blurRadius: 2, 
                          offset: Offset(0, 2), 
                          
                        ),
                      ],
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              title: Text("Mentee Title",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                              collapsedIconColor: Colors.black,
                              collapsedTextColor: Colors.black,
                              iconColor: Colors.black,
                              textColor: Colors.black,
                              childrenPadding:
                                  EdgeInsets.symmetric(vertical: 10),
                              backgroundColor: Colors.white,
                              collapsedBackgroundColor: Colors.white,
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    Text("1. Annisa Syarifa")),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3),
                                                    child: Text(
                                                        "annisasyarifa@gmail.com"))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text("1930DG")),
                                                Expanded(
                                                    flex: 3,
                                                    child:
                                                        Text("Web Development")),
                                              ],
                                            ))
                                      ],
                                    )),
                                SizedBox(height: 10),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    Text("2. Andika Malik")),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3),
                                                    child: Text(
                                                        "andikamalik@gmail.com"))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text("2030DG")),
                                                Expanded(
                                                    flex: 3,
                                                    child:
                                                        Text("Web Development")),
                                              ],
                                            ))
                                      ],
                                    )),
                                SizedBox(height: 10),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    Text("3. Salwa Nuraini")),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3),
                                                    child: Text(
                                                        "salwanuaraini892@gmail.com"))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text("2130DG")),
                                                Expanded(
                                                    flex: 3,
                                                    child:
                                                        Text("Web Development")),
                                              ],
                                            ))
                                      ],
                                    )),
                                SizedBox(height: 10),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    Text("4. Risky Daulat")),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3),
                                                    child: Text(
                                                        "riskydaulat@gmail.com"))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text("2230DG")),
                                                Expanded(
                                                    flex: 3,
                                                    child:
                                                        Text("Web Development")),
                                              ],
                                            ))
                                      ],
                                    )),
                                SizedBox(height: 10),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    Text("5. Muhammad Sandi")),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3),
                                                    child: Text(
                                                        "muhammadsandi@gmail.com"))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text("2430DG")),
                                                Expanded(
                                                    flex: 3,
                                                    child:
                                                        Text("Web Development")),
                                              ],
                                            ))
                                      ],
                                    )),
                                SizedBox(height: 10),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    Text("5. Sandika Amalia")),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3),
                                                    child: Text(
                                                        "sandika amalia@gmail.com"))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text("2530DG")),
                                                Expanded(
                                                    flex: 3,
                                                    child:
                                                        Text("Web Development")),
                                              ],
                                            ))
                                      ],
                                    ))
                              ],
                            )))),
                SizedBox(height: 60),
                GestureDetector(
                    onTap: () {
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('assets/images/alert.png',
                                          height: 100),
                                      SizedBox(height: 10),
                                      Text(
                                        "Apakah kamu yakin ingin Keluar?",
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
                                              GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Container(
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
                                                  )),
                                              SizedBox(width: 10),
                                              GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                    Navigator.of(context)
                                                        .pushNamedAndRemoveUntil(
                                                            '/login',
                                                            (Route<dynamic>
                                                                    route) =>
                                                                false);
                                                  },
                                                  child: Container(
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
                                                  ))
                                            ]),
                                      )
                                    ],
                                  ),
                                ));
                          });
                    },
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: MediaQuery.of(context).size.width / 1.6),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.3), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 2, // blur radius
                              offset:
                                  Offset(0, 2), // changes position of shadow
                              //first paramerter of offset is left-right
                              //second parameter is top to down
                            ),
                            //you can set more BoxShadow() here
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/log-out.png',
                              height: 24,
                            ),
                            SizedBox(width: 5),
                            Text("Keluar",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.red))
                          ],
                        ))),
                SizedBox(height: 20),
              ],
            ),
          )
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
                  color: Colors.blue[50],
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
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
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
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
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
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
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
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
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
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
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
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
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
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
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
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
                      child: Text("Tugas 1",
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
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
                  // GestureDetector(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (BuildContext context) =>
                  //                   AddTugasPage("Tambah")));
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
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
                  // GestureDetector(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (BuildContext context) =>
                  //                   AddTugasPage("Tambah")));
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
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
                  // GestureDetector(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (BuildContext context) =>
                  //                   AddTugasPage("Tambah")));
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
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
                  // GestureDetector(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (BuildContext context) =>
                  //                   AddTugasPage("Tambah")));
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
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
                  // GestureDetector(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (BuildContext context) =>
                  //                   AddTugasPage("Tambah")));
                  //     },
                  //     child: Icon(
                  //       Icons.add_circle_outline,
                  //       size: 24,
                  // ))
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
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
                  // GestureDetector(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (BuildContext context) =>
                  //                   AddTugasPage("Tambah")));
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
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
                  // GestureDetector(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (BuildContext context) =>
                  //                   AddTugasPage("Tambah")));
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
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
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
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 30,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Morris Santiago Sagala S.sn. M.Sn. (Teori) & Morris Santiago Sagala, S.Tr. Kom., (Praktikum)\nKelas: MJ7A Pagi & Merdeka Belajar\nJadwal/Jam: Rabu, 11.10-12.50 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
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
              Text("Meeting 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 30,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Morris Santiago Sagala S.sn. M.Sn. (Teori) & Morris Santiago Sagala, S.Tr. Kom., (Praktikum)\nKelas: MJ7A Pagi & Merdeka Belajar\nJadwal/Jam: Rabu, 11.10-12.50 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
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
              Text("Meeting 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 30,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Morris Santiago Sagala S.sn. M.Sn. (Teori) & Morris Santiago Sagala, S.Tr. Kom., (Praktikum)\nKelas: MJ7A Pagi & Merdeka Belajar\nJadwal/Jam: Rabu, 11.10-12.50 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
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
              Text("Meeting 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 30,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Morris Santiago Sagala S.sn. M.Sn. (Teori) & Morris Santiago Sagala, S.Tr. Kom., (Praktikum)\nKelas: MJ7A Pagi & Merdeka Belajar\nJadwal/Jam: Rabu, 11.10-12.50 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
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
              Text("Meeting 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 30,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Morris Santiago Sagala S.sn. M.Sn. (Teori) & Morris Santiago Sagala, S.Tr. Kom., (Praktikum)\nKelas: MJ7A Pagi & Merdeka Belajar\nJadwal/Jam: Rabu, 11.10-12.50 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
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
              Text("Meeting 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 30,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Morris Santiago Sagala S.sn. M.Sn. (Teori) & Morris Santiago Sagala, S.Tr. Kom., (Praktikum)\nKelas: MJ7A Pagi & Merdeka Belajar\nJadwal/Jam: Rabu, 11.10-12.50 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
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
              Text("Meeting 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 30,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Morris Santiago Sagala S.sn. M.Sn. (Teori) & Morris Santiago Sagala, S.Tr. Kom., (Praktikum)\nKelas: MJ7A Pagi & Merdeka Belajar\nJadwal/Jam: Rabu, 11.10-12.50 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
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
              Text("Meeting 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 30,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Morris Santiago Sagala S.sn. M.Sn. (Teori) & Morris Santiago Sagala, S.Tr. Kom., (Praktikum)\nKelas: MJ7A Pagi & Merdeka Belajar\nJadwal/Jam: Rabu, 11.10-12.50 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
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
                  color: Colors.blue[50],
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
            color: Colors.blue[50],
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
            color: Colors.blue[50],
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
            color: Colors.blue[50],
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
            color: Colors.blue[50],
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
            color: Colors.blue[50],
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
            color: Colors.blue[50],
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

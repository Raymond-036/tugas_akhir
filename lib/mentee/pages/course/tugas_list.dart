import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class TugasList extends StatefulWidget {
  const TugasList({super.key});

  @override
  State<TugasList> createState() => TugasListState();
}

class TugasListState extends State<TugasList> {
  var _clickedDetails = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: _clickedDetails
            ? _buildTugasDetail()
            : ListView(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                children: [
                  GestureDetector(
                      onTap: () {
                        if (!_clickedDetails) {
                          setState(() {
                            _clickedDetails = true;
                          });
                        }
                      },
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tugas 1",
                                style: TextStyle(
                                    fontSize: 16,
                                    height: 1.4,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 15, bottom: 15),
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/upload.png',
                                      height: 30,
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Pemahaman Dasar UI/UX Design",
                                            style: TextStyle(
                                                fontSize: 14,
                                                height: 1.4,
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline,
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
                      )),
                  SizedBox(height: 20),
                  GestureDetector(
                      onTap: () {
                        if (!_clickedDetails) {
                          setState(() {
                            _clickedDetails = true;
                          });
                        }
                      },
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tugas 2",
                                style: TextStyle(
                                    fontSize: 16,
                                    height: 1.4,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 15, bottom: 15),
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/upload.png',
                                      height: 30,
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Pemahaman Dasar UI/UX Design",
                                            style: TextStyle(
                                                fontSize: 14,
                                                height: 1.4,
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline,
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
                      )),
                  SizedBox(height: 20),
                  GestureDetector(
                      onTap: () {
                        if (!_clickedDetails) {
                          setState(() {
                            _clickedDetails = true;
                          });
                        }
                      },
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tugas 3",
                                style: TextStyle(
                                    fontSize: 16,
                                    height: 1.4,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 15, bottom: 15),
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/upload.png',
                                      height: 30,
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Pemahaman Dasar UI/UX Design",
                                            style: TextStyle(
                                                fontSize: 14,
                                                height: 1.4,
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline,
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
                      )),
                  SizedBox(height: 20),
                  GestureDetector(
                      onTap: () {
                        if (!_clickedDetails) {
                          setState(() {
                            _clickedDetails = true;
                          });
                        }
                      },
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tugas 4",
                                style: TextStyle(
                                    fontSize: 16,
                                    height: 1.4,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 15, bottom: 15),
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/upload.png',
                                      height: 30,
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Pemahaman Dasar UI/UX Design",
                                            style: TextStyle(
                                                fontSize: 14,
                                                height: 1.4,
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline,
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
                      )),
                  SizedBox(height: 20),
                  GestureDetector(
                      onTap: () {
                        if (!_clickedDetails) {
                          setState(() {
                            _clickedDetails = true;
                          });
                        }
                      },
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tugas 5",
                                style: TextStyle(
                                    fontSize: 16,
                                    height: 1.4,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 15, bottom: 15),
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/upload.png',
                                      height: 30,
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Pemahaman Dasar UI/UX Design",
                                            style: TextStyle(
                                                fontSize: 14,
                                                height: 1.4,
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline,
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
                      )),
                ],
              ));
  }

  Widget _buildTugasDetail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    if (_clickedDetails) {
                      setState(() {
                        _clickedDetails = false;
                      });
                    }
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              Text("Tugas 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                'assets/images/upload.png',
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
                  Text("Submission Status",
                      style: TextStyle(
                          fontSize: 12,
                          height: 1.4,
                          fontWeight: FontWeight.normal)),
                ],
              ))
            ]),
          ),
          SizedBox(height: 10),
          Container(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: 50,
                              padding: EdgeInsets.all(5),
                              decoration:
                                  BoxDecoration(color: Colors.grey[300]),
                              child: Text("Submission Status",
                                  style: TextStyle(
                                      fontSize: 12,
                                      height: 1.4,
                                      fontWeight: FontWeight.normal)),
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1, color: Colors.grey[300]!)),
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                alignment: Alignment.centerLeft,
                                child: Text("No attempt",
                                    style: TextStyle(
                                        fontSize: 12,
                                        height: 1.4,
                                        fontWeight: FontWeight.normal)))),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: 50,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color: Colors.white),
                              child: Text("Grading Status",
                                  style: TextStyle(
                                      fontSize: 12,
                                      height: 1.4,
                                      fontWeight: FontWeight.normal)),
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.symmetric(
                                        vertical: BorderSide(
                                            width: 1,
                                            color: Colors.grey[300]!))),
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                alignment: Alignment.centerLeft,
                                child: Text("Not graded",
                                    style: TextStyle(
                                        fontSize: 12,
                                        height: 1.4,
                                        fontWeight: FontWeight.normal)))),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: 50,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(5),
                              decoration:
                                  BoxDecoration(color: Colors.grey[300]),
                              child: Text("Due Date",
                                  style: TextStyle(
                                      fontSize: 12,
                                      height: 1.4,
                                      fontWeight: FontWeight.normal)),
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1, color: Colors.grey[300]!)),
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                alignment: Alignment.centerLeft,
                                child: Text("Monday, 26 February 2024",
                                    style: TextStyle(
                                        fontSize: 12,
                                        height: 1.4,
                                        fontWeight: FontWeight.normal)))),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: 50,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color: Colors.white),
                              child: Text("Time Remining",
                                  style: TextStyle(
                                      fontSize: 12,
                                      height: 1.4,
                                      fontWeight: FontWeight.normal)),
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.symmetric(
                                        vertical: BorderSide(
                                            width: 1,
                                            color: Colors.grey[300]!))),
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                alignment: Alignment.centerLeft,
                                child: Text("Assignment was submitted",
                                    style: TextStyle(
                                        fontSize: 12,
                                        height: 1.4,
                                        fontWeight: FontWeight.normal)))),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: 50,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(5),
                              decoration:
                                  BoxDecoration(color: Colors.grey[300]),
                              child: Text("Last Modified",
                                  style: TextStyle(
                                      fontSize: 12,
                                      height: 1.4,
                                      fontWeight: FontWeight.normal)),
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1, color: Colors.grey[300]!)),
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                alignment: Alignment.centerLeft,
                                child: Text("-",
                                    style: TextStyle(
                                        fontSize: 18,
                                        height: 1.4,
                                        fontWeight: FontWeight.normal)))),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    // height: 30,
                    // alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)),
                    child: Text("Add Submission",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
                            fontWeight: FontWeight.normal)),
                  ),
                  SizedBox(height: 10),
                  Text("You have not a submission yet",
                      style: TextStyle(
                          fontSize: 12,
                          height: 1.4,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey)),
                  SizedBox(height: 20),
                ],
              )),
        ],
      ),
    );
  }
}

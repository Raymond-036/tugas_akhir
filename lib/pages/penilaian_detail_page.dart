import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_learning/nav/course_view.dart';

class PenilaianDetailPage extends StatefulWidget {
  const PenilaianDetailPage({super.key});

  @override
  State<PenilaianDetailPage> createState() => _PenilaianDetailPageState();
}

class _PenilaianDetailPageState extends State<PenilaianDetailPage> {
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
                    "Penilaian Tugas",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 10),
              Expanded(
                  child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                children: [
                  Container(
                      padding: EdgeInsets.only(
                          left: 10, top: 15, bottom: 15, right: 10),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/profile3.png',
                                    height: 40),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Terry (4312011067)",
                                            style: TextStyle(
                                                fontSize: 14,
                                                height: 1.4,
                                                color: Colors.black,
                                                // decoration: TextDecoration.underline,
                                                fontWeight: FontWeight.bold)),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("05 Sept 2023",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    height: 1.4,
                                                    color: Colors.black,
                                                    // decoration: TextDecoration.underline,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                      margin: EdgeInsets.only(right: 8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 18,
                                                    vertical: 5),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        width: 1.5,
                                                        color:
                                                            Colors.blueAccent)),
                                                child: Text("Score",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        height: 1.4,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors
                                                            .blueAccent))),
                                            SizedBox(width: 5),
                                            Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5, vertical: 5),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: Colors.blueAccent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        width: 1.5,
                                                        color:
                                                            Colors.blueAccent)),
                                                child: Text("Download",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        height: 1.4,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.white))),
                                          ]),
                                    ),
                                  ],
                                )),
                              ]),
                          SizedBox(height: 30),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(width: 2, color: Colors.black54),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Pengenalan Dasar HTML",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(height: 25),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nama: Loyd Hawkins"),
                                    Text("NIM: 4312011067"),
                                  ],
                                ),
                                SizedBox(height: 40),
                                Container(
                                  child: Text(
                                      "HyperText Markup Language (HTML) adalah bahasa markah standar untuk dokumen yang dirancang untuk ditampilkan di peramban internet. Ini dapat dibantu oleh teknologi seperti Cascading Style Sheets (CSS) dan bahasa skrip lainnya seperti JavaScript, VBScript, dan PHP. Peramban internet menerima dokumen HTML dari server web atau dari penyimpanan lokal dan membuat dokumen menjadi halaman web multimedia. HTML menggambarkan struktur halaman web secara semantik dan isyarat awal yang disertakan untuk penampilan dokumen. Elemen HTML digambarkan oleh tag, ditulis menggunakan tanda kurung siku. Tag seperti <img /> dan <input /> langsung perkenalkan konten ke dalam halaman. Tag lain seperti <p> mengelilingi dan memberikan informasi tentang teks dokumen dan mungkin menyertakan tag lain sebagai sub-elemen. Peramban tidak menampilkan tag HTML, tetapi menggunakannya untuk menafsirkan konten halaman"),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
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
                            child: Text("Simpan",
                                style: TextStyle(
                                    fontSize: 14,
                                    height: 1.4,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: 10),
                        ],
                      )),
                  SizedBox(height: 20),
                ],
              ))
            ],
          ),
        ));
  }
}

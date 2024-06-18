import 'dart:convert';

import 'package:expandable_datatable/expandable_datatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_learning/pages/penilaian_detail_page.dart';

import '../model/models.dart';

class PenilaianView extends StatefulWidget {
  const PenilaianView({Key? key}) : super(key: key);

  @override
  State<PenilaianView> createState() => _PenilaianViewState();
}

class _PenilaianViewState extends State<PenilaianView> {
  List<Users> userList = [];

  late List<ExpandableColumn<dynamic>> headers;
  late List<ExpandableRow> rows;

  bool _isLoading = true;

  void setLoading() {
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();

    fetch();
  }

  void fetch() async {
    userList = await getUsers();

    createDataSource();

    setLoading();
  }

  Future<List<Users>> getUsers() async {
    final String response = await rootBundle.loadString('assets/dumb.json');

    final data = await json.decode(response);

    API apiData = API.fromJson(data);

    if (apiData.users != null) {
      return apiData.users!;
    }

    return [];
  }

  void createDataSource() {
    headers = [
      ExpandableColumn<int>(columnTitle: "No", columnFlex: 2),
      ExpandableColumn<String>(columnTitle: "Nama", columnFlex: 2),
      ExpandableColumn<int>(columnTitle: "ID", columnFlex: 3),
      ExpandableColumn<String>(columnTitle: "Role", columnFlex: 2),
      ExpandableColumn<String>(columnTitle: "Submit Date", columnFlex: 3),
      ExpandableColumn<String>(columnTitle: "Status", columnFlex: 2),
      ExpandableColumn<String>(columnTitle: "Score", columnFlex: 0),
    ];

    rows = userList.map<ExpandableRow>((e) {
      return ExpandableRow(cells: [
        ExpandableCell<int>(columnTitle: "No", value: e.id),
        ExpandableCell<String>(columnTitle: "Nama", value: e.firstName),
        ExpandableCell<int>(columnTitle: "ID", value: e.height),
        ExpandableCell<String>(columnTitle: "Role", value: e.maidenName),
        ExpandableCell<String>(columnTitle: "Submit Date", value: e.birthDate),
        ExpandableCell<String>(columnTitle: "Status", value: e.eyeColor),
        ExpandableCell<String>(columnTitle: "Score", value: ""),
      ]);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: !_isLoading
          ? LayoutBuilder(builder: (context, constraints) {
              int visibleCount = 6;
           

              return ExpandableTheme(
                data: ExpandableThemeData(
                  context,
                  // contentPadding: const EdgeInsets.all(20),
                  contentPadding: EdgeInsets.symmetric(horizontal: 5),
                  expandedBorderColor: Colors.transparent,
                  paginationSize: 30,
                  paginationBorderRadius: BorderRadius.circular(10),
                  rowTextStyle: TextStyle(fontSize: 11),
                  headerHeight: 50,
                  headerTextStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                  headerColor: Color.fromARGB(255, 28, 104, 158),
                  evenRowColor: Colors.blue[50],
                  oddRowColor: Colors.white60,
                  headerTextMaxLines: 4,
                  headerSortIconColor: const Color(0xFF6c59cf),
                  paginationSelectedFillColor: Colors.blueAccent,
                  paginationSelectedTextColor: Colors.white,
                ),
                child: ExpandableDataTable(
                  headers: headers,
                  rows: rows,
                  multipleExpansion: false,
                  isEditable: false,
                  onRowChanged: (newRow) {
                    print(newRow.cells[01].value);
                  },
                  onPageChanged: (page) {
                    print(page);
                  },
                  renderExpansionContent: (row) => Container(
                    margin:
                        EdgeInsets.only(right: 20, left: 10, top: 5, bottom: 5),
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Text(
                            "Score:",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Container(
                              width: 100,
                              child: TextField(
                                autofocus: false,
                                autocorrect: false,
                                textAlign: TextAlign.center,
                                // controller: ,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 5),
                                    hintText: "100",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(255, 249, 227, 227), width: 2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(255, 249, 227, 227), width: 2)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(255, 249, 227, 227), width: 2))),
                              ))
                        ]),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          PenilaianDetailPage()));
                            },
                            child: SvgPicture.asset(
                                'assets/icons/penilaian.svg',
                                color: Colors.black))
                      ],
                    ),
                  ),
                  visibleColumnCount: visibleCount,
                ),
              );
            })
          : const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildEditDialog(
      ExpandableRow row, Function(ExpandableRow) onSuccess) {
    return AlertDialog(
      title: SizedBox(
        height: 300,
        child: TextButton(
          child: const Text("Change name"),
          onPressed: () {
            row.cells[1].value = "x3";
            onSuccess(row);
          },
        ),
      ),
    );
  }
}

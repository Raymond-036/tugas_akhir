import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_learning/nav/course_view.dart';
import 'package:infinite_learning/nav/home_view.dart';
import 'package:infinite_learning/nav/penilaian_view.dart';
import 'package:infinite_learning/nav/profile_view.dart';
import 'package:infinite_learning/pages/pengumuman_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  //
  static List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    CourseView(),
    PenilaianView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(120.0), // here the desired height
            child: _selectedIndex == 2 || _selectedIndex == 3
                ? SafeArea(child: SizedBox())
                : SafeArea(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        // alignment: Alignment.center,
                        height: 120,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            Expanded(
                                child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/profile.png',
                                  height: 50,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hai, Mentor!",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text("Mentor Web Development",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  ],
                                )
                              ],
                            )),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              PengumumanPage()));
                                },
                                child: Image.asset(
                                  'assets/images/Notification.png',
                                  height: 30,
                                ))
                          ],
                        )),
                  )),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: SvgPicture.asset('assets/icons/home.svg',
                        color: _selectedIndex == 0
                            ? Colors.blue[800]
                            : Colors.black)),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: SvgPicture.asset('assets/icons/course.svg',
                        color: _selectedIndex == 1
                            ? Colors.blue[800]
                            : Colors.black)),
                label: 'Course',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: SvgPicture.asset('assets/icons/penilaian.svg',
                        color: _selectedIndex == 2
                            ? Colors.blue[800]
                            : Colors.black)),
                label: 'Penilaian',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: SvgPicture.asset('assets/icons/user.svg',
                        color: _selectedIndex == 3
                            ? Colors.blue[800]
                            : Colors.black)),
                label: 'Profil',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue[700],
            onTap: _onItemTapped,
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './nav/course_view.dart';
import './nav/home_view.dart';
import './nav/profile_view.dart';
import './pages/pengumuman_page.dart';

class HomeMentee extends StatefulWidget {
  const HomeMentee({super.key});

  @override
  State<HomeMentee> createState() => _HomeMenteeState();
}

class _HomeMenteeState extends State<HomeMentee> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    CourseView(),
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
            child: _selectedIndex == 1 || _selectedIndex == 2
                ? SafeArea(child: SizedBox(height: 50))
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
                                      "Hai, Jeje!",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text("Mentee Web Development",
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
                    child: SvgPicture.asset('assets/icons/user.svg',
                        color: _selectedIndex == 2
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

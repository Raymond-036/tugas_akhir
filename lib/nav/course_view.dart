import 'package:flutter/material.dart';
import 'package:infinite_learning/pages/course_page.dart';

class CourseView extends StatefulWidget {
  const CourseView({super.key});

  @override
  State<CourseView> createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "Daftar Kelas",
                    style: TextStyle(
                        fontSize: 18, height: 1.4, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 35,
                  child: TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: "Search...",
                      alignLabelWithHint: true,
                      suffixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black45, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black45, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black45, width: 2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              children: [
                _buildCourseCard(
                  context,
                  'assets/images/laptop.png',
                  'Web Development & UIUX Design',
                  'Web development adalah proses pembuatan dan pemeliharaan situs web. Ini mencakup berbagai aspek, mulai dari desain antarmuka pengguna (UI) dan pengalaman pengguna (UX) hingga pemrograman sisi klien dan server. Teknologi yang digunakan dalam web development meliputi HTML, CSS, JavaScript, serta berbagai framework dan pustaka untuk membangun aplikasi web yang responsif, interaktif, dan fungsional.',
                  CoursePage(),
                ),
                SizedBox(height: 20),
                _buildCourseCard(
                  context,
                  'assets/images/androidmobile.jpg',
                  'Android Mobile Development & UIUX Design',
                  'Android Mobile Development adalah proses pembuatan aplikasi untuk perangkat Android menggunakan bahasa seperti Java dan Kotlin serta alat seperti Android Studio, dengan fokus pada efisiensi dan stabilitas aplikasi. UI/UX Design, yang mencakup desain antarmuka pengguna (UI) dan pengalaman pengguna (UX), berfokus pada menciptakan tata letak visual yang menarik dan interaksi yang intuitif, memastikan aplikasi mudah digunakan dan memenuhi kebutuhan pengguna. ',
                  CoursePage(),
                ),
                SizedBox(height: 20),
                _buildCourseCard(
                  context,
                  'assets/images/redhat.jpg',
                  'IBM Academy: Hybrid Cloud & Red Hat',
                  'Hybrid Cloud & Red Hat adalah program pelatihan yang ditawarkan oleh IBM untuk mempelajari teknologi hybrid cloud dan solusi Red Hat. Program ini bertujuan untuk mengedukasi profesional TI tentang penerapan dan pengelolaan lingkungan cloud hybrid, yang menggabungkan sumber daya cloud pribadi dan publik. ',
                  CoursePage(),
                ),
                SizedBox(height: 20),
                _buildCourseCard(
                  context,
                  'assets/images/ai.jpg',
                  'IBM Academy: Advanced AI',
                  'Advanced AI adalah program pendidikan yang dirancang untuk memberikan pemahaman mendalam dan keterampilan praktis dalam bidang kecerdasan buatan (AI) tingkat lanjut. Program ini mencakup berbagai topik seperti pembelajaran mesin (machine learning), pembelajaran mendalam (deep learning), pengolahan bahasa alami (NLP), visi komputer, dan analitik prediktif. ',
                  CoursePage(),
                ),
                SizedBox(height: 20),
                _buildCourseCard(
                  context,
                  'assets/images/gamedesign.jpg',
                  'Game Design & Development',
                  'Game Design & Development adalah proses pembuatan permainan video yang melibatkan berbagai disiplin ilmu, termasuk desain, pemrograman, seni, dan narasi. Desain game berfokus pada konsep dan aturan permainan, termasuk mekanik, level, karakter, dan alur cerita.',
                  CoursePage(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard(BuildContext context, String imagePath, String title, String description, Widget nextPage) {
    bool isExpanded = false;

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => nextPage));
          },
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: 1100,
                    height: 120,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(fontSize: 16, height: 1.4, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  isExpanded ? description : '${description.substring(0, 100)}...',
                  style: TextStyle(fontSize: 12, height: 1.4, fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Text(
                    isExpanded ? 'Lihat Lebih Sedikit' : 'Lihat Selengkapnya',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:infinite_learning/mentee/home.dart';
import 'package:infinite_learning/utils/pallete.dart';
import '../home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _emailController = TextEditingController();
  var _passController = TextEditingController();

  var _formKey = GlobalKey<FormState>();
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  var _obscureText;
  final _globalKey = GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();

    _obscureText = true;
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        backgroundColor: Pallete.bgPage,
        body: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildActions(),
                    SizedBox(height: 30),
                    _buildLoginLabel(),
                    SizedBox(height: 60),
                    _buildEmailField(),
                    SizedBox(height: 30),
                    _buildPasswordField(),
                    SizedBox(height: 10),
                    _buildRememberMeText(),
                    SizedBox(height: 20),
                    _buildMasukBtn(),
                    SizedBox(height: 20),
                    _buildMasukMenteeBtn(),
                    SizedBox(height: 8),
                    _buildRegisterText(),
                    SizedBox(height: 20),
                  ],
                ))));
  }

  Future _validateAndSubmit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    _formKey.currentState!.save();
  }

  Widget _buildEmailField() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            TextFormField(
                textAlign: TextAlign.start,
                autocorrect: false,
                controller: _emailController,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  // labelText: "Nama Lengkap",
                  hintText: "masukkan email anda",
                  hintStyle: TextStyle(fontSize: 16),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.only(left: 22, top: 17, bottom: 17),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                ),
                validator: (v) {
                  if (v!.isEmpty) {
                    return "Email tidak boleh kosong.";
                  } else if (v.isEmpty ||
                      !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                          .hasMatch(v)) {
                    return "Mohon masukkan email yang valid.";
                  }
                })
          ],
        ));
  }

  Widget _buildPasswordField() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Password",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            TextFormField(
              textAlign: TextAlign.start,
              // autocorrect: false,
              obscureText: _obscureText,
              autofocus: false,
              controller: _passController,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: TextStyle(fontSize: 16),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 22, top: 17, bottom: 17),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 3.0,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 3.0,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 3.0,
                  ),
                ),
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText
                            ? _obscureText = false
                            : _obscureText = true;
                      });
                    },
                    child: Container(
                        margin: EdgeInsets.only(right: 0),
                        // padding: EdgeInsets.all(2),
                        child: Image.asset('assets/images/eye.png',
                            height: 24,
                            color: _obscureText ? Colors.grey : Colors.black))),
              ),
              validator: (v) {
                if (v!.isEmpty) {
                  return "Password tidak boleh kosong.";
                } else if (v.length < 6) {
                  return "Password minimal terdiri 6 karakter.";
                }
              },
            )
          ],
        ));
  }

  Widget _buildMasukBtn() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  // side: BorderSide(color: Colors.red)
                )),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black)),
            onPressed: () {
              FocusManager.instance.primaryFocus?.unfocus();

              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => Home()));
            },
            child: Text("Sign In",
                style: TextStyle(fontSize: 20, color: Pallete.cream))));
  }

  Widget _buildMasukMenteeBtn() {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Row(children: [
              Expanded(child: Divider()),
              SizedBox(width: 20),
              Text("OR", style: TextStyle(fontSize: 20, color: Pallete.grey)),
              SizedBox(width: 20),
              Expanded(child: Divider()),
            ]),
          ),
          SizedBox(height: 20),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        // side: BorderSide(color: Colors.red)
                      )),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueAccent)),
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => HomeMentee()));
                  },
                  child: Text("Sign In as Mentee",
                      style: TextStyle(fontSize: 20, color: Pallete.cream))))
        ],
      ),
    );
  }

  Widget _buildActions() {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 5, top: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/sub_logo.png',
            height: 80,
          ),
        ],
      ),
    );
  }

  Widget _buildRememberMeText() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Transform.scale(
                scale: 1.4,
                child: Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    value: false,
                    onChanged: (v) {})),
            Container(
                alignment: Alignment.centerRight,
                // margin: EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  "Remember Me",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 16,
                      // fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400]),
                ))
          ],
        ));
  }

  Widget _buildRegisterText() {
    TextStyle defaultStyle = TextStyle(
        color: Colors.grey, fontSize: 17.0, fontWeight: FontWeight.bold);
    TextStyle linkStyle = TextStyle(
        color: Colors.blue[700],
        height: 1.6,
        fontSize: 17,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline);

    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: defaultStyle,
            children: <TextSpan>[
              TextSpan(text: 'Having a trouble while Sign In? '),
              TextSpan(
                  text: 'Contact here',
                  style: linkStyle,
                  recognizer: TapGestureRecognizer()..onTap = () {}),
            ],
          ),
        ));
  }

  Widget _buildLoginLabel() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to Infinite Learning's",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              "Learning Management System!",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            )
          ],
        ));
  }
}

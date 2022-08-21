import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'main.dart';
import 'constant.dart';
import 'package:complaintapp/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  String CNIC;

  void initState() {
    setState(() {
      showSpinner = false;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void showInSnackBar(String value) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        decoration: BoxDecoration(color: Colors.white
            // image: DecorationImage(
            //   // image: AssetImage("assets/images/bg.jpg"),
            //   fit: BoxFit.cover,
            // ),
            ),
        child: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                    child: Image.asset(
                  'assets/images/ACMlogo.png',
                  height: 230,
                  width: 230,
                )),
                SizedBox(
                  height: 48.0,
                ),
                TextField(
                  style: TextStyle(color: Color(0xff1a7a30)),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    CNIC = value.trim();
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your CNIC number'),
                ),
                SizedBox(
                  height: 8.0,
                ),
                //

                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(60, 8, 60, 0),
                    child: RaisedButton(
                      textColor: Colors.black,
                      color: Colors.white60,
                      child: Text(
                        "Log In",
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: () async {
                        setState(() {
                          showSpinner = true;
                        });
                        print(CNIC);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

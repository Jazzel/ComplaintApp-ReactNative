import 'dart:math';
import 'package:complaintapp/RegisterComplaint.dart';
import 'package:flutter/material.dart';
import 'package:complaintapp/LoginScreen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List user_complaints = [];

  search_myreportedproblems() async {
    // user_reviews = await diary_.Search_myDiaries();
    // setState(() {});
    // return user_reviews;
  }

  onGoBack(dynamic value) {
    setState(() {});
  }

  Random random = new Random();

  @override
  void initState() {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => search_myreportedproblems());
  }

  Future<bool> _onBackPressed() async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text('Confirmation'),
            content: Text('Are you sure you want to exit ?'),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        ),
                child: Text('Yes'),
              ),
               FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text('No'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    bool loading = true;
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            leading: Container(),
            title: Center(
              child: Text(
                "ACM",
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            flexibleSpace: ClipRRect(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bg.jpg"),
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 2, color: Colors.black45)),
                    child: Icon(
                      Icons.person,
                      color: Colors.green.shade900,
                      size: 80,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "NAME",
                        // _user.displayName,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "132-F",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Street # 21",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Colony Name",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              height: 2,
              color: Colors.black45,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Complaints",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.green.shade900)),
                  SizedBox(
                    width: 12,
                  ),
                  FlatButton.icon(
                    icon:
                        Icon(Icons.add, color: Colors.green.shade900, size: 24),
                    label: Text(
                      "Add New",
                      style: TextStyle(color: Colors.black54),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterComplaint(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            user_complaints.length != 0
                ? Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                      child: ListView.builder(
                        itemCount: user_complaints.length,
                        itemBuilder: (context, index) =>
                            _itemBuilder(context, user_complaints[index]),
                      ),
                    ),
                  )
                : Text(
                    "No Complaints Added",
                    style: TextStyle(fontSize: 20),
                  ),
          ],
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, review) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        // onTap: () => _onTaskTap(context, review),
        // key: Key('task_list_item_${review.id}'),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            height: 160.0,
            child: Stack(
              children: [Text("Sample")],
            ),
          ),
        ),
      ),
    );
  }
}

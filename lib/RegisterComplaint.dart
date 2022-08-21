// import 'dart:math';
import 'package:flutter/material.dart';

class RegisterComplaint extends StatefulWidget {
  @override
  _RegisterComplaintState createState() => _RegisterComplaintState();
}

class _RegisterComplaintState extends State<RegisterComplaint> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// class AddDiary extends StatefulWidget {
//   @override
//   _AddDiaryState createState() => _AddDiaryState();
// }
//
// final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//
// void showInSnackBar(String value) {
//   _scaffoldKey.currentState
//       // ignore: deprecated_member_use
//       .showSnackBar(new SnackBar(content: new Text(value)));
// }
//
// class _AddDiaryState extends State<AddDiary> {
//   Random random = new Random();
//   // final diary_ = Diary();
//   String DiaryName;
//   String AuthorName;
//   String content;
//   String imagePath;
//   String finalDate;
//
//   final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
//
//   void initState() {
//     getCurrentDate();
//   }
//
//   Widget _builddiaryname() {
//     return TextFormField(
//       textCapitalization: TextCapitalization.words,
//       onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
//       textInputAction: TextInputAction.next,
//       onChanged: (value) {
//         DiaryName = value;
//       },
//       decoration: InputDecoration(
//         labelText: 'Diary Name',
//       ),
//       validator: (String value) {
//         if (value.isEmpty) {
//           return 'Diary Name is Required';
//         }
//       },
//       onSaved: (String value) {
//         DiaryName = value;
//       },
//     );
//   }
//
//   String countryValue;
//   String stateValue;
//   String cityValue;
//   getCurrentDate() {
//     var date = new DateTime.now().toString();
//     var dateParse = DateTime.parse(date);
//     var formattedDate = "${dateParse.day}-${dateParse.month}-${dateParse.year}";
//     setState(() {
//       finalDate = formattedDate.toString();
//     });
//   }
//
//   Widget _buildContent() {
//     return TextFormField(
//       textCapitalization: TextCapitalization.sentences,
//       onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
//       textInputAction: TextInputAction.next,
//       onChanged: (value) {
//         content = value;
//       },
//       decoration: InputDecoration(
//         // labelText: "Enter Email",
//         fillColor: Colors.white,
//         border: new OutlineInputBorder(
//           borderRadius: new BorderRadius.circular(25.0),
//           borderSide: new BorderSide(),
//         ),
//       ),
//       validator: (String value) {
//         if (value.isEmpty) {
//           return 'Content is Required';
//         }
//       },
//       maxLines: 100,
//       onSaved: (String value) {
//         content = value;
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(50),
//         child: AppBar(
//           title: Center(
//             child: Text(
//               "Travel Episodes",
//               style: TextStyle(
//                 fontFamily: 'DancingScript',
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30,
//               ),
//             ),
//           ),
//           flexibleSpace: ClipRRect(
//             child: Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage("assets/images/bg.jpg"),
//                   fit: BoxFit.none,
//                 ),
//               ),
//             ),
//           ),
//           backgroundColor: Colors.black,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(50),
//               bottomRight: Radius.circular(50),
//             ),
//           ),
//         ),
//       ),
//       body: Container(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(30.0),
//             child: Form(
//               key: _formkey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(color: Colors.grey),
//                     child: Image.asset(
//                       imagePath,
//                       fit: BoxFit.cover,
//                       height: 150,
//                       width: 500,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 100,
//                         height: 2,
//                         color: Colors.orange.shade900,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Text(
//                         "Details",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 16),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         width: 100,
//                         height: 2,
//                         color: Colors.orange.shade900,
//                       ),
//                     ],
//                   ),
//                   _builddiaryname(),
//                   SelectState(
//                     // style: TextStyle(color: Colors.red),
//                     onCountryChanged: (value) {
//                       setState(() {
//                         countryValue = value;
//                       });
//                     },
//
//                     onStateChanged: (value) {
//                       setState(() {
//                         stateValue = value;
//                       });
//                     },
//                     onCityChanged: (value) {
//                       setState(() {
//                         cityValue = value;
//                       });
//                     },
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 100,
//                         height: 2,
//                         color: Colors.orange.shade900,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Text(
//                         "Content",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 16),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         width: 100,
//                         height: 2,
//                         color: Colors.orange.shade900,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(height: 400, child: _buildContent()),
//                   SizedBox(
//                     height: 14,
//                   ),
//                   Text(
//                     "Author Name: " + _user.displayName,
//                   ),
//                   Text("Date of Publication: " + finalDate),
//                   SizedBox(height: 10),
//                   Padding(
//                     padding: EdgeInsets.all(10),
//                     child: RaisedButton(
//                       textColor: Colors.black,
//                       color: Colors.white,
//                       onPressed: () {
//                         if (countryValue == null ||
//                             cityValue == null ||
//                             stateValue == null ||
//                             countryValue == "Choose Country" ||
//                             cityValue == "Choose City" ||
//                             stateValue == "Choose State") {
//                           showInSnackBar("Invalid State, Country or City");
//                         } else if (_formkey.currentState.validate()) {
//                           diary_.add_diary(cityValue, imagePath, DiaryName,
//                               content, finalDate);
//
//                           Navigator.pushNamed(context, HomeRoute,
//                               arguments: {"index": 1});
//                         }
//                       },
//                       child: Text("Publish"),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                           side: BorderSide(color: Colors.orange.shade900)),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

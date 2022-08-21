import 'package:complaintapp/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'LoginScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

const WelcomeRoute = "/";
const HomeRoute = "/LoginScreen";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: ThemeData(
        fontFamily: 'Ubuntu',
        textTheme: TextTheme(headline3: TextStyle(color: Color(0xff1a7a30))),
        primaryColor: Color(0xffb8d0d6),
        // accentColor: Color(0xffc63416),
      ),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case WelcomeRoute:
          screen = LoginScreen();
          break;

        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         fontFamily: 'Ubuntu',
//         textTheme: TextTheme(headline3: TextStyle(color: Color(0xff343852))),
//         primaryColor: Color(0xff40C1A2),
//         accentColor: Color(0xff40C1A2),
//       ),
//       initialRoute: ' /WelcomeScreen',
//       routes: {
//         '/WelcomeScreen': (context) => WelcomeScreen(),
//         '/LoginScreen': (context) => LoginScreen(),
//         '/SignupScreen': (context) => RegistrationScreen(),
//         '/HomeScreen': (context) => DashboardScreen(),
//         '/ForgotPassword': (context) => ForgotPassword()
//       },
//       home: WelcomeScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:play_on/login/register_page.dart';
import 'package:play_on/login/reset_screen.dart';
import 'package:play_on/screens/create_activity/create.dart';
import 'package:play_on/screens/findplayer/acticity_detail.dart';
import 'package:play_on/screens/findplayer/payment_page.dart';
import 'package:play_on/screens/profile/edit_profile.dart';
import 'package:play_on/screens/home_screen/home_screen.dart';
import 'package:play_on/login/login_page.dart';
import 'package:play_on/screens/profile/profile_screen.dart';
import 'package:play_on/login/registration_page.dart';
import 'package:play_on/login/sport_list.dart';
import 'package:play_on/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:play_on/widget/bottom_navigation.dart';

void main() async {
  // if u want to use a any flutterfire command then before it u have to intialize app
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginDemo.id: (context) => const LoginDemo(),
        RegistrationDemo.id: (context) => RegistrationDemo(),
        RegisterDemo.id: (context) => RegisterDemo(),
        ResetScreen.id: (context) => ResetScreen(),
        paymentPage.id: (context) => paymentPage(),
        // ActivityDetail.id:(context) => ActivityDetail(),
      },
    );
  }
}

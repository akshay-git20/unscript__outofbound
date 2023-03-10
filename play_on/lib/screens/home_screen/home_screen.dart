// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:play_on/screens/home_screen/Joined_activities/join_act.dart';
import 'package:play_on/screens/home_screen/design.dart';
import 'package:play_on/screens/home_screen/group/pages/home_page.dart';
import 'package:play_on/screens/home_screen/my_activities/my_activity.dart';

class HomeScreen extends StatefulWidget {
  static String id = "/home";
  final List<String> details;
  final List sportdetails;
  const HomeScreen({
    Key? key,
    required this.details,
    required this.sportdetails,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void myactivity() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: ((context) => MyActivity(
            details: widget.details, sportdetails: widget.sportdetails))));
  }

  void joinactivity() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: ((context) => JoinActivity(
            details: widget.details, sportdetails: widget.sportdetails))));
  }

  void groups() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: ((context) => GroupHomePage(details: widget.details))));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Design(text: "My activity", ontap: myactivity),
          Design(text: "Joined Activities", ontap: joinactivity),
          Design(text: "Groups", ontap: groups)
        ],
      ),
    );
  }
}

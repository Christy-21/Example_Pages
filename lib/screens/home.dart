import 'package:flutter/material.dart';

class HomeDash extends StatefulWidget {
  const HomeDash({Key? key}) : super(key: key);

  @override
  State<HomeDash> createState() => _HomeDashState();
}

class _HomeDashState extends State<HomeDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: false,
      ),
      body: Center(
        child: Text('DashBoard'),
      ),
    );
  }
}

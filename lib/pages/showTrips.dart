import 'package:flutter/material.dart';

class ShowTripsPage extends StatefulWidget {
  const ShowTripsPage({super.key});

  @override
  State<ShowTripsPage> createState() => _ShowTripsPageState();
}

class _ShowTripsPageState extends State<ShowTripsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('รายการสถานที่')),
    );
  }
}
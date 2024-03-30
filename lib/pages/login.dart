import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/register.dart';
import 'package:flutter_application_1/pages/showTrips.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String text='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('TripBooking App'),
        ),
      body:SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/travel-logo-and-delivery-and-transportation-l-design-template-45fa3f928b4a1b2bff83c8ec2f39a214_screen.jpg?ts=1696536032',
              width: 200,),
              const Padding(
                padding: EdgeInsets.fromLTRB(100,20,100,20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('หมายเลขโทรศัพท์'),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.fromLTRB(100,20,100,20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text('รหัสผ่าน'),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      onChanged: (ttt) {
                        log('ttt');
                      },
                    ),
                  ],
                ),
              ),    
              Text('Login: '+text),
              Padding(
                padding: EdgeInsets.fromLTRB(70,20,70,20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>RegisterPages()));
                  }, child: Text('สมัครสมาชิก')),
                  FilledButton(onPressed: (){
                    setState(() {
                      text='login sucessfuly!!!!';
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ShowTripsPage()));
                    });
                  }, child: Text('เข้าสู่ระบบ'))],
          
              )
              ),
              
            ],
          ),
        ),
      ),
    ),
  );
}
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/showTrips.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({super.key});

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  TextEditingController nameCtl=TextEditingController();
  TextEditingController phoneCtl=TextEditingController();
  TextEditingController emailCtl=TextEditingController();
  TextEditingController passwordCtl=TextEditingController();
  TextEditingController againPasswordCtl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:(Text('สมัครสมาชิก'))),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
                         
                  Padding(
                  padding: EdgeInsets.fromLTRB(60,20,60,20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       const Text('ชื่อ-นามสกุล'),
                      TextField(
                        decoration: InputDecoration(border: OutlineInputBorder()),
                        controller: nameCtl,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(60,20,60,20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('หมายเลขโทรศัพท์'),
                      TextField(
                        decoration: InputDecoration(border: OutlineInputBorder()),
                        controller: phoneCtl,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(60,20,60,20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('อีเมล์'),
                      TextField(
                        decoration: InputDecoration(border: OutlineInputBorder()),
                        controller: emailCtl,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(60,20,60,20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('รหัสผ่าน'),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(border: OutlineInputBorder()),
                        controller: passwordCtl,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(60,20,60,20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('ยืนยันรหัสผ่าน'),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(border: OutlineInputBorder()),
                        controller: againPasswordCtl,
                      ),
                    ],
                  ),
                ),
                Padding(
                 padding: EdgeInsets.fromLTRB(100,20,100,20),
                  child: Column(
                    children: [
                     FilledButton(onPressed: (){
                      if(nameCtl.text.isNotEmpty&&phoneCtl.text.isNotEmpty&&passwordCtl.text.isNotEmpty&&againPasswordCtl.text.isNotEmpty){
                        if(passwordCtl.text==againPasswordCtl.text){
                        showAlertDialog(context); 
                      }else{
                        
                      }
                      }
                     }, child:const Text('สมัครสมาชิก')),
                    ]
                  )
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(60,20,60,20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('หากมีบัญชีอยู่แล้ว?'),
                      TextButton(onPressed: (){}, child: const Text('เข้าสู่ระบบ'))
                    ],
                  ),
                )
                
            ],
          ),
        ),
      ),

    );
  }
  showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ShowTripsPage()));
     },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Register"),
    content: Text("สมัครสมาชิกสำเร็จ"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

}
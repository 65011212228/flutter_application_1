import 'package:flutter/material.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({super.key});

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:(Text('สมัครสมาชิก'))),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
                         
                 const Padding(
                  padding: EdgeInsets.fromLTRB(60,20,60,20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('ชื่อ-นามสกุล'),
                      TextField(
                        decoration: InputDecoration(border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(60,20,60,20),
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(60,20,60,20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('อีเมล์'),
                      TextField(
                        decoration: InputDecoration(border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(60,20,60,20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('รหัสผ่าน'),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(60,20,60,20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('ยืนยันรหัสผ่าน'),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                Padding(
                 padding: EdgeInsets.fromLTRB(100,20,100,20),
                  child: Column(
                    children: [
                     FilledButton(onPressed: (){}, child:const Text('สมัครสมาชิก')),
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
}
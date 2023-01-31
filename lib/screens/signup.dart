import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ยินดีต้อนรับ สมัครบัญชีผู้ใช้"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    // icon: Icon(Icons.person),
                    hintText: 'กรุณาป้อนข้อมูลอีเมลล์',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.check),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

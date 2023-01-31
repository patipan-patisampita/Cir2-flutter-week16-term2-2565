import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password =TextEditingController();

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
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _email,
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

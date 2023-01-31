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
  final _name =TextEditingController();
  int _sex = 0;
  bool _accept = false;

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _email,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    // icon: Icon(Icons.person),
                    hintText: 'กรุณาป้อนข้อมูล อีเมลล์',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.check),
                  ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 8.0),
              TextFormField(
                controller: _password,
                decoration: InputDecoration(
                  labelText: 'Password',
                  // icon: Icon(Icons.person),
                  hintText: 'กรุณาป้อนข้อมูล รหัสผ่าน',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  prefixIcon: Icon(Icons.visibility),
                  suffixIcon: Icon(Icons.check),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 8.0),
              TextFormField(
                controller: _name,
                decoration: InputDecoration(
                  labelText: 'Full-name',
                  // icon: Icon(Icons.person),
                  hintText: 'กรุณาป้อนข้อมูล ชื่อ-สกุล',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  prefixIcon: Icon(Icons.account_box),
                  suffixIcon: Icon(Icons.check),
                ),
                keyboardType: TextInputType.text,
              ),
              Row(
                children: [
                  Text('Sex'),
                  Radio(value: 0, groupValue: _sex, onChanged: (value) {
                    setState(() {
                      _sex = value ?? 0;
                      print(_sex);
                    });
                  }),
                  Text('Male'),
                  Radio(value: 1, groupValue: _sex, onChanged: (value) {
                    setState(() {
                      _sex = value ?? 0;
                      print(_sex);
                    });
                  }),
                  Text('Female'),
                ],
              ),
              Row(
                children: [
                  Checkbox(value: _accept, onChanged: (value) {
                    setState(() {
                      _accept = value ?? false;
                      print(_accept);
                    });
                  }),
                  Text('ยอมรับข้อตกลง....'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

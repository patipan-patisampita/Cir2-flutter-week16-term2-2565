import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(_isObscure);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign-In System"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              image: AssetImage('assets/images/login.png'),
              height: 200,
              width: 300),
          Container(
            child: Text(
              "Sing-In System",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                labelText: 'Username',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                      print(_isObscure);
                    });
                  },
                  icon: Icon(_isObscure == false
                      ? Icons.visibility
                      : Icons.visibility_off,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            //Agent Login

            Text(
              "Agent Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              child: Text(
                " Hey, Enter your details to get sign in to your account ",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            //Email TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Email / Phone No',
                        suffixIcon: Icon(Icons.circle_outlined),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 16,
            ),

            //Password TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Passcode',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          )),
                    ),
                  )),
            ),
            SizedBox(
              height: 16,
            ),

            //Having Trouble in sign in?
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Having trouble in sign in?',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),

            //Signin Button

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 50),
                    primary: Color.fromARGB(255, 235, 187, 133),
                    onPrimary: Colors.black),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text("Sign in"),
              ),
            ),
            SizedBox(
              height: 40,
            ),

            //Or Sign in with

            Text(
              '-- Or Sign in with --',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 30,
            ),

            //3 row TextButton

            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(20, 50),
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10),
                        primary: Colors.black),
                    onPressed: () {}, icon: Icon(Icons.g_mobiledata_sharp),
                    label: Text('Google'),
                    //child: Text('Google')
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(20, 50),
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10),
                        primary: Colors.black),
                    onPressed: () {}, icon: Icon(Icons.apple),
                    label: Text('Apple ID'),
                    //child: Text('Google')
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(20, 50),
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10),
                        primary: Colors.black),
                    onPressed: () {}, icon: Icon(Icons.facebook_sharp),
                    label: Text('Facebook'),
                    //child: Text('Google')
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            //Don't have an account? Rigister Now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                Text(
                  "Request Now",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

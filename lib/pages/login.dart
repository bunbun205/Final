import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
  Login_Page({super.key});

  final emailController = TextEditingController();
  final passController = TextEditingController();

  loginWithEmail(BuildContext context, String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No user found for that email.')));
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Wrong password provided for that user.')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 234, 234),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            color: Color.fromARGB(255, 40, 48, 79),
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 72,
                ),
              ),
              Container(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Username/Email'),
                ),
              ),
              Container(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  controller: passController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'password'),
                ),
              ),
              Container(
                height: 5,
              ),
              GestureDetector(
                onTap: () async {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 20,
                  child: Text(
                    'Forgot password',
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Container(
                height: 60,
              ),
              TextButton(
                onPressed: () {
                  loginWithEmail(context, emailController.text.trim(),
                      passController.text.trim());
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 45),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 40, 48, 79),
                    padding:
                        EdgeInsets.symmetric(horizontal: 50, vertical: 18)),
              ),
              Container(
                height: 5,
              ),
              Text(
                'new user? register here',
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final gradeController = TextEditingController();
  final confirmPassController = TextEditingController();

  registerWithEmail(BuildContext context, String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('The password provided is too weak.')));
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('The account already exists for that email.')));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
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
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 72,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Username'),
                ),
              ),
              Container(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  controller: gradeController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Grade/Class'),
                ),
              ),
              Container(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Email'),
                ),
              ),
              Container(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  controller: passController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Password'),
                ),
              ),
              Container(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  controller: confirmPassController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Confirm Password'),
                ),
              ),
              Container(
                height: 60,
              ),
              TextButton(
                onPressed: () {
                  registerWithEmail(context, emailController.text.trim(),
                      passController.text.trim());
                },
                child: Text(
                  'Register',
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
            ],
          )
        ],
      ),
    );
  }
}

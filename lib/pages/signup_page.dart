import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../global/common/toast.dart';

import '../auth/firebase_auth_implementation/firebase_auth_services.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isSigningUp = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Container(
              height: 550,
              width: 400,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(top: 70.0),
                      child: Text(
                        "Create an account",
                        style: TextStyle(
                          fontFamily: "KodeMono-Bold",
                          fontSize: 20.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your email",
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      controller: _emailController,
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      controller: _passwordController,
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Confirm your Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _signUp,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: isSigningUp
                              ? const CircularProgressIndicator()
                              : const Text(
                                  "Sign Up",
                                  style: TextStyle(color: Colors.white),
                                ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Center(
                      child: Text(
                        "Or",
                        style: TextStyle(
                          fontFamily: "KodeMono-Bold",
                          fontSize: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _signUp() async {
    setState(() {
      isSigningUp = true;
    });

    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    setState(() {
      isSigningUp = false;
    });
    if (user != null) {
      showToast(message: "User is successfully created");
      Navigator.pushNamed(context, "/login");
    } else {
      showToast(message: "Some error happened");
    }
  }
}

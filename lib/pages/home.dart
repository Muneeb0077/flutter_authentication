import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modernlogintute/global/common/toast.dart';

class Home extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Home({Key? key}) : super(key: key);

  void _logout(BuildContext context) async {
    await _auth.signOut();
    showToast(message: "Logged out successfully");
    Navigator.pushReplacementNamed(context, "/login");
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: const Center(
          child: Text(
            "Welcome to home",
            style: TextStyle(
              fontFamily: "KodeMono-Bold",
              fontSize: 20.0,
              color: Colors.grey,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _logout(context),
          backgroundColor: Colors.grey,
          child: const Icon(Icons.logout),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}

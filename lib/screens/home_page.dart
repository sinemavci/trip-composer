import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trip_composer/components/trip_chip.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final auth = FirebaseAuth.instance;

Future<void> login(String email, String password) async {
  try {
    await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    print("login CODE: ${e.code}");
    print("login MESSAGE: ${e.message}");
  }
}

Future<void> signUp(String email, String password) async {
  try {
    await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }on FirebaseAuthException catch (e) {
    print("signUp CODE: ${e.code}");
    print("signUp MESSAGE: ${e.message}");
  }
}

// StreamBuilder<User?>(
// stream: FirebaseAuth.instance.authStateChanges(),
// builder: (context, snapshot) {
// if (snapshot.hasData) {
// return HomePage();
// } else {
// return LoginPage();
// }
// },
// );

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        // appBar: CustomAppBar(appBarOptions: widget.appBarOptions),
        body: Container(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(onPressed: () {
                  login("sinemaavci@gmail.com", "14114676.");
                }, child: Text("LOGIN")),
                ElevatedButton(onPressed: () {
                  signUp("sinemaavci@gmail.com", "14114676.");
                }, child: Text("REGISTER"))
              ],
            ),
          ),
        )
    );
  }
}
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:onborading_screen/Component/my_button.dart';
// import 'package:onborading_screen/Component/my_iconbutton.dart';
// import 'package:onborading_screen/Component/my_textbutton.dart';
// import 'package:onborading_screen/Component/my_textfield.dart';

// class SignUpScreen extends StatelessWidget {
//   SignUpScreen({super.key});

//   final emailContoller = TextEditingController();
//   final passwordController = TextEditingController();
//   final nameController = TextEditingController();
//   final comfirmController = TextEditingController();

//   createUserWithEmailAndPassword() async {
//     try {
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: emailContoller.text,
//         password: passwordController.text,
//       );
    
//     } on FirebaseAuthException catch (e) {
//       print('Failed with error code:${e.code}');
//       print(e.message);

//       if (e.code == 'Invalid-email') {
//         print('No user found for that email.');
//       } else if (e.code == 'INVALID_LOGIN-CREDENTAILS') {
//         print('Wrong password provided for that user.');
      
//        _showMyDialog('Create successfully.');
//     } on FirebaseAuthException catch (e) {
//       print('Failed with error code: ${e.code}');
//       print(e.message);

//       if (e.code == 'weak-password') {
//         print('The password is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         print('There is already a user in the firebase.');
//       }
//     }
//   }
//   void _showMyDialog(String txtMsg) async {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Expanded(
//           child: AlertDialog(
//             backgroundColor: Color.fromARGB(255, 255, 255, 255),
//             title: const Text('AlertDialog Title'),
//             content: Text(txtMsg),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () => Navigator.pop(context, 'Cancel'),
//                 child: const Text(
//                   'Cancel',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () => Navigator.pop(context, 'OK'),
//                 child: const Text(
//                   'OK',
//                   style: TextStyle(color: Color.fromARGB(255, 190, 75, 67)),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
//         child: Form(
//           child: Column(
//             children: [
//               const Spacer(),
//               Text(
//                 "Welcome to register!",
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.lato(
//                   textStyle: Theme.of(context).textTheme.displayLarge,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   fontStyle: FontStyle.normal,
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "Please sign up with your email and password.",
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.lato(
//                   textStyle: Theme.of(context).textTheme.displayLarge,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w300,
//                   fontStyle: FontStyle.italic,
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               MyTextField(
//                   controller: nameController,
//                   HintText: 'Please input your name',
//                   LabelText: 'Name',
//                   obscureText: false),
//               const SizedBox(
//                 height: 20,
//               ),
//               MyTextField(
//                   controller: emailController,
//                   HintText: 'Enter your email',
//                   LabelText: 'Email',
//                   obscureText: false),
//               const SizedBox(height: 25),
//               MyTextField(
//                   controller: passwordController,
//                   HintText: 'Enter your password',
//                   LabelText: 'Password',
//                   obscureText: true),
//               const SizedBox(height: 25),
//               MyTextField(
//                   controller: passwordController,
//                   HintText: 'Confirm your password',
//                   LabelText: 'confirm your password',
//                   obscureText: true),
//               const SizedBox(height: 25),
//               // const MyTextButton(
//               //   labelText: 'Forgot password?',
//               //   pageRoute: 'Forgot',
//               // ),
//               const SizedBox(
//                 height: 25,
//               ),
//               MyButton(
//                   onTap: createUserWithEmailAndPassword, hintText: 'Sign Up'),
//               const SizedBox(
//                 height: 25,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Divider(
//                         thickness: 0.5,
//                         color: Colors.grey.shade700,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                       child: Text(
//                         'already have member',
//                         style: TextStyle(color: Colors.grey.shade700),
//                       ),
//                     ),
//                     Expanded(
//                       child: Divider(
//                         thickness: 0.5,
//                         color: Colors.grey.shade700,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   MyIconButton(imagePath: 'assets/image/2.png'),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   MyIconButton(imagePath: 'assets/image/5.png')
//                 ],
//               ),
//               const Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     MyTextButton(
//                       labelText: 'Sign in',
//                       pageRoute: 'SignIn',
//                     ),
//                   ],
//                 ),
//               ),
//               const Spacer(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onborading_screen/Component/my_button.dart';
import 'package:onborading_screen/Component/my_iconbutton.dart';
import 'package:onborading_screen/Component/my_textbutton.dart';
import 'package:onborading_screen/Component/my_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  Future<void> createUserWithEmailAndPassword(BuildContext context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      _showMyDialog(context, 'User created successfully.');
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);

      if (e.code == 'invalid-email') {
        print('Invalid email address.');
      } else if (e.code == 'weak-password') {
        print('The password is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('Email is already registered.');
      }
    }
  }

  void _showMyDialog(BuildContext context, String txtMsg) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: const Text('AlertDialog Title'),
          content: Text(txtMsg),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text(
                'OK',
                style: TextStyle(color: Color.fromARGB(255, 190, 75, 67)),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                "Welcome to register!",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please sign up with your email and password.",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.bodyText2,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: nameController,
                hintText: 'Please input your name',
                labelText: 'Name',
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Enter your email',
                labelText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: passwordController,
                hintText: 'Enter your password',
                labelText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: confirmController,
                hintText: 'Confirm your password',
                labelText: 'Confirm Password',
                obscureText: true,
              ),
              const SizedBox(height: 25),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                onTap: () => createUserWithEmailAndPassword(context),
                hintText: 'Sign Up', hinText: 'Sign Up',
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconButton(imagePath: 'assets/image/2.png'),
                  SizedBox(
                    width: 10,
                  ),
                  MyIconButton(imagePath: 'assets/image/5.png')
                ],
              ),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyTextButton(
                      labelText: 'Sign in', pageRoute: 'Sign in',
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

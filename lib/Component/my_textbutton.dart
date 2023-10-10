import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onborading_screen/Screens/Sign_in/sign_in.dart';
import 'package:onborading_screen/Screens/Sign_up/sign_up.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    super.key, 
    required this.labelText,
    required this.pageRoute,
    });

  final String labelText;
  final String pageRoute;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              if (pageRoute == 'Register'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> SignUpScreen()),
                );
              }
               else if (pageRoute == 'Sign in'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const SignInScreen()),
                );
              }
            },
            child: Text(
              labelText,
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displaySmall,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.blue,
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onborading_screen/Component/add_notescreen.dart';
import 'package:onborading_screen/Component/stream_note.dart';
import 'package:onborading_screen/Screens/Sign_in/todolist/todolist.dart';
//import 'package:onborading_screen/Screens/onboarding_screen.dart';
import 'main.dart';

class LoginSucessPage extends StatefulWidget {
  LoginSucessPage({super.key});

  @override
  State<LoginSucessPage> createState() => _LoginSucessPageState();
}

class _LoginSucessPageState extends State<LoginSucessPage> {

  final user = FirebaseAuth.instance.currentUser;

  bool show = true;

  get itemBuilder => null;

  void signoutuser() async{
    await FirebaseAuth.instance.signOut();
    const MyApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title:  Text('Task managment.',
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(textStyle: Theme.of(context).textTheme.displayLarge,
        fontSize: 24, fontStyle: FontStyle.normal,color: const Color.fromARGB(255,5,82,91),
        fontWeight: FontWeight.w700),),
        actions: [
          IconButton(onPressed: signoutuser,
          icon: const Icon(Icons.login,size: 30,),
          ),
        ],
      ),
      body: SafeArea(
        
        child: NotificationListener<UserScrollNotification>(
          onNotification: (Notification) {
            if (Notification.direction == ScrollDirection.forward) {
              setState(() {
                show = true;
              });
            }
            if (Notification.direction == ScrollDirection.reverse){
              setState(() {
                show = false;

              });
            }
            return true;
          },
          child: Column(
            children: [
              StreamNote(false),
              const Text(
               'isDone',
               style: TextStyle(color: Colors.grey),
                 ),
            ],
          ),
        ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed:(){
              Navigator.of(context).push(
                MaterialPageRoute(builder:(context)=> const AddNoteScreen())
              );
            },
            backgroundColor: const Color.fromARGB(255, 132, 125, 105),
            child: const Icon(Icons.add,size: 30,color: Colors.white,),
          ),
         ); 
         
   
  }
}

// lass AddNoteScreen {
//   const AddNoteScreen();
// }c
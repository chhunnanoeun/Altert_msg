//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onborading_screen/Screens/Sign_in/sign_in.dart';
//import 'package:onborading_screen/Screens/Sign_up/sign_up.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demo_data.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                    
                  },
                  itemBuilder: (context, index) =>  OnBoardingWidget(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    description: demo_data[index].description,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    demo_data.length, (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(
                        isActive: index == _pageIndex),
                    )),
                  const Spacer(),
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          if(_pageIndex != demo_data.length - 1){
                            _pageController.nextPage(
                            duration: const Duration(
                              microseconds: 300), 
                            curve: Curves.ease);
                          }else{
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen())
                            );
                          }
                          // _pageController.nextPage(
                          //   duration: const Duration(
                          //     microseconds: 300), 
                          //   curve: Curves.ease);
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Color.fromARGB(255, 191, 51, 23)),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Color.fromARGB(255, 169, 173, 89),
                          size: 30,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignInscreen {
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key, required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive? 12 : 4, 
      width: 4, 
    decoration: BoxDecoration(
      color: isActive? Colors.blue: Colors.blue.withOpacity(0.4),
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
    ),
                ),
              );
  }
}

class OnBoard{
  final String image, title, description;

  OnBoard({
    required this.image,
    required this.title,
    required this.description,
  });
}
final List<OnBoard> demo_data = [
  OnBoard(
    image: "asset/image/1.png", 
    title: "find the items you've\nbeen looking for",
    description: "here you will see  as a working speac "),
  OnBoard(
    image: "asset/image/2.png", 
    title: "find the items you've\nbeen looking for",
    description: "here you will see as a guide person "),
  OnBoard(
    image: "asset/image/3.png", 
    title: "find the items you've\nbeen looking for",
    description: "here you will see  as a travel place "),
  OnBoard(
    image: "asset/image/4.png", 
    title: "find the items you've\nbeen looking for",
    description: "here you will see  as a contecting of location"),
  OnBoard(
    image: "asset/image/5.png", 
    title: "find the items you've\nbeen looking for",
    description: "here you will see as a service of delivery  "),
  
];

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 280,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
        const Spacer()
      ],
    );
  }
}


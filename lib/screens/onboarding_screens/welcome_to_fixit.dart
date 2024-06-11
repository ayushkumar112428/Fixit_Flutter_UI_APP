import 'package:fixit/components/button_style.dart';
import 'package:fixit/screens/login_signup_screens/loginscreen.dart';
import 'package:fixit/style/text_style.dart';
import 'package:flutter/material.dart';

class WelcomeToFixit extends StatefulWidget {
  const WelcomeToFixit({super.key});

  @override
  State<WelcomeToFixit> createState() => _WelcomeToFixitState();
}

class _WelcomeToFixitState extends State<WelcomeToFixit> {
  int _currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  final List<Widget> _pages = [
    const ItBox(
      img: 'assets/screens/welcometofixit.png',
      title: 'Welcome To Fixit',
      text1: 'Discover a world of convenience and',
      text2: 'reliability. Fixit is your one stop solution',
      text3: 'for all your home service needs.',
    ),
    const ItBox(
      img: 'assets/screens/welcomefindservices.png',
      title: 'Find Services',
      text1: 'Browse and book a wide range of',
      text2: 'services from plumbing and electrical to',
      text3: "appliance repair. we've got it all covered",
    ),
    const ItBox(
      img: 'assets/screens/welcomefindservices3.png',
      title: 'Find Services',
      text1: 'Browse and book a wide range of',
      text2: 'services from plumbing and electrical to',
      text3: "appliance repair. we've got it all covered",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 56),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF004e99),
              Color(0xFF012951),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(_pages.length, (int index) {
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == index
                              ? Colors.white
                              : Colors.grey,
                        ),
                      );
                    }).toList(),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _pages[_currentPage],
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    if (_currentPage < 2) {
                      _currentPage++;
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    }
                  });
                },
                child: const ButtonStyles(title: "Next",colors: Colors.deepPurple,),),
          ],
        ),
      ),
    );
  }
}

class ItBox extends StatelessWidget {
  final String img;
  final String title;
  final String text1;
  final String text2;
  final String text3;
  const ItBox(
      {super.key,
      required this.img,
      required this.title,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 595,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 385.6,
            width: 277,
            child: Image(
              image: AssetImage(img),
            ),
          ),
          const SizedBox(
            height: 39.7,
          ),
          Text(
            title,
            style: welcomeStyle,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            text1,
            style: welcomeSubStyle,
          ),
          Text(
            text2,
            style: welcomeSubStyle,
          ),
          Text(
            text3,
            style: welcomeSubStyle,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

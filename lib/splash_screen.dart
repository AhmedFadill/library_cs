import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  int count = 0;

    getUser() async {
    CollectionReference qure =
        await FirebaseFirestore.instance.collection("User");
    DocumentReference docRef = qure.doc('jwzL2qlXZoHsXaTRFi6v');
    DocumentSnapshot docSnapshot = await docRef.get();

    count = docSnapshot.get('Count');

    count = count + 1 ;

    await qure.doc("jwzL2qlXZoHsXaTRFi6v").update({
      "Count" : count
    });

    print(count);
    
    
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    

    Future.delayed(const Duration(milliseconds: 6000), () async {
      // Delay for 3 seconds
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      bool? isFirstTime = prefs.getBool('isFirstTime');
      if (isFirstTime == null) {
        getUser();
        prefs.setBool("isFirstTime", true);
        Navigator.pushReplacementNamed(context, 'Intro');
      } // Navigate to home screen
      else {
        Navigator.pushReplacementNamed(context, 'Open');
      }
      // Remove splash screen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/wired-lineal-1331-repository-in-reveal (3).gif",
            height: 250,
          ),
          SizedBox(
            height: 50,
          ),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("Computer Science Library",
                  style: TextStyle(fontSize: 28, fontFamily: "Urbanist-Bold")),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          DefaultTextStyle(
            style: const TextStyle(
                fontSize: 25,
                color: Color.fromARGB(215, 109, 87, 252),
                fontFamily: "Urbanist-Bold"),
            child: AnimatedTextKit(
              pause: Duration(milliseconds: 1500),
              animatedTexts: [
                TypewriterAnimatedText('Lectures'),
                TypewriterAnimatedText('Summaries'),
                TypewriterAnimatedText('Exam dates'),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ],
      )),
    );
  }
}

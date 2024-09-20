import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  List<PageViewModel> pages = [
    PageViewModel(
      titleWidget: Text("Computer Science Library",
          style: TextStyle(fontSize: 20, fontFamily: "Urbanist-Bold")),
      bodyWidget: Text(
        "التطبيق يوفر الملازم والملخصات ومواعيد الامتحانات والجدول بطريقة منظمة ويمكن الوصول اليها بسرعة",
        style: TextStyle(
            fontSize: 17,
            fontFamily: "Tajawal-Bold",
            color: Colors.grey.shade600),
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
      ),
      image: Center(
          child: Image.asset(
        'images/1.0.png',
        height: 200,
      )),
    ),
    PageViewModel(
      titleWidget: Text("الملازم",
          style: TextStyle(fontSize: 20, fontFamily: "Tajawal-Bold")),
      bodyWidget: Text(
        "تتوفر الملازم لكل مادة ويمكن الوصول اليها اذا كنت متصلا بلانترنت وايضاً يمكن الوصول اليها بدون انترنت اذا كان لديك برنامج درايف والذي يكون موجود تلقائيا باغلب الاجهزة",
        style: TextStyle(
            fontSize: 17,
            fontFamily: "Tajawal-Bold",
            color: Colors.grey.shade600),
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
      ),
      image: Center(child: Image.asset('images/L.png')),
    ),
    PageViewModel(
      titleWidget: Text("مواعيد الامتحانات",
          style: TextStyle(fontSize: 20, fontFamily: "Tajawal-Bold")),
      bodyWidget: Text(
        "سوف يتم نشر كل امتحان مع موعده والمادة المطلوبة بلامتحان لكل مادة",
        style: TextStyle(
            fontSize: 17,
            fontFamily: "Tajawal-Bold",
            color: Colors.grey.shade600),
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
      ),
      image: Center(
        child: Image.asset('images/E.png'),
      ),
    ),
    PageViewModel(
      titleWidget: Text("الملخصات",
          style: TextStyle(fontSize: 20, fontFamily: "Tajawal-Bold")),
      bodyWidget: Text(
        "سوف يتم توفير الملخصات والشروحات الخاصة بكل مادة والتي سوف يتم نشرها ايضا على قناتنا في التليجرام",
        style: TextStyle(
            fontSize: 17,
            fontFamily: "Tajawal-Bold",
            color: Colors.grey.shade600),
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
      ),
      image: Center(child: Image.asset('images/S.png')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: IntroductionScreen(
          bodyPadding: const EdgeInsets.only(top: 50),
          pages: pages,
          done: const Text("done"),
          next: const Text("next"),
          back: const Text("back"),
          skip: const Text("skip"),
          onSkip: () => Navigator.pushReplacementNamed(context, 'Open'),
          onDone: () {
            Navigator.pushReplacementNamed(context, 'Open');
          },
          showNextButton: true,
          showBackButton: true,
        ),
      ),
    ));
  }
}

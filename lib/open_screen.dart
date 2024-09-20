import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PoenScreenApp extends StatelessWidget {
  const PoenScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(193, 109, 87, 252),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 240,
                      width: 120,
                      margin: const EdgeInsets.only(top: 100),
                      alignment: Alignment.centerRight,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(20, 255, 255, 255),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(170),
                              bottomLeft: Radius.circular(170))),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 240,
                      width: 120,
                      margin: const EdgeInsets.only(top: 280),
                      alignment: Alignment.centerRight,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(20, 255, 255, 255),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(170),
                              bottomRight: Radius.circular(170))),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 37),
                      child: Image.asset(
                        "images/open.png",
                        height: 600,
                        width: 600,
                      )),
                  Container(
                    height: 850,
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 380,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          )),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: RichText(
                                  text: const TextSpan(
                                      text: "Let's Begin",
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Urbanist-Light",
                                          letterSpacing: 2,
                                          color: Colors.black),
                                      children: [
                                    TextSpan(
                                        text: " Growing",
                                        style: TextStyle(
                                            fontFamily: "Urbanist-Regula",
                                            color: Color.fromARGB(
                                                215, 109, 87, 252))),
                                    TextSpan(text: " Our Skills")
                                  ]))),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(
                              "The program to organize and facilitate the research and study process",
                              style: TextStyle(fontFamily: "Urbanist-Light"),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                        onPressed: () async {
                                          if (await canLaunchUrl(Uri.parse(
                                              "https://t.me/Stage3_CS"))) {
                                            await launchUrl(
                                                Uri.parse(
                                                    "https://t.me/Stage3_CS"),
                                                mode: LaunchMode
                                                    .externalApplication);
                                          } else {
                                            throw 'Could not launch ${Uri.parse("https://t.me/Stage3_CS")}';
                                          }
                                        },
                                        icon: const Icon(
                                          Icons.telegram,
                                          color:
                                              Color.fromARGB(215, 109, 87, 252),
                                          size: 40,
                                        )),
                                    TextButton(
                                        onPressed: () async {
                                          if (await canLaunchUrl(Uri.parse(
                                              "https://www.instagram.com/mk._sm?igsh=NXJndXhoc2NreHoz"))) {
                                            await launchUrl(
                                                Uri.parse(
                                                    "https://www.instagram.com/mk._sm?igsh=NXJndXhoc2NreHoz"),
                                                mode: LaunchMode
                                                    .externalApplication);
                                          } else {
                                            throw 'Could not launch ${Uri.parse("https://www.instagram.com/mk._sm?igsh=NXJndXhoc2NreHoz")}';
                                          }
                                        },
                                        child: Image.asset(
                                          "images/instagram.png",
                                          height: 35,
                                        )),
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushNamed("CatogryPage");
                                          },
                                          style: const ButtonStyle(
                                              backgroundColor: WidgetStatePropertyAll(
                                                  Color.fromARGB(
                                                      215, 109, 87, 252)),
                                              foregroundColor:
                                                  WidgetStatePropertyAll(
                                                      Colors.white),
                                              padding: WidgetStatePropertyAll(
                                                  EdgeInsets.symmetric(
                                                      horizontal: 40,
                                                      vertical: 18)),
                                              shape: WidgetStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.all(
                                                          Radius.circular(12))))),
                                          child: const Text(
                                            "Get Started",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "Urbanist-Medium"),
                                          )),
                                      SizedBox(
                                        width: 15,
                                      )
                                    ],
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';

import 'package:library_cs/massges/ofSubject/ex.dart';
import 'package:library_cs/massges/ofSubject/lec.dart';
import 'package:library_cs/massges/ofSubject/summar.dart';
import 'package:url_launcher/url_launcher.dart';

class Layout extends StatefulWidget {
  final String docid;
  final String course;
  final String type;
  final String subject;
  const Layout(
      {super.key,
      required this.docid,
      required this.course,
      required this.type,
      required this.subject});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  double hight_cont = 120;
  List<String> images = [
    "images/istockphoto.jpg",
    "images/os1.webp",
    "images/sub.webp",
    "images/sub2.webp",
    "images/sub4.webp",
    "images/sub5.jpg",
    "images/sub6.jpg",
    "images/sub7.png",
    "images/sub3.jpeg",
    "images/mob.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Stack(children: [
                Container(
                    width: double.infinity,
                    child: Image.asset(
                      widget.subject == "Operating system 1" ||
                              widget.subject == "Operating Systems 2"
                          ? images[8]
                          : widget.subject == "Computing security1" ||
                                  widget.subject == "Computing Security 2"
                              ? images[0]
                              : widget.subject == "Information retrieval" ||
                                      widget.subject == "Cloud Computing"
                                  ? images[2]
                                  : widget.subject == "Computer network 1" ||
                                          widget.subject ==
                                              "Computer Networks 2"
                                      ? images[7]
                                      : widget.subject ==
                                              "Digital image processing"
                                          ? images[5]
                                          : widget.subject == "English language"
                                              ? images[6]
                                              : widget.subject ==
                                                      "Human - computer interaction"
                                                  ? images[3]
                                                  : widget.subject ==
                                                          "Mobile Computing"
                                                      ? images[9]
                                                      : widget.subject ==
                                                              "Computer Vision"
                                                          ? images[4]
                                                          : images[1],
                      fit: BoxFit.fitWidth,
                    )),
                Positioned(
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black
                        ])),
                    height: 300,
                  ),
                ),
                Positioned(
                    top: 18,
                    right: 10,
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              alignment: Alignment.center,
                              backgroundColor: Color.fromARGB(233, 30, 30, 30),
                              content: SizedBox(
                                height: 450,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.account_circle_rounded,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Developer Accounts : ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              decoration: TextDecoration.none,
                                              color: Colors.white,
                                              fontFamily: "Urbanist-Regula"),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        if (await canLaunchUrl(
                                            Uri.parse("https://t.me/AH_MDW"))) {
                                          await launchUrl(
                                              Uri.parse("https://t.me/AH_MDW"),
                                              mode: LaunchMode
                                                  .externalApplication);
                                        } else {
                                          throw 'Could not launch ${Uri.parse("https://t.me/AH_MDW")}';
                                        }
                                      },
                                      child: Container(
                                        color: Colors.black26,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 10),
                                        child: const Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Icon(
                                              Icons.telegram,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "Telegram Account .",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  decoration:
                                                      TextDecoration.none,
                                                  decorationStyle:
                                                      TextDecorationStyle.solid,
                                                  decorationColor: Colors.white,
                                                  decorationThickness: 3,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      "Urbanist-Regula"),
                                              textAlign: TextAlign.left,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () async {
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
                                      child: Container(
                                        color: Colors.black26,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 10),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Image.asset(
                                              "images/insta.png",
                                              height: 23,
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            const Text(
                                              "Instagram Account .",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  decoration:
                                                      TextDecoration.none,
                                                  decorationStyle:
                                                      TextDecorationStyle.solid,
                                                  decorationColor: Colors.white,
                                                  decorationThickness: 3,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      "Urbanist-Regula"),
                                              textAlign: TextAlign.left,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "Channel account : ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          decoration: TextDecoration.none,
                                          color: Colors.white,
                                          fontFamily: "Urbanist-Regula"),
                                      textAlign: TextAlign.left,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        if (await canLaunchUrl(Uri.parse(
                                            "https://t.me/CS_Stage2"))) {
                                          await launchUrl(
                                              Uri.parse(
                                                  "https://t.me/CS_Stage2"),
                                              mode: LaunchMode
                                                  .externalApplication);
                                        } else {
                                          throw 'Could not launch ${Uri.parse("https://t.me/CS_Stage2")}';
                                        }
                                      },
                                      child: Container(
                                        color: Colors.black26,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 10),
                                        child: const Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Icon(
                                              Icons.telegram,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "Stage 2 .",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  decoration:
                                                      TextDecoration.none,
                                                  decorationStyle:
                                                      TextDecorationStyle.solid,
                                                  decorationColor: Colors.white,
                                                  decorationThickness: 3,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      "Urbanist-Regula"),
                                              textAlign: TextAlign.left,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () async {
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
                                      child: Container(
                                        color: Colors.black26,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 10),
                                        child: const Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Icon(
                                              Icons.telegram,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "Stage 3 .",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  decoration:
                                                      TextDecoration.none,
                                                  decorationStyle:
                                                      TextDecorationStyle.solid,
                                                  decorationColor: Colors.white,
                                                  decorationThickness: 3,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      "Urbanist-Regula"),
                                              textAlign: TextAlign.left,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        if (await canLaunchUrl(Uri.parse(
                                            "https://t.me/Stage4_CS"))) {
                                          await launchUrl(
                                              Uri.parse(
                                                  "https://t.me/Stage4_CS"),
                                              mode: LaunchMode
                                                  .externalApplication);
                                        } else {
                                          throw 'Could not launch ${Uri.parse("https://t.me/Stage4_CS")}';
                                        }
                                      },
                                      child: Container(
                                        color: Colors.black26,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 10),
                                        child: const Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Icon(
                                              Icons.telegram,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "Stage 4 .",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  decoration:
                                                      TextDecoration.none,
                                                  decorationStyle:
                                                      TextDecorationStyle.solid,
                                                  decorationColor: Colors.white,
                                                  decorationThickness: 3,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      "Urbanist-Regula"),
                                              textAlign: TextAlign.left,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      Colors.black),
                                              shape: WidgetStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  5))))),
                                          child: const Text(
                                            "Close",
                                            style: TextStyle(
                                                fontFamily: "Urbanist-Regula",
                                                color: Colors.white),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      icon: const Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 37,
                      ),
                    )),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 30, right: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            const SizedBox(
                              width: 17,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Course 1',
                                style: TextStyle(
                                    color: Colors.grey.shade200,
                                    fontFamily: "Urbanist-Regula",
                                    fontSize: 15,
                                    letterSpacing: 2),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        FittedBox(
                          child: Text(widget.subject,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 32)),
                        ),
                        Text(widget.type,
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: "Urbanist-Medium",
                                fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ])),
          Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [
                      // Container(
                      //   decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       boxShadow: [
                      //         BoxShadow(
                      //             color: Colors.black,
                      //             blurRadius: 1,
                      //             blurStyle: BlurStyle.outer,
                      //             offset: Offset.fromDirection(2)),
                      //       ],
                      //       borderRadius: BorderRadius.circular(15)),
                      //   height: hight_cont,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Container(
                      //           // decoration: BoxDecoration(
                      //           //     color: Color(0xff5352ed),
                      //           //     borderRadius: BorderRadius.circular(15)),
                      //           child: IconButton(
                      //               onPressed: () async {
                      //                 if (await canLaunchUrl(
                      //                     Uri.parse(sub[0]["link"]))) {
                      //                   await launchUrl(
                      //                       Uri.parse(sub[0]["link"]),
                      //                       mode:
                      //                           LaunchMode.externalApplication);
                      //                 } else {
                      //                   throw 'Could not launch ${Uri.parse(sub[0]["link"])}';
                      //                 }
                      //               },
                      //               icon: Icon(
                      //                 Icons.link,
                      //                 size: 80,
                      //               ))),
                      //       Expanded(
                      //         child: Container(
                      //           margin: EdgeInsets.all(5),
                      //           alignment: Alignment.topRight,
                      //           child: Center(
                      //             child: Column(
                      //               children: [
                      //                 Text(
                      //                   sub[0]["title"],
                      //                   style: TextStyle(
                      //                       fontSize: 16,
                      //                       fontFamily: "Tajawal-Bold"),
                      //                   textDirection: TextDirection.rtl,
                      //                   textAlign: TextAlign.right,
                      //                   maxLines: 2,
                      //                   overflow: TextOverflow.ellipsis,
                      //                 ),
                      //                 SizedBox(
                      //                   height: 8,
                      //                 ),
                      //                 Expanded(
                      //                   flex: 2,
                      //                   child: Text(
                      //                     sub[0]["suoTitle"],
                      //                     textDirection: TextDirection.rtl,
                      //                     textAlign: TextAlign.right,
                      //                     softWrap: true,
                      //                     style: TextStyle(
                      //                         fontFamily: "Tajawal-Bold",
                      //                         fontSize: 13,
                      //                         color: Colors.grey.shade600),
                      //                   ),
                      //                 ),
                      //                 IconButton(
                      //                     onPressed: () {},
                      //                     icon: Icon(Icons.keyboard_arrow_down))
                      //               ],
                      //             ),
                      //           ),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // )
                      const Divider(
                        thickness: 3,
                        indent: 120,
                        endIndent: 120,
                        height: 5,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                          child: widget.type == "Lectures"
                              ? LecView(
                                  course: widget.course,
                                  docid: widget.docid,
                                )
                              : widget.type == "Summaries"
                                  ? Summaries(
                                      course: widget.course,
                                      docid: widget.docid,
                                    )
                                  : Exm(
                                      name: widget.subject,
                                    )
                          //     M(
                          //   course: widget.course,
                          //   docid: widget.docid,
                          // )
                          ),
                    ],
                  ),
                ),
              ))
        ],
      )),
    );
  }
}

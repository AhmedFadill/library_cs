import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:library_cs/massges/m.dart';
import 'package:library_cs/pages/lecture/lecture.dart';
import 'package:url_launcher/url_launcher.dart';

class Massge extends StatefulWidget {
  final String docid;
  final String course;
  const Massge({super.key, required this.docid, required this.course});

  @override
  State<Massge> createState() => _MassgeState();
}

class _MassgeState extends State<Massge> {
  double hight_cont = 120;

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
                      "images/back.png",
                      fit: BoxFit.fitWidth,
                    )),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
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
                    top: 30,
                    right: 10,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 37,
                      ),
                    )),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 45, right: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            SizedBox(
                              width: 17,
                            ),
                            Text(
                              'Course 1',
                              style: TextStyle(
                                  color: Colors.grey.shade200,
                                  fontFamily: "Urbanist-Regula",
                                  fontSize: 15,
                                  letterSpacing: 2),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text("Computing Security",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Urbanist-Medium",
                                fontSize: 32)),
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
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                          "The messages are linked to the Telegram channel. You can easily go to it from here.",
                          style: TextStyle(
                              fontFamily: "Urbanist-Regula",
                              fontSize: 14,
                              color: Colors.grey.shade600)),
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
                      Expanded(child: Lecture()
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

import 'package:flutter/material.dart';
import 'package:library_cs/massges/massge.dart';
import 'package:library_cs/pages/exam/exam.dart';
import 'package:library_cs/pages/subject/subject_course1.dart';
import 'package:library_cs/pages/subject/subject_course2.dart';

class CatogryPage extends StatefulWidget {
  const CatogryPage({super.key});

  @override
  State<CatogryPage> createState() => _CatogryPageState();
}

class _CatogryPageState extends State<CatogryPage> {
  int course = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(215, 109, 87, 252),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 45, right: 20, left: 20),
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
                            'Categories',
                            style: TextStyle(
                                color: Colors.grey.shade200,
                                fontFamily: "Urbanist-Regula",
                                fontSize: 15,
                                letterSpacing: 1),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text("Ready To Learn?",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Urbanist-Medium",
                              fontSize: 35)),
                      Text("Choose your subject.",
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontFamily: "Urbanist-Regula",
                              fontSize: 16))
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  course = 1;
                                });
                              },
                              child: Text(
                                "Course 1",
                                style: course == 1
                                    ? TextStyle(
                                        fontFamily: "Urbanist-Bold",
                                        fontSize: 16,
                                      )
                                    : TextStyle(
                                        color: Colors.grey.shade500,
                                        fontFamily: "Urbanist-Bold",
                                        fontSize: 16),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  course = 2;
                                });
                              },
                              child: Text(
                                "Course 2",
                                style: course == 2
                                    ? TextStyle(
                                        fontFamily: "Urbanist-Bold",
                                        fontSize: 16,
                                      )
                                    : TextStyle(
                                        color: Colors.grey.shade500,
                                        fontFamily: "Urbanist-Bold",
                                        fontSize: 16),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  course = 3;
                                });
                              },
                              child: Text(
                                "Exam",
                                style: course == 3
                                    ? TextStyle(
                                        fontFamily: "Urbanist-Bold",
                                        fontSize: 16,
                                      )
                                    : TextStyle(
                                        color: Colors.grey.shade500,
                                        fontFamily: "Urbanist-Bold",
                                        fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        course == 1
                            ? Divider(
                                color: Colors.black,
                                height: 10,
                                indent: 45,
                                endIndent: 245,
                                thickness: 2,
                              )
                            : course == 2
                                ? Divider(
                                    color: Colors.black,
                                    height: 10,
                                    indent: 150,
                                    endIndent: 130,
                                    thickness: 2,
                                  )
                                : Divider(
                                    color: Colors.black,
                                    height: 10,
                                    indent: 265,
                                    endIndent: 40,
                                    thickness: 2,
                                  )
                      ],
                    ),
                    SizedBox(height: 30),
                    course == 1
                        ? SubjectCourse1()
                        : course == 2
                            ? SubjectCourse2()
                            : SizedBox(height: 500, child: Exams())
                  ]),
                ),
              ))
        ],
      )),
    );
  }
}

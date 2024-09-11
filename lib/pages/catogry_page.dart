import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:library_cs/pages/exam/exam.dart';
import 'package:library_cs/pages/subject/subject_course1.dart';
import 'package:library_cs/pages/subject/subject_course2.dart';

class CatogryPage extends StatefulWidget {
  const CatogryPage({super.key});

  @override
  State<CatogryPage> createState() => _CatogryPageState();
}

class _CatogryPageState extends State<CatogryPage> {
  GlobalKey<FormState> formstate = GlobalKey();
  int course = 1;
  TextEditingController text = TextEditingController();

  CollectionReference feedback =
      FirebaseFirestore.instance.collection("feedback");

  Future addFeedback() {
    return feedback
        .add({"feedback": text.text})
        .then((value) => print("feedback Add"))
        .catchError((value) => print("error $value"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(215, 109, 87, 252),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Stack(children: [
                Positioned(
                    top: 40,
                    right: 20,
                    child: IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  "أرسل رأيك او ملاحظتك .",
                                  style: TextStyle(
                                      fontFamily: "Tajawal-Bold", fontSize: 15),
                                  textDirection: TextDirection.rtl,
                                ),
                                content: TextField(
                                  key: formstate,
                                  controller: text,
                                  textAlign: TextAlign.right,
                                  maxLines: 4,
                                  autofocus: true,
                                  decoration: const InputDecoration(
                                    hintText: "اكتب رأيك هنا",
                                    hintTextDirection: TextDirection.rtl,
                                    hintStyle: TextStyle(
                                        fontFamily: "Tajawal-Regular"),
                                    filled: true,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        "ألغاء",
                                        style: TextStyle(
                                            fontFamily: "Tajawal-Bold"),
                                      )),
                                  TextButton(
                                      style: const ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                  Color.fromARGB(
                                                      215, 109, 87, 252))),
                                      onPressed: () {
                                        if (text.text.isNotEmpty) {
                                          addFeedback();
                                          text.clear();
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return Container(
                                                margin: const EdgeInsets.symmetric(
                                                    horizontal: 35,
                                                    vertical: 300),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Image.asset(
                                                      "images/crash.gif",
                                                      height: 100,
                                                    ),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        const Text(
                                                          "تم حفظ رأيك",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  "Tajawal-Bold",
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 18),
                                                        ),
                                                        TextButton(
                                                            style: const ButtonStyle(
                                                                backgroundColor:
                                                                    WidgetStatePropertyAll(
                                                                        Color.fromARGB(
                                                                            215,
                                                                            109,
                                                                            87,
                                                                            252))),
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: const Text(
                                                              "حسناً",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "Tajawal-Bold",
                                                                  color: Colors
                                                                      .white),
                                                            ))
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        }
                                      },
                                      child: const Text(
                                        "أرسال",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Tajawal-Bold"),
                                      )),
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(
                          Icons.question_answer_rounded,
                          color: Colors.white,
                        ))),
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
                                'Categories',
                                style: TextStyle(
                                    color: Colors.grey.shade200,
                                    fontFamily: "Urbanist-Regula",
                                    fontSize: 15,
                                    letterSpacing: 1),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text("Ready To Learn?",
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
                ),
              ])),
          Expanded(
              flex: 6,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: SingleChildScrollView(
                  child: Column(children: [
                    const SizedBox(
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
                                    ? const TextStyle(
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
                                    ? const TextStyle(
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
                                    ? const TextStyle(
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
                            ? const Divider(
                                color: Colors.black,
                                height: 10,
                                indent: 45,
                                endIndent: 245,
                                thickness: 2,
                              )
                            : course == 2
                                ? const Divider(
                                    color: Colors.black,
                                    height: 10,
                                    indent: 150,
                                    endIndent: 130,
                                    thickness: 2,
                                  )
                                : const Divider(
                                    color: Colors.black,
                                    height: 10,
                                    indent: 265,
                                    endIndent: 40,
                                    thickness: 2,
                                  )
                      ],
                    ),
                    const SizedBox(height: 30),
                    course == 1
                        ? const SubjectCourse1()
                        : course == 2
                            ? const SubjectCourse2()
                            : const SizedBox(height: 500, child: Exams())
                  ]),
                ),
              ))
        ],
      )),
    );
  }
}

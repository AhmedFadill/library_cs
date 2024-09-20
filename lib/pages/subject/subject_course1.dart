import 'package:flutter/material.dart';
import 'package:library_cs/massges/massge.dart';
import 'package:library_cs/massges/table.dart';

class SubjectCourse1 extends StatefulWidget {
  const SubjectCourse1({super.key});

  @override
  State<SubjectCourse1> createState() => _SubjectCourse1State();
}

class _SubjectCourse1State extends State<SubjectCourse1> {
  // List num_massge = [];
  // bool isLoding = true;

  // getNumberDoc() async {
  //   QuerySnapshot qure =
  //       await FirebaseFirestore.instance.collection("course1").get();
  //   int i = 0;

  //   for (QueryDocumentSnapshot docs in qure.docs) {
  //     QuerySnapshot subcollectionSnapshot =
  //         await docs.reference.collection('massges').get();
  //     num_massge.insert(i, subcollectionSnapshot.size);

  //     i++;
  //     print("------------- ${docs}");
  //   }
  //   isLoding = false;
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getNumberDoc();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Massge(
                        subject: "Operating system 1",
                        docid: "3akXljJMiV9MWpd5k181",
                        course: "course1")));
              },
              child: Container(
                width: 155,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade100),
                child: Center(
                  child: Container(
                    width: 140,
                    height: 205,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xfffdd6d9)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: const Text("Oprating system 1",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 16)),
                        ),
                        // Text("${num_massge[0]} messages",
                        //     style: TextStyle(
                        //         fontFamily: "Urbanist-Light",
                        //         fontSize: 13)),
                        Image.asset(
                          "images/1.png",
                          height: 120,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Massge(
                        subject: "Computing security1",
                        docid: "WVf5xwQzPPepAsmuzi4z",
                        course: "course1")));
              },
              child: Container(
                width: 155,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade100),
                child: Center(
                  child: Container(
                    width: 140,
                    height: 165,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffd7fcf1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/2.png",
                          height: 80,
                        ),
                        FittedBox(
                          child: const Text("security 1",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 16)),
                        ),
                        // Text("${num_massge[7]} messages",
                        //     style: TextStyle(
                        //         fontFamily: "Urbanist-Light",
                        //         fontSize: 13))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Massge(
                        subject: "Information retrieval",
                        docid: "BRdkMJBELTWmvkTzlFBI",
                        course: "course1")));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: 155,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade100),
                child: Center(
                  child: Container(
                    width: 140,
                    height: 165,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff8cc4ff)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/3.png",
                          height: 80,
                        ),
                        FittedBox(
                          child: const Text("Information",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 16)),
                        ),
                        // Text("${num_massge[2]} messages",
                        //     style: TextStyle(
                        //         fontFamily: "Urbanist-Light",
                        //         fontSize: 13))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Massge(
                        subject: "Computer network 1",
                        docid: "DehvR3XHysr4kN2Apt6H",
                        course: "course1")));
              },
              child: Container(
                width: 155,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade100),
                child: Center(
                  child: Container(
                    width: 140,
                    height: 205,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xfffdada3)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: const Text("Network 1",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 16)),
                        ),
                        // Text("${num_massge[4]} messages",
                        //     style: TextStyle(
                        //         fontFamily: "Urbanist-Light",
                        //         fontSize: 13)),
                        Image.asset(
                          "images/4.png",
                          height: 120,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Massge(
                        subject: "Digital image processing",
                        docid: "FpKXRN5jW1WT21NpPxEG",
                        course: "course1")));
              },
              child: Container(
                width: 155,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade100),
                child: Center(
                  child: Container(
                    width: 140,
                    height: 205,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 250, 232, 133)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: const Text("Image processing",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 16)),
                        ),
                        // Text("${num_massge[5]} messages",
                        //     style: TextStyle(
                        //         fontFamily: "Urbanist-Light",
                        //         fontSize: 13)),
                        Image.asset(
                          "images/5.png",
                          height: 120,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Massge(
                        subject: "English language",
                        docid: "N269KHI2LjObLmz1xH0j",
                        course: "course1")));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: 155,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade100),
                child: Center(
                  child: Container(
                    width: 140,
                    height: 165,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 217, 125, 250)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/6.png",
                          height: 80,
                        ),
                        FittedBox(
                          child: const Text("English language",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 16)),
                        ),
                        // Text("${num_massge[6]} messages",
                        //     style: TextStyle(
                        //         fontFamily: "Urbanist-Light",
                        //         fontSize: 13))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Massge(
                          subject: "Human - computer interaction",
                          docid: "FpKXRN5jW1WT21NpPxEG",
                          course: "course1")));
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 155,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100),
                  child: Center(
                    child: Container(
                      width: 140,
                      height: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 166, 235, 210)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/computer.png",
                            height: 80,
                          ),
                          const FittedBox(
                            child: Text("Computer Interaction",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Urbanist-Medium",
                                    fontSize: 16)),
                          ),
                          // Text("lecture,messages",
                          //     style: TextStyle(
                          //         fontFamily: "Urbanist-Light", fontSize: 13))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const TableImage(
                            course: "course1",
                          )));
                },
                child: Container(
                  width: 155,
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100),
                  child: Center(
                    child: Container(
                      width: 140,
                      height: 205,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffc7e7ff)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(
                            child: const Text("Table of Course 1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Urbanist-Medium",
                                    fontSize: 16)),
                          ),
                          Image.asset(
                            "images/table.jpg",
                            height: 120,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

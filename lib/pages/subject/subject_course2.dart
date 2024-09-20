import 'package:flutter/material.dart';
import 'package:library_cs/massges/massge.dart';
import 'package:library_cs/massges/table.dart';

class SubjectCourse2 extends StatefulWidget {
  const SubjectCourse2({super.key});

  @override
  State<SubjectCourse2> createState() => _SubjectCourse2State();
}

class _SubjectCourse2State extends State<SubjectCourse2> {
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
                        subject: "Operating Systems 2",
                        docid: "Rhic3VfZ2JnnrGrYkKMT",
                        course: "course2")));
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
                          child: const Text("Oprating system 2",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 16)),
                        ),
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
                        subject: "Computing Security 2",
                        docid: "3DgfMDlAzgw7jIvRUwvr",
                        course: "course2")));
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
                          child: const Text("security 2",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 16)),
                        ),
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
                        subject: "Computer Vision",
                        docid: "8udbUb3p80vnVlmuZdNf",
                        course: "course2")));
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
                          child: const Text("Computer Vision",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 16)),
                        ),
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
                        subject: "Mobile Computing",
                        docid: "6Xa70HffxqnkmV146Kws",
                        course: "course2")));
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
                          child: const Text("Mobile Computing",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 16)),
                        ),
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
                        subject: "Cloud Computing",
                        docid: "SUHGImuFZMaadympouDj",
                        course: "course2")));
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
                          child: const Text("Cloud Computing",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 16)),
                        ),
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
                        subject: "Computer Networks 2",
                        docid: "ItFEFGkpyWQ6wOi56lAu",
                        course: "course2")));
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
                        const Text("Networks 2",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Urbanist-Medium",
                                fontSize: 16)),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TableImage(
                          course: "course2",
                        )));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10),
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
                        color: const Color(0xffc7e7ff)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/table.jpg",
                          height: 80,
                        ),
                        FittedBox(
                          child: const Text("Table of Course 2",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Urbanist-Medium",
                                  fontSize: 16)),
                        ),
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
        )
      ],
    );
  }
}

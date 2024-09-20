import 'package:flutter/material.dart';
import 'package:library_cs/massges/ofSubject/layout.dart';

class Lecture extends StatefulWidget {
  final String docid;
  final String course;
  final String subject;
  const Lecture(
      {super.key,
      required this.docid,
      required this.course,
      required this.subject});

  @override
  State<Lecture> createState() => _LectureState();
}

class _LectureState extends State<Lecture> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Layout(
                    subject: widget.subject,
                    type: "Lectures",
                    docid: widget.docid,
                    course: widget.course)));
          },
          child: Container(
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(10),
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 2, spreadRadius: 1)
                ]),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/lec.jpg",
                    height: 100,
                    width: 110,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Lectures",
                        style: TextStyle(
                            fontFamily: "Urbanist-Bold", fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "form here you can acsess to all lecture for this subject",
                        maxLines: 3,
                        style: TextStyle(
                            fontFamily: "Urbanist-Regula",
                            fontSize: 13,
                            height: 1.2),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Layout(
                    subject: widget.subject,
                    type: "Exams",
                    docid: widget.docid,
                    course: widget.course)));
          },
          child: Container(
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(10),
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 2, spreadRadius: 1)
                ]),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/3d-clipboard-pencil-on-purple-600nw-2200665385.webp",
                    height: 100,
                    width: 110,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Exams",
                        style: TextStyle(
                            fontFamily: "Urbanist-Bold", fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "form here you can acsess to all Exams date for this subject",
                        maxLines: 3,
                        style: TextStyle(
                            fontFamily: "Urbanist-Regula",
                            fontSize: 13,
                            height: 1.2),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Layout(
                    subject: widget.subject,
                    type: "Summaries",
                    docid: widget.docid,
                    course: widget.course)));
          },
          child: Container(
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(10),
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 2, spreadRadius: 1)
                ]),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/summary1.jpg",
                    height: 100,
                    width: 110,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Summaries",
                        style: TextStyle(
                            fontFamily: "Urbanist-Bold", fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "form here you can acsess to all summary for this subject",
                        maxLines: 3,
                        style: TextStyle(
                            fontFamily: "Urbanist-Regula",
                            fontSize: 13,
                            height: 1.2),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:library_cs/massges/ofSubject/layout.dart';

class Lecture extends StatefulWidget {
  final String docid;
  final String course;
  final String subject;
  const Lecture({super.key, required this.docid, required this.course, required this.subject});

  @override
  State<Lecture> createState() => _LectureState();
}

class _LectureState extends State<Lecture> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Container(
          margin: EdgeInsets.all(2),
          padding: EdgeInsets.all(10),
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 1)
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
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lectures",
                      style:
                          TextStyle(fontFamily: "Urbanist-Bold", fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "form here you can acsess to all lecture for this subject",
                      style: TextStyle(
                          fontFamily: "Urbanist-Regula", fontSize: 13),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "click here",
                              style: TextStyle(
                                fontFamily: "Urbanist-Bold",
                                fontSize: 13,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Layout(
                                      subject: widget.subject,
                                        type: "Lectures",
                                        docid: widget.docid,
                                        course: widget.course)));
                              },
                              icon: Icon(
                                Icons.arrow_circle_right_outlined,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          margin: EdgeInsets.all(2),
          padding: EdgeInsets.all(10),
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 1)
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
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Exams",
                      style:
                          TextStyle(fontFamily: "Urbanist-Bold", fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "form here you can acsess to all Exams date for this subject",
                      style: TextStyle(
                          fontFamily: "Urbanist-Regula", fontSize: 13),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "click here",
                              style: TextStyle(
                                  fontFamily: "Urbanist-Bold", fontSize: 13),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Layout(
                                      subject: widget.subject,
                                        type: "Exams",
                                        docid: widget.docid,
                                        course: widget.course)));
                              },
                              icon: Icon(
                                Icons.arrow_circle_right_outlined,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          margin: EdgeInsets.all(2),
          padding: EdgeInsets.all(10),
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 1)
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
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Summaries",
                      style:
                          TextStyle(fontFamily: "Urbanist-Bold", fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "form here you can acsess to all summary for this subject",
                      style: TextStyle(
                          fontFamily: "Urbanist-Regula", fontSize: 13),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "click here",
                              style: TextStyle(
                                  fontFamily: "Urbanist-Bold", fontSize: 13),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Layout(
                                      subject: widget.subject,
                                        type: "Summaries",
                                        docid: widget.docid,
                                        course: widget.course)));
                              },
                              icon: Icon(
                                Icons.arrow_circle_right_outlined,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:library_cs/massges/massge.dart';

class SubjectCourse2 extends StatefulWidget {
  const SubjectCourse2({super.key});

  @override
  State<SubjectCourse2> createState() => _SubjectCourse2State();
}

class _SubjectCourse2State extends State<SubjectCourse2> {
  List num_massge = [];

  getNumberDoc() async {
    QuerySnapshot qure =
        await FirebaseFirestore.instance.collection("course2").get();
    int i = 0;

    for (QueryDocumentSnapshot docs in qure.docs) {
      QuerySnapshot subcollectionSnapshot =
          await docs.reference.collection('massges').get();
      num_massge.insert(i, subcollectionSnapshot.size);

      i++;
      print("------------- ${num_massge}");
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNumberDoc();
  }

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
                    builder: (context) => Massge(
                        docid: "3akXljJMiV9MWpd5k181", course: "course1")));
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
                        color: Color(0xfffdd6d9)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Oprating system 2",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Urbanist-Medium",
                                fontSize: 16)),
                        Text("10 messages",
                            style: TextStyle(
                                fontFamily: "Urbanist-Light", fontSize: 13)),
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
            SizedBox(width: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Massge(
                        docid: "WVf5xwQzPPepAsmuzi4z", course: "course1")));
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
                        color: Color(0xffd7fcf1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/2.png",
                          height: 80,
                        ),
                        Text("security 2",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Urbanist-Medium",
                                fontSize: 16)),
                        Text("10 messages",
                            style: TextStyle(
                                fontFamily: "Urbanist-Light", fontSize: 13))
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
                    builder: (context) => Massge(
                        docid: "BRdkMJBELTWmvkTzlFBI", course: "course1")));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
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
                        color: Color(0xff8cc4ff)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/3.png",
                          height: 80,
                        ),
                        Text("Computer Vision",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Urbanist-Medium",
                                fontSize: 16)),
                        Text("10 messages",
                            style: TextStyle(
                                fontFamily: "Urbanist-Light", fontSize: 13))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Massge(
                        docid: "DehvR3XHysr4kN2Apt6H", course: "course1")));
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
                        color: Color(0xfffdada3)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Mobile Computing",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Urbanist-Medium",
                                fontSize: 16)),
                        Text("10 messages",
                            style: TextStyle(
                                fontFamily: "Urbanist-Light", fontSize: 13)),
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
                    builder: (context) => Massge(
                        docid: "FpKXRN5jW1WT21NpPxEG", course: "course1")));
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
                        color: Color.fromARGB(255, 250, 232, 133)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Cloud Computing",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Urbanist-Medium",
                                fontSize: 16)),
                        Text("10 messages",
                            style: TextStyle(
                                fontFamily: "Urbanist-Light", fontSize: 13)),
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
            SizedBox(width: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Massge(
                        docid: "N269KHI2LjObLmz1xH0j", course: "course1")));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
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
                        color: Color.fromARGB(255, 217, 125, 250)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/6.png",
                          height: 80,
                        ),
                        Text("Networks 2",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Urbanist-Medium",
                                fontSize: 16)),
                        Text("10 messages",
                            style: TextStyle(
                                fontFamily: "Urbanist-Light", fontSize: 13))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

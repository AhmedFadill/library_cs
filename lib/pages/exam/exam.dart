import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:library_cs/massges/m.dart';

class Exams extends StatefulWidget {
  const Exams({super.key});

  @override
  State<Exams> createState() => _ExamsState();
}

class _ExamsState extends State<Exams> {
  List<QueryDocumentSnapshot> exams = [];
  bool isLoding = true;

  getImge() async {
    QuerySnapshot qure =
        await FirebaseFirestore.instance.collection("Exam").get();
    exams.addAll(qure.docs);
    // CollectionReference qure =
    //     await FirebaseFirestore.instance.collection("ُExam");
    // DocumentSnapshot a = await qure.doc().get();
    // print(a[0]["date"]);
    // DocumentReference docRef = qure.doc('BTatmue6BCqfBivJFBah');
    // DocumentSnapshot docSnapshot = await docRef.get();

    // if (docSnapshot.exists) {
    //   pathImge = docSnapshot.get('table');
    // }
    // print("-------------- ${pathImge}");
    // isLoding = false;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getImge();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: exams.length,
      itemBuilder: (context, index) {
        return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 1,
                    blurStyle: BlurStyle.outer,
                    offset: Offset.fromDirection(2))
              ],
              color: Colors.grey.shade50,
            ),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          exams[index]["title"],
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: 18, fontFamily: "Tajawal-Bold"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "المادة : ${exams[index]["supTitle"]}",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Tajawal-Regular",
                              color: Colors.grey.shade500),
                        ),
                        Text(
                          "الموعد : ${exams[index]["date"]}",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Tajawal-Regular",
                              color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/3d-clipboard-pencil-on-purple-600nw-2200665385.webp",
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ));
      },
    );
  }
}

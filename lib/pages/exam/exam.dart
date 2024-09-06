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
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          padding: const EdgeInsets.all(3),
          height: 110,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      exams[index]["name"],
                      style:
                          TextStyle(fontSize: 15, fontFamily: "Urbanist-Bold"),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      exams[index]["title"],
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Tajawal-Bold",
                          color: Colors.grey.shade600),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "الموعد : ${exams[index]["date"]}",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Tajawal-Bold",
                          color: Colors.grey.shade600),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "images/3d-clipboard-pencil-on-purple-600nw-2200665385.webp",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

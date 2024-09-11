import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TableImage extends StatefulWidget {
  final String course;
  const TableImage({super.key, required this.course});

  @override
  State<TableImage> createState() => _TableImageState();
}

class _TableImageState extends State<TableImage> {
  List<QueryDocumentSnapshot> image = [];
  bool isLoding = true;

  getData() async {
    CollectionReference exam = FirebaseFirestore.instance.collection("table");
    QuerySnapshot examdoc =
        await exam.where("course", isEqualTo: widget.course).get();
    examdoc.docs.forEach(
      (element) {
        image.add(element);
      },
    );

    isLoding = false;
    setState(() {});
  }

  // getImge() async {
  //   CollectionReference qure =
  //       await FirebaseFirestore.instance.collection("course1");
  //   DocumentReference docRef = qure.doc('BTatmue6BCqfBivJFBah');
  //   DocumentSnapshot docSnapshot = await docRef.get();

  //   if (docSnapshot.exists) {
  //     pathImge = docSnapshot.get('table');
  //   }
  //   print("-------------- ${pathImge}");
  //   isLoding = false;
  //   setState(() {});
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Table of ${widget.course}",
            style: const TextStyle(fontFamily: "Urbanist-Bold"),
          ),
        ),
        body: isLoding == true
            ? Center(
                child: Image.asset(
                "images/load.gif",
                height: 90,
              ))
            : image.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/nr.gif",
                          height: 100,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "there is nothing her yet",
                          style: TextStyle(
                              fontFamily: "Urbanist-Bold", fontSize: 20),
                        )
                      ],
                    ),
                  )
                : Center(
                    child: Container(
                    child: Image.network(
                      image[0]["link1"],
                    ),
                  )));
  }
}

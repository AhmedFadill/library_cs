import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TableImage extends StatefulWidget {
  final String course;
  const TableImage({super.key, required this.course});

  @override
  State<TableImage> createState() => _TableImageState();
}

class _TableImageState extends State<TableImage> {
  List<bool> study = [true, false];

  void handleToggle(int index) {
    setState(() {
      study = [false, false];
      study[index] = !study[index];
    });
  }

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
            style: const TextStyle(fontFamily: "Urbanist-Bold", fontSize: 18),
          ),
        ),
        body: isLoding == true
            ? Center(
                child: Image.asset(
                "images/system-regular-716-spinner-three-dots-hover-trapdoor (1).gif",
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
                    child: Column(children: [
                    SizedBox(
                      height: 20,
                    ),
                    ToggleButtons(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text("صباحي"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text("مسائي"),
                        )
                      ],
                      selectedColor: Colors.black,
                      fillColor: Colors.grey.shade300,
                      onPressed: handleToggle,
                      isSelected: study,
                      textStyle:
                          TextStyle(fontFamily: "Tajawal-Bold", fontSize: 14),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Image.network(
                        image[0][study[0] == true ? "link1" : "link2"],
                      ),
                    ),
                  ])));
  }
}

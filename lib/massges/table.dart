import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TableImage extends StatefulWidget {
  final String path;
  const TableImage({super.key, required this.path});

  @override
  State<TableImage> createState() => _TableImageState();
}

class _TableImageState extends State<TableImage> {
  String pathImge = "";
  bool isLoding = true;

  getImge() async {
    CollectionReference qure =
        await FirebaseFirestore.instance.collection("course1");
    DocumentReference docRef = qure.doc('BTatmue6BCqfBivJFBah');
    DocumentSnapshot docSnapshot = await docRef.get();

    if (docSnapshot.exists) {
      pathImge = docSnapshot.get('table');
    }
    print("-------------- ${pathImge}");
    isLoding = false;
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
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: isLoding == true
            ? Center(child: CircularProgressIndicator())
            : Center(
                child: Container(
                child: Image.network(
                  pathImge,
                ),
              )));
  }
}

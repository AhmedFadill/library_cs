import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LecView extends StatefulWidget {
  final String course;
  final String docid;
  const LecView({super.key, required this.course, required this.docid});

  @override
  State<LecView> createState() => _LecViewState();
}

class _LecViewState extends State<LecView> {
  List img = ["images/lecV.jpeg", "images/lecV2.jpg", "images/summary1.jpg"];

  bool isLoding = true;
  List<QueryDocumentSnapshot> sub = [];
  double hight_cont = 110;

  getData() async {
    QuerySnapshot qure = await FirebaseFirestore.instance
        .collection(widget.course)
        .doc(widget.docid)
        .collection("Lectures")
        .get();
    sub.addAll(qure.docs);
    isLoding = false;
    
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return isLoding == true
        ? Center(child: CircularProgressIndicator())
        : sub.length < 1
            ? Center(
                child: Text("There is nothing to see here"),
              )
            :ListView.builder(
      itemCount: sub.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          padding: const EdgeInsets.all(3),
          height: 110,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1)
              ]),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    index % 3 == 0
                        ? img[0]
                        : index % 3 == 1
                            ? img[1]
                            : img[2],
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      sub[index]["name"],
                      style:
                          TextStyle(fontFamily: "Urbanist-Bold", fontSize: 20),
                    ),
                    Text(
                      sub[index]["title"],
                      style: TextStyle(
                          fontFamily: "Urbanist-Medium", fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              //IconButton(onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
              IconButton(
                  onPressed: () async {
                    if (await canLaunchUrl(
                        Uri.parse(sub[index]["linkDrive"]))) {
                      await launchUrl(Uri.parse(sub[index]["linkDrive"]),
                          mode: LaunchMode.externalApplication);
                    } else {
                      throw 'Could not launch ${Uri.parse(sub[index]["linkDrive"])}';
                    }
                  },
                  icon: Icon(Icons.download_for_offline_outlined)),
            ],
          ),
        );
      },
    );
  }
}

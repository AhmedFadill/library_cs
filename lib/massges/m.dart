import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class M extends StatefulWidget {
  final String course;
  final String docid;
  const M({super.key, required this.course, required this.docid});

  @override
  State<M> createState() => _MState();
}

class _MState extends State<M> {
  List<QueryDocumentSnapshot> sub = [];
  double hight_cont = 110;

  getData() async {
    QuerySnapshot qure = await FirebaseFirestore.instance
        .collection(widget.course)
        .doc(widget.docid)
        .collection("massges")
        .get();
    sub.addAll(qure.docs);
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
    return ListView.builder(
      itemCount: sub.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 1,
                    blurStyle: BlurStyle.outer,
                    offset: Offset.fromDirection(2)),
              ],
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                alignment: Alignment.center,
                width: 240,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        sub[index]["title"],
                        style:
                            TextStyle(fontSize: 14, fontFamily: "Tajawal-Bold"),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        sub[index]["supTitle"],
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "Tajawal-Bold",
                            fontSize: 12,
                            color: Colors.grey.shade600),
                      ),
                      // IconButton(
                      //     onPressed: () {
                      //       setState(() {
                      //         hight_cont = 160;
                      //       });
                      //     },
                      //     icon: Icon(Icons.keyboard_arrow_down))
                    ],
                  ),
                ),
              ),
              Container(
                  // decoration: BoxDecoration(
                  //     color: Color(0xff5352ed),
                  //     borderRadius: BorderRadius.circular(15)),
                  child: IconButton(
                      onPressed: () async {
                        if (await canLaunchUrl(Uri.parse(sub[index]["link"]))) {
                          await launchUrl(Uri.parse(sub[index]["link"]),
                              mode: LaunchMode.externalApplication);
                        } else {
                          throw 'Could not launch ${Uri.parse(sub[index]["link"])}';
                        }
                      },
                      icon: Icon(
                        Icons.share_outlined,
                        size: 50,
                      ))),
            ],
          ),
        );
      },
    );
  }
}

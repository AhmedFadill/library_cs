import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Summaries extends StatefulWidget {
  final String course;
  final String docid;
  const Summaries({super.key, required this.course, required this.docid});

  @override
  State<Summaries> createState() => _SummariesState();
}

class _SummariesState extends State<Summaries> {
  bool isLoding = true;
  List<QueryDocumentSnapshot> sub = [];

  getData() async {
    QuerySnapshot qure = await FirebaseFirestore.instance
        .collection(widget.course)
        .doc(widget.docid)
        .collection("massges")
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
        ? Center(child: Image.asset(
            "images/system-regular-716-spinner-three-dots-hover-trapdoor (1).gif",
            height: 90,
          ))
        : sub.isEmpty
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
                      style:
                          TextStyle(fontFamily: "Urbanist-Bold", fontSize: 20),
                    )
                  ],
                ),
              )
            : ListView.builder(
                itemCount: sub.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 120,
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 1)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () async {
                            if (await canLaunchUrl(
                                Uri.parse(sub[index]["link"]))) {
                              await launchUrl(Uri.parse(sub[index]["link"]),
                                  mode: LaunchMode.externalApplication);
                            } else {
                              throw 'Could not launch ${Uri.parse(sub[index]["link"])}';
                            }
                          },
                          child: Container(
                            width: 70,
                            height: 50,
                            margin: const EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade700,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.link,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, right: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  sub[index]["title"],
                                  style: const TextStyle(
                                      fontSize: 14, fontFamily: "Tajawal-Bold"),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.right,
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  sub[index]["supTitle"],
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.right,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: "Tajawal-Bold",
                                      fontSize: 10,
                                      color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // ClipRRect(
                        //   borderRadius: BorderRadius.circular(12),
                        //   child: Image.asset(
                        //     "images/lecV.jpeg",
                        //     width: 100,
                        //     height: 100,
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                      ],
                    ),
                  );
                },
              );
  }
}

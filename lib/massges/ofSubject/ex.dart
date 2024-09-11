import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Exm extends StatefulWidget {
  final String name;
  const Exm({super.key, required this.name});

  @override
  State<Exm> createState() => _ExmState();
}

class _ExmState extends State<Exm> {
  List<QueryDocumentSnapshot> data = [];
  bool isLoding = true;

  getData() async {
    CollectionReference exam = FirebaseFirestore.instance.collection("Exam");
    QuerySnapshot examdoc =
        await exam.where("name", isEqualTo: widget.name).get();
    examdoc.docs.forEach(
      (element) {
        data.add(element);
      },
    );

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
        ? Center(
            child: Image.asset(
            "images/system-regular-716-spinner-three-dots-hover-trapdoor (1).gif",
            height: 90,
          ))
        : data.isEmpty
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
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    padding: const EdgeInsets.all(3),
                    height: 110,
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                data[index]["name"],
                                style: const TextStyle(
                                    fontSize: 15, fontFamily: "Urbanist-Bold"),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                              ),
                              Text(
                                data[index]["title"],
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
                                "الموعد : ${data[index]["date"]}",
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
                        const SizedBox(
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

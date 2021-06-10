import 'package:flutter/material.dart';
import 'package:flutter_appgovernment_subsidy/AppList.dart';
import 'package:flutter_appgovernment_subsidy/model/PopularItem.dart';
import 'package:get/get.dart';

import 'popularListItem.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

final subsidies = FirebaseFirestore.instance.collection("subsidy");

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  var subsidyName;
  var subsidyInfo;

  List<PopularItem> popularList = AppList.popularItemList;

  @override
  void initState() {
    super.initState();
    getAllSubsidies();
  }

  getAllSubsidies() async {
    print("1");
    DocumentSnapshot dataSnapshot = await subsidies.doc("subsidy 1").get();
    setState(() {
      subsidyName = dataSnapshot["name"];
      subsidyInfo = dataSnapshot["info"];
    });
    print("2");
    print(dataSnapshot["name"]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      child: GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return popularListItem(popularList, index, subsidyName, subsidyInfo);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_appgovernment_subsidy/AppList.dart';
import 'package:flutter_appgovernment_subsidy/model/PopularItem.dart';
import 'package:get/get.dart';

import 'popularListItem.dart';
class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {


List<PopularItem> popularList=AppList.popularItemList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(

          height: Get.height,
          width: Get.width,
      child: GridView.builder(

        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10),
          itemCount: popularList.length,
        itemBuilder: (BuildContext context,int index){
          return popularListItem(popularList,index);
        },


      ),

    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_appgovernment_subsidy/AppColors.dart';
import 'package:get/get.dart';

import 'model/PopularItem.dart';

class Itemdecription extends StatefulWidget {
  PopularItem popularItem;
  Itemdecription({this.popularItem});
  @override
  _ItemdecriptionState createState() => _ItemdecriptionState();
}

class _ItemdecriptionState extends State<Itemdecription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: Container(
            child: Icon(Icons.arrow_back,color: AppColors.primaryColour,size: 20.0,),
          ),
        ),
        title: Text(widget.popularItem.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.primaryColour),
      ),

      ),
      body: Text(widget.popularItem.info),
    );
  }
}

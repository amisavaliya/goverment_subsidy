import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appgovernment_subsidy/AppColors.dart';
import 'package:flutter_appgovernment_subsidy/Itemdecription.dart';
import 'package:get/get.dart';

import 'model/PopularItem.dart';


Widget popularListItem(List<PopularItem> popularItem,int index){
  return new Container(
    child: Column(

      children: [
        Container(
            height:110.0,
            width:Get.width,
            decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage(popularItem[index].image),
              fit: BoxFit.cover,
            )
        )
        ),
        Container(
          child: Text(popularItem[index].name,style: TextStyle(color: AppColors.primaryColour,fontSize: 18,fontWeight: FontWeight.bold),),
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
              color:AppColors.greenColor,

              borderRadius: BorderRadius.only(bottomRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0 )),
          ),
          child:RaisedButton(
            color: AppColors.greenColor,
            onPressed: (){
              Get.to(Itemdecription(popularItem: popularItem[index],));

            },
          child: Center(child: Text("SEE MORE",
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          )),
          )
        )


      ],
    ),

      );

}

import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter_appgovernment_subsidy/AboutScreenUI1.dart';
import 'package:get/get.dart';



void main(){
  runApp( Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'mmm',
      theme: ThemeData(primarySwatch:Colors.brown),
      home: AboutScreenUI1(

      ),
    );
  }
}



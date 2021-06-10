import 'package:flutter/material.dart';
import 'package:flutter_appgovernment_subsidy/AppColors.dart';
import 'package:flutter_appgovernment_subsidy/Popular.dart';
import 'package:flutter_appgovernment_subsidy/Recommended.dart';
import 'package:flutter_appgovernment_subsidy/Wishlisted.dart';
import 'package:get/get.dart';
class AboutScreenUI1 extends StatefulWidget {
  @override
  _AboutScreenUI1State createState() => _AboutScreenUI1State();
}

class _AboutScreenUI1State extends State<AboutScreenUI1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child:Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text("Government Subsidies and Schemes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.primaryColour),
        ),
        bottom: TabBar(
          indicatorColor: AppColors.primaryColour,
          labelColor: AppColors.primaryColour,

          tabs: [
            Tab(text:'Popular',

            ),
            Tab(text:'Recommended'),
            Tab(text:'Wishlisted'),

          ],
        ),
      ),
      body:

              TabBarView(
                children: [
                     Popular(),
                     Wishlisted(),
                     Recommended(),
                ],
              )

),
    );
  }
}


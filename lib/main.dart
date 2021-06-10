import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter_appgovernment_subsidy/AboutScreenUI1.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore.instance.settings;
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



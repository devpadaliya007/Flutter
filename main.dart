import 'package:flutter/material.dart';
import 'Lab-17/list.dart';
import 'Lab-17/student_db_helper.dart';
import 'Lab-18/login_screen.dart';
import 'Lab-18/student_form.dart';
import 'Lab-19/student_list.dart';
import 'Lab-21/AlertDialog.dart';
import 'Lab-21/JsonData.dart';
import 'Lab-21/AlertDialog.dart';
import 'Lab-22/Practical1.dart';
import 'Lab-23/lazyloading.dart';
import 'Lab-25/CountryList.dart';
import 'Lab-26/ProductListScreen.dart';
import 'Lab-27/NewsApp.dart';
import 'Lab-29/MoviesList.dart';
import 'Lab-30/FoodAPI.dart';



 void main() {
   runApp(const MyApp());
 }

 class MyApp extends StatefulWidget {
   const MyApp({super.key});

   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home:FoodAPI(),
     );
   }
 }
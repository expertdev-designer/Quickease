import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:quikies/Colors/app_colors.dart';
import 'package:quikies/garage/wash_my_car.dart';
import 'package:quikies/utils/utilities.dart';
import 'package:quikies/vehicle/add_vehicle_page.dart';
import 'package:quikies/widgets/app_buttons.dart';
import 'package:quikies/widgets/imag.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref('Add Vehicle');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(height: 40,),
            Row(
              children: [
                Icon(Icons.arrow_back_rounded,size: 32,color: Color(0xff277FC1),),
                SizedBox(width: 80),
                Text('My Garage',style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'poppins',
                  color: Color(0xff2A2D37),
                  fontWeight: FontWeight.w500,
                ),),
              ],
            ),
            Container(height: 25,),
            Expanded(
              child: FirebaseAnimatedList(
                query: ref,
                itemBuilder: (context, snapshot, animation, index) {
                  String vehicleName = snapshot.child('vehicle name').value.toString();
                  String color = snapshot.child('color').value.toString();

                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8,horizontal: 0.3),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      border: Border.all(
                        color: const Color(0xffFFFFFF),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 0.0,
                          blurRadius: 0.0,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
     InkWell(

     ),
                    //    Icon(
                      //    Icons.check_box_outline_blank,
                        //  color: Colors.grey,
                       // ),
                        Text(
                          ' $vehicleName',
                          style: TextStyle(
                            color: Color(0xff2B2F32),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          ' $color',
                          style: TextStyle(
                            color: Color(0xffABAFB1),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(height: 1,color:MyAppColor.lightColor,),
            Container(

              padding: const EdgeInsets.only(top:15,left: 170,right: 10,bottom: 5),
            child:
            AppButtons(textColor: Colors.white,borderColor:MyAppColor.buttonColor ,height:56 ,text:'Next',onTap: () {
              }// Handle arrow button tap
            ,width:200, backgroundColor: Color(0xff277FC1) ,)

/*
            TextButton(

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WashMyCar()),
                );
                // Add signup logic here
              },

              child: const Text(
                'Next',
                style: TextStyle(
                  color: Color(0xff277FC1),
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                ),
              ),

            ),
    */
            ),
          ],


        ),

      ),


    );
  }
}

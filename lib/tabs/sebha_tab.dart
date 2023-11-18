//import 'package:assignment_sebha/myTheme_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../myTheme_data.dart';

class SebhaTab extends StatefulWidget{
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

  int tasCount = 0;


  List<String>azkar = [
    'لا اله الا الله',
    'الله اكبر',
    'الحمد لله',
    'سبحان الله'
  ];

  void incCounter() {
    setState(() {
      counter++;
    });
  }

  //String text='سبحان الله';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/head_of_seb7a.png'),

          InkWell(onTap: () {
            if (counter == 33) {
              counter = 0;


              if (tasCount == azkar.length - 1) {
                tasCount = 0;
              } else {
                tasCount++;
              }
            } else {
              counter++;
            }

            setState(() {});
          },
              child: Image.asset('assets/images/body_of_seb7a.png')),
          //SizedBox(height: 30,),
          Text('عدد التسبيحات', style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.normal,
              fontSize: 25,
              color: Colors.black)),
          SizedBox(height: 30,),


          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffB7935F),

            ),
            child: ElevatedButton(
              onPressed: () {

              },
              child: Text('$counter', style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),),
          ),

          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyThemeData.primaryColor,
            ),
            child: Text(
                azkar[tasCount], style: Theme
                .of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.bold,)),),


        ],

      ),
    );
  }
}








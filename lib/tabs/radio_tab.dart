//import 'package:assignment_sebha/myTheme_data.dart';
import 'package:flutter/material.dart';

import '../myTheme_data.dart';

class RadioTab extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/radio_image.png'),
            SizedBox(height: 80,),
            Text('اذاعه القران الكريم',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: MyThemeData.darkColor),),
            SizedBox(height: 50,),
            Image.asset('assets/images/sound.png'),



          ],
        ),
      ),
    );


  }
}
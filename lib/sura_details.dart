import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tain_islami_app/provider/sura_detailes_provider.dart';
import 'package:tain_islami_app/sura_modle.dart';
//import 'package:test_is/myThem_data.dart';
//import 'package:test_is/sura_model.dart';

import 'myTheme_data.dart';

class SuraDetailes extends StatefulWidget {
 // static const String routeName='SuraDetails';
  static const String routeName='Sura';
  @override
  State<SuraDetailes> createState() => _SuraDetailesState();
}

class _SuraDetailesState extends State<SuraDetailes> {
  //List<String>verses=[];



  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraModel;
   /* if(verses.isEmpty){
      loadFile(args.index);
    }*/
    return ChangeNotifierProvider(
       create: (context)=>SuraDetailsProvider()..
       loadFile(args.index),
      builder: (context,child){
         var pro=Provider.of<SuraDetailsProvider>(context);
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text('suraName',style: Theme.of(context).textTheme.bodyLarge),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                      color: MyThemeData.primaryColor
                  )
              ),
              child: ListView.builder(
                  itemBuilder:(context,index){
                    return Text(pro.verses[index],style: Theme.of(context).textTheme.bodyMedium,);
                  },
                  itemCount:pro.verses.length ),
            ),
          ),
        ),


      );}
    ) ;
  }

}

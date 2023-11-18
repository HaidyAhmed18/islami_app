import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tain_islami_app/bottom_sheets/language_bottom_sheet.dart';
import 'package:tain_islami_app/bottom_sheets/themeing_bottom_sheet.dart';
import 'package:tain_islami_app/myTheme_data.dart';
import 'package:tain_islami_app/provider/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SettingsTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Languege',style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black)),
          InkWell(
            onTap: (){
              showLanguageBottomSheet(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                   border: Border.all(color: MyThemeData.primaryColor),
              ),
              child: Text(pro.languageCode=='en'?AppLocalizations.of(context)!.eng:AppLocalizations.of(context)!.arabic,style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black)),
            ),
          ),
          SizedBox(height: 20,),
          Text('Themeing',style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black)),
          InkWell(
            onTap: (){
              showThemingBottomSheet(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: MyThemeData.primaryColor),
              ),
              child: Text('light',style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
  showLanguageBottomSheet(BuildContext context){
    showModalBottomSheet(context: context,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
        borderSide: BorderSide(color: MyThemeData.primaryColor),
      ),
      builder: (context)=>LanguageBottomSheet(),
      /*Container(
      height: MediaQuery.of(context).size.height*.5,
    )*/);
  }
  showThemingBottomSheet(BuildContext context){
    showModalBottomSheet(context: context,
      isScrollControlled: false,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
        borderSide: BorderSide(color: MyThemeData.primaryColor),
      ),
      builder: (context)=>ThemeingBottomSheet(),
      /* Container(
        height: MediaQuery.of(context).size.height*.5,

      )*/);
  }

}
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
/*ده بروفايدير كبير بيسمع في الابلكيشن كله
 احنا هنا عايزين نغير في اللغه وطبعا اللغه خاصه بالالبلكيشن كله لذلك استخدمنا البروفايدر
الجمله المستخدمه مع البروفيدر علشان يسمع في الابلكين كله هي notifyliseners

 */
   String languageCode='en';
   bool isEnglish=true;

   ThemeMode modeApp=ThemeMode.light;

   void changeLanguage(String langCode){
     languageCode=langCode;
     notifyListeners();
     /*
     انا كده غيرت اللغه عايز الابلكيشن كله يسمعه
     الابلكيشن كله بيدا من عند main
     اروح عند myApp
     واعمل لها راب بchangeNotiferProvide
      */
   }

   void themeMode(ThemeMode mode){
     modeApp=mode;
     notifyListeners();

     /* if(mode==ThemeMode.light){
       mode=ThemeMode.light;
     }else{
       mode=ThemeMode.dark;
     }*/
   }
   String getBackground(){
     if(modeApp==ThemeMode.light){
       return 'assets/images/background_screen_bg.png';
     }
     else{
       return 'assets/images/background-dark.png';
     }
   }
}
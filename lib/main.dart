import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tain_islami_app/home.dart';
import 'package:tain_islami_app/myTheme_data.dart';
import 'package:tain_islami_app/provider/my_provider.dart';
import 'package:tain_islami_app/provider/sura_detailes_provider.dart';
import 'package:tain_islami_app/sura_details.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context)=>MyProvider(),
      ),

     /* ChangeNotifierProvider(create: (context)=>SuraDetailsProvider(),)*/
  ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(pro.languageCode),
      /*localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],*/
      /*supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],*/
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SuraDetailes.routeName:(context)=>SuraDetailes(),

      },
      theme: MyThemeData.lightTheme,
      themeMode: pro.modeApp,
    );
  }
}



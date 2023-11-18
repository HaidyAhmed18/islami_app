import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tain_islami_app/myTheme_data.dart';
import 'package:tain_islami_app/provider/my_provider.dart';
import 'package:tain_islami_app/tabs/ahades_tab.dart';
import 'package:tain_islami_app/tabs/quran_tab.dart';
import 'package:tain_islami_app/tabs/radio_tab.dart';
import 'package:tain_islami_app/tabs/sebha_tab.dart';
import 'package:tain_islami_app/tabs/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName='Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);

    // TODO: implement build
    return Stack(
      children: [
        Image.asset(
          pro.getBackground(),
            width: double.infinity),
        Scaffold(
          backgroundColor: Colors.transparent,

          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(AppLocalizations.of(context)!.appTitle,style: Theme.of(context).textTheme.bodyLarge?.copyWith( color: MyThemeData.darkColor),
              /*style: GoogleFonts.elMessiri(fontWeight: FontWeight.bold,color: Color(0xff242424),fontSize: 30),*/)

    ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
              onTap: (value){
              index=value;
              setState(() {

              });
              },
              backgroundColor: MyThemeData.primaryColor,
              items: [

            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png')),label: 'quran',backgroundColor: MyThemeData.primaryColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahades.png')),label: 'ahades',backgroundColor: MyThemeData.darkColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),label: 'radio',backgroundColor: MyThemeData.primaryColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),label: 'sebha',backgroundColor: MyThemeData.darkColor),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings',backgroundColor: MyThemeData.primaryColor),




          ]),
          body:tabs[index] ,

          ),
      ],


    );


  }
  List<Widget>tabs=[QuranTab(),SebhaTab(),RadioTab(),AhadethTap(),SettingsTab()];

}
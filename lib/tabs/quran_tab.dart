import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tain_islami_app/myTheme_data.dart';
import 'package:tain_islami_app/sura_details.dart';
import 'package:tain_islami_app/sura_modle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatelessWidget{
  List<String>suraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/head_quran_bg.png'),

          Divider(color: MyThemeData.primaryColor,thickness: 2,),

          Text(AppLocalizations.of(context)!.suraNames,style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.bold,color:MyThemeData.darkColor )),

          Divider(color: MyThemeData.primaryColor,thickness: 2,),
          
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context,index)=>Divider(
                thickness: 2,
                indent: 40,
                endIndent: 40,
                color: MyThemeData.primaryColor,
              ),
                itemBuilder: (context,index){
                  return InkWell(
                    onTap:(){
                      Navigator.pushNamed(context, SuraDetailes.routeName,
                      arguments: SuraModel(name:suraNames[index] , index: index));
                    },
                    child: Center(
                        child: Text(suraNames[index], style: Theme.of(context).textTheme.bodySmall,)),
                  );
                },
              itemCount: suraNames.length,
            ),
          )
          




        ],

      ),
    );
  }
}
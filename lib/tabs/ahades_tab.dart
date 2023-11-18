import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../ahadeth_details.dart';
import '../ahadeth_model.dart';
import '../myTheme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class AhadethTap extends StatelessWidget {
  List<AhadethModel>allAhadeth=[];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/ahadeth_image.png'),
        Divider(
          color: MyThemeData.primaryColor,
          thickness: 3,
          indent: 40,
          endIndent: 40,
        ),
        Text(AppLocalizations.of(context)!.ahadeth,style: Theme.of(context).textTheme.bodyLarge,),
        Divider(
          color: MyThemeData.primaryColor,
          thickness: 3,
          indent: 40,
          endIndent: 40,
        ),
        ListView.builder(
          physics:NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder:(context,index){
            return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, AhadethDetails.routeName,arguments: allAhadeth[index]);
                },
                child: Text(allAhadeth[index].title, style: Theme.of(context).textTheme.bodyLarge,));
          },
          itemCount: allAhadeth.length,)

      ],
    );
  }
  void loadHadeth(){

    rootBundle.loadString('assets/files/ahadeth.txt')
        .then((ahadeth) {
      List<String>ahadethList=ahadeth.split('#');
      for(int i=0;i<ahadethList.length;i++){
        String HadethOne=ahadethList[i];
        List<String>HadethOneLines=HadethOne.trim().split('\n');
        String title=HadethOneLines[0];
        HadethOneLines.removeAt(0);
        List<String>content=HadethOneLines;
        AhadethModel ahadethModel=AhadethModel(title, content);
        print(ahadethModel.title);
        print('$i');
        allAhadeth.add(ahadethModel);
      }



    }).catchError((e){
      print(e.toString());
    });
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tain_islami_app/myTheme_data.dart';
import 'package:tain_islami_app/provider/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LanguageBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);  //هنا عملت object من provider
    return Container(
      padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
               InkWell(
                 onTap: (){
                    provider.changeLanguage('en');
                 },
                 child: Row(
                   children: [
                     Text(AppLocalizations.of(context)!.eng,
                       style: Theme.of(context).textTheme.bodyMedium?.copyWith(color:provider.languageCode=='en'?MyThemeData.primaryColor:Colors.black54),),
                     Spacer(),
                     provider.languageCode=='en'?Icon(Icons.done,size: 35,color: provider.languageCode=='en'?MyThemeData.primaryColor:Colors.black54):SizedBox.shrink(),
                   ],
                 ),
               ),
              InkWell(
                onTap: (){
                  provider.changeLanguage('ar');
                },
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.arabic,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: provider.languageCode=='ar'?MyThemeData.primaryColor:Colors.black54)),
                    Spacer(),
                    provider.languageCode=='en'?
                        SizedBox.shrink()  //shrink: book empty place
                    :Icon(Icons.done, size: 35,color: provider.languageCode=='ar'?MyThemeData.primaryColor:Colors.black54),
                  ],
                ),
              ),

            ],
          ),
    );
  }
}

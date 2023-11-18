/*import 'package:flutter/material.dart';

class ThemeingBottomSheet extends StatelessWidget {
  bool isLight=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Text('Light',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Color(0xffB7935F)),),
               Spacer(),
               isLight?Icon(Icons.done,size: 35,color: Color(0xffB7935F ),):SizedBox.shrink()
            ],
          ),
          Row(
            children: [
              Text('dark',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black54),),
              Spacer(),
              isLight?SizedBox.shrink()
              :Icon(Icons.done,size: 35,color: Color(0xffB7935F ),)
            ],
          ),

        ],
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tain_islami_app/myTheme_data.dart';
import 'package:tain_islami_app/provider/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class ThemeingBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);  //هنا عملت object من provider
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              provider.themeMode(ThemeMode.light);
            },
            child: Row(
              children: [
                Text('light',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color:provider.modeApp==ThemeMode.light?Theme.of(context).colorScheme.background:Colors.white),),
                Spacer(),
                provider.modeApp==ThemeMode.light?Icon(Icons.done,size: 35,color: provider.languageCode=='en'?MyThemeData.primaryColor:Colors.black54):SizedBox.shrink(),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              provider.themeMode(ThemeMode.dark);
            },
            child: Row(
              children: [
                Text('dark',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.modeApp==ThemeMode.dark?Theme.of(context).colorScheme.background:MyThemeData.darkColor)),
                Spacer(),
                provider.modeApp==ThemeMode.light?
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


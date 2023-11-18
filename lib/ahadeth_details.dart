import 'package:flutter/material.dart';
import 'ahadeth_model.dart';
import 'myTheme_data.dart';

class AhadethDetails extends StatelessWidget {
  static const String routeName='Ahadeth Detailes';
  const AhadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as AhadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/background_png')),

      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title,style: Theme.of(context).textTheme.bodyLarge),
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
            child: ListView.builder(itemBuilder:(context,index){
              return Text(args.content[index],style: Theme.of(context).textTheme.bodyMedium);
            }
                ,
                itemCount:args.content.length ),
          ),
        ),
      ),
    );
  }
}

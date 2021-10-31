import 'dart:ui';

import 'package:devlopers_app/Constants/color_const.dart';
import 'package:devlopers_app/Constants/utils.dart';
import 'package:devlopers_app/Widgets/common_Widgets/Common_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Directionality(

          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("مهام",style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: textColor
                  ),),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_rounded,color: iconGrey,)),
                      Text("تصـفيـة",style: Theme.of(context).textTheme.bodyText1,),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 7,
                      child: driverDialoge(context,text: "100",)),
                  Expanded(
                    child: SizedBox(
                      width: 25.0,
                    ),
                  ),
                  Expanded(
                      flex: 7,
                      child: driverDialoge(context,text: "80",color: textColor,))

                ],
              ),
              SizedBox(
                height: 25.0,
              ),

              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex:7,
                      child: driverDialoge(context,text: "20",color: greenDialoge,)),
                  Expanded(
                    child: SizedBox(
                      width: 25.0,
                    ),
                  ),
                  Expanded(
                      flex:7,
                      child: driverDialoge(context,text: "50",color: primaryColor,)),


                ],
              ),

              SizedBox(
                height: 25.0,
              ),
              Text("ملاحظات",style: Theme.of(context).textTheme.headline6,),
              Container(
                margin: const EdgeInsets.only(right: 7.5),
                padding: const EdgeInsets.all(10.0),
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        // spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0,5)
                    ),
                    BoxShadow(
                        color: Colors.purpleAccent.withOpacity(.5),
                        // spreadRadius: 1,
                        // blurRadius: 1,
                        offset: Offset(7.5,0)
                    ),
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ملاحظات التأخير",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),),
                    Text("نرجو ملاحظه التاخير المتكرر",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: primaryColor
                    ),),
                    Text("العلاقات العامة",style: Theme.of(context).textTheme.bodyText1,),
                    ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                margin: const EdgeInsets.only(right: 7.5),
                padding: const EdgeInsets.all(10.0),
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.2),
                          // spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0,5)
                      ),
                      BoxShadow(
                          color: primaryColor,
                          // spreadRadius: 1,
                          // blurRadius: 1,
                          offset: Offset(7.5,0)
                      ),
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ملاحظات التأخير",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),),
                    Text("نرجو ملاحظه التاخير المتكرر",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: primaryColor
                    ),),
                    Text("العلاقات العامة",style: Theme.of(context).textTheme.bodyText1,),
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),




            ],
          ),
        ),
      ),
    );
  }

}

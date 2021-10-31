import 'package:devlopers_app/Constants/color_const.dart';
import 'package:devlopers_app/Constants/utils.dart';
import 'package:devlopers_app/Widgets/animation/pieChart.dart';
import 'package:devlopers_app/Widgets/common_Widgets/Common_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';

class BodyContent extends StatefulWidget {
  @override
  State<BodyContent> createState() => _BodyContentState();
}

class _BodyContentState extends State<BodyContent> {

  @override
  Widget build(BuildContext context) {
    double length = 15.0;
    Map<String, double> dataMap = {
      "Flutter":13,
      "React": 10,


    };

    List<Color>colorList = [
      Colors.blue,
      Colors.white,


    ];
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "تقييم الأداء الشهري",
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Container(
                height: 15.0,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      height: 10.0,
                      width: mediaWidth(context: context, width: .5),
                      decoration: BoxDecoration(
                          color: iconGrey,
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    Container(
                      height: 10.0,
                      width: mediaWidth(context: context, width: .35),
                      decoration: BoxDecoration(
                          color: redSlider,
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "اجتمعات",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "المزيد",
                        style: Theme.of(context).textTheme.bodyText1,
                      ))
                ],
              ),
              Container(
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 15.0,);
                    },
                    itemCount: 5,
                  itemBuilder: (BuildContext context, int index){
                      if(index == 1){
                        return modelBoard(context: context,color: orangeDialoge);
                      }
                      if(index == 2){
                    return modelBoard(context: context,color: Colors.pink);
                    }
                  return modelBoard(context: context);
                  }
                ),
              ),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 225,
                      width: 190,
                      child: Stack(
                        children: [
                          Positioned(
                              right: 10.0 ,
                              top: 10.0,
                              child: profileImage(radius: 15)),
                          Positioned(
                            left: 10.0 ,
                            top: 20.0,
                            child: PieChart(
                              dataMap: dataMap,
                              animationDuration: Duration(milliseconds: 800),
                              chartLegendSpacing: 25,
                              chartRadius: MediaQuery.of(context).size.width /10,
                              colorList: colorList,
                              initialAngleInDegree: 0,
                              chartType: ChartType.ring,
                              ringStrokeWidth: 5,
                              centerText: "20%",
                              legendOptions: LegendOptions(
                                showLegendsInRow: false,
                                legendPosition: LegendPosition.left,
                                showLegends: false,
                                legendShape: BoxShape.circle,
                                legendTextStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textColor,
                                ),
                              ),
                              chartValuesOptions: ChartValuesOptions(
                                showChartValueBackground: false,
                                showChartValues: false,
                                showChartValuesInPercentage: false,
                                showChartValuesOutside: false,
                                decimalPlaces: 1,
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 80,
                              right: 10,
                              child: Column(
                                children: [
                                  Text("تعديلات تطبيق السائق",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: textColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Row(
                                    children: [
                                      Container(
                                        height: 10.0,
                                        width: 10.0,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: orangeDialoge
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text("تعديل في تطبيق السائق",style: TextStyle(
                                          color: textColor
                                      ),),
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height:225,
                      width: 190,
                      child: Stack(
                        children: [
                          Positioned(
                              right: 10.0 ,
                              top: 10.0,
                              child: profileImage(radius: 15)),
                          Positioned(
                            left: 10.0 ,
                            top: 20.0,
                            child: PieChart(
                              dataMap: dataMap,
                              animationDuration: Duration(milliseconds: 800),
                              chartLegendSpacing: 25,
                              chartRadius: MediaQuery.of(context).size.width /10,
                              colorList: colorList,
                              initialAngleInDegree: 0,
                              chartType: ChartType.ring,
                              ringStrokeWidth: 5,
                              centerText: "50%",
                              legendOptions: LegendOptions(
                                showLegendsInRow: false,
                                legendPosition: LegendPosition.left,
                                showLegends: false,
                                legendShape: BoxShape.circle,
                                legendTextStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textColor,
                                ),
                              ),
                              chartValuesOptions: ChartValuesOptions(
                                showChartValueBackground: false,
                                showChartValues: false,
                                showChartValuesInPercentage: false,
                                showChartValuesOutside: false,
                                decimalPlaces: 1,
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 80,
                              right: 10,
                              child: Column(
                                children: [
                                  Text("تعديلات تطبيق السائق",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: textColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Row(
                                    children: [
                                      Container(
                                        height: 10.0,
                                        width: 10.0,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: orangeDialoge
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text("تعديل في تطبيق السائق",style: TextStyle(
                                          color: textColor
                                      ),),
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

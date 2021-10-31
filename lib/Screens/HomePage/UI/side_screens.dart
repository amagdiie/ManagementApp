// ignore: file_names
import 'package:devlopers_app/Widgets/common_Widgets/main_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



// class SideNavBarScreen extends StatefulWidget {
//   @override
//   State<SideNavBarScreen> createState() => _SideNavBarScreenState();
// }
//
// class _SideNavBarScreenState extends State<SideNavBarScreen> {
//  bool isHoliday2=true;
//  bool isHr2=false;
//  bool isOther2=false;
//   @override
//
//   @override
//   Widget build(BuildContext context) {
// print('holid ${isHoliday2}');
//     return Scaffold(
//       body: Container(
//         color:HexColor('FF041B52'),
//         child: Row(
//           children: [
//             AppContainer(
//               isHoliday: isHoliday2,
//               isHr: isHr2,
//               isOther: isOther2,
//             ),
//            isHoliday2? Expanded(child: Container(
//               color: Colors.white,
//              ))
//                :isHr2?Expanded(child: Container(
//            color: Colors.yellow,
//
//             )):Expanded(child: Container(
//              color: Colors.redAccent,
//
//            ))
//
//              ],
//         ),
//       ),
//     );
//   }
// }



class AppContainer extends StatefulWidget {
  @override
  _AppContainerState createState() => _AppContainerState();



}

class _AppContainerState extends State<AppContainer> {


  bool isHoliday=true;
  bool isHr=false;
  bool isOther=false;

  @override
  Widget build(BuildContext context) {
    double heightMedia=MediaQuery.of(context).size.height;
    double widthMedia=MediaQuery.of(context).size.width;
    print('holiday build ${isHoliday}');
    print('hr build ${isHr}');
    print('other build ${isOther}');
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: widthMedia*.19,
            color:HexColor('FF041B52'),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [

                  Container(
                    child: Expanded(
                        child: Column(

                          children: [
                            SizedBox(
                              height: heightMedia*.06,
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).pop();
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Icon(Icons.arrow_back,color: Colors.white,),
                              ),
                            ),
                            SizedBox(
                              height: heightMedia*.04 ,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  child: Icon(Icons.add,color: Colors.white,)),
                            ),
                            SizedBox(
                              height: heightMedia*.02 ,
                            ),
                            Expanded(
                              flex: 9,
                              child: ListView(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(bottom:heightMedia*.024  ),
                                    child: GestureDetector(
                                      onTap: selectHolidays,
                                      child: Row(
                                        children: [
                                          Expanded(child: SizedBox()),
                                          CircleAvatar(
                                              backgroundColor: Colors.redAccent,
                                              child: Icon(Icons.event_note)),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              height: 20,
                                              width: 20,

                                              child:  isHoliday==true?CustomPaint(
                                                foregroundPainter: LinePainter(
                                                    Colors.white
                                                ),
                                              ):Container(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(bottom:heightMedia*.025 ),
                                    child:GestureDetector(
                                      onTap: selectHr,
                                      child: Row(
                                        children: [
                                          Expanded(child: SizedBox()),
                                          CircleAvatar(child: Icon(Icons.event_note)),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              height: 20,
                                              width: 20,

                                              child:  isHr==true?CustomPaint(
                                                foregroundPainter: LinePainter(
                                                    Colors.white
                                                ),
                                              ):Container(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(bottom:heightMedia*.01 ),
                                    child: GestureDetector(
                                      onTap: selectOthers,
                                      child: Row(
                                        children: [
                                          Expanded(child: SizedBox()),
                                          CircleAvatar(child: Icon(Icons.event_note)),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              height: 20,
                                              width: 20,

                                              child: isOther==true?CustomPaint(
                                                foregroundPainter: LinePainter(
                                                    Colors.white
                                                ),
                                              ):Container(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),

                                ],),
                            ),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.calendar_today,color: Colors.white,),
                                    ),
                                    SizedBox(height: heightMedia*.05,),
                                    Divider(
                                      color: Colors.white,
                                      thickness: 1.2,
                                      endIndent: 10,
                                      indent: 10,),
                                    Expanded(
                                      child: LayoutBuilder(
                                        builder:(context, constraints) =>  Column(
                                          children: [
                                            Expanded(
                                                flex: 1,
                                                child: SizedBox()),
                                            Stack(
                                              children: [
                                                Container(
                                                  color: Colors.transparent,
                                                  height: constraints.maxHeight*.9,
                                                ),

                                                Positioned(
                                                    top: constraints.maxHeight*.12,
                                                    right: constraints.maxWidth*.25,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          border: Border.all(
                                                              color: Colors.white
                                                          )
                                                      ),
                                                      child: CircleAvatar(
                                                          backgroundImage: AssetImage('assets/images/xavi.jpg')
                                                      ),
                                                    )),
                                                Positioned(
                                                    top: constraints.maxHeight*.23,
                                                    right: constraints.maxWidth*.25,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          border: Border.all(
                                                              color: Colors.white
                                                          )
                                                      ),
                                                      child: CircleAvatar(
                                                          backgroundImage: AssetImage('assets/images/puyol.jpg')
                                                      ),
                                                    )),
                                                Positioned(
                                                    top:constraints.maxHeight*.33,
                                                    right: constraints.maxWidth*.25,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          border: Border.all(
                                                              color: Colors.white
                                                          )
                                                      ),
                                                      child: CircleAvatar(
                                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                                      ),
                                                    )),
                                                Positioned(
                                                    top: constraints.maxHeight*.44,
                                                    right: constraints.maxWidth*.25,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          border: Border.all(
                                                              color: Colors.white
                                                          )
                                                      ),
                                                      child: CircleAvatar(
                                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                                      ),
                                                    )),
                                                Positioned(
                                                    top:constraints.maxHeight*.55,
                                                    right: constraints.maxWidth*.25,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          border: Border.all(
                                                              color: Colors.white
                                                          )
                                                      ),
                                                      child: CircleAvatar(

                                                        backgroundColor: Colors.blue,
                                                        child: Icon(Icons.add),
                                                      ),
                                                    )),

                                              ],
                                            ),
                                            Expanded(
                                                flex: 1,
                                                child: SizedBox()),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        )),
                  ),

                ],
              ),
            ),
          ),

          isHoliday? HolidayWidget(heightMedia: heightMedia,widthMedia: widthMedia,)
              :isHr?HrWidget(heightMedia: heightMedia,widthMedia: widthMedia,):
          OtherWidget(heightMedia: heightMedia,widthMedia: widthMedia,)
        ],
      ),
    );
  }

  selectHolidays() {
    setState(() {
      isHoliday=true;
      isHr=false;
      isOther=false;
    });
  }
  selectHr() {
    setState(() {
      isHoliday=false;
      isHr=true;
      isOther=false;

    });
    print('hr is ${isHr}');
    print(' holiday is${isHoliday}');
  }
  selectOthers() {
    setState(() {
      isHoliday=false;
      isHr=false;
      isOther=true;
      print('other is ${isOther}');
      print(' holiday is${isHoliday}');
    });
  }

}


import 'package:devlopers_app/Constants/color_const.dart';
import 'package:devlopers_app/Logic/Cubit/home_cubit.dart';
import 'package:devlopers_app/Screens/HomePage/UI/home_page.dart';
import 'package:devlopers_app/Screens/MissionScreen/UI/mission_screen.dart';
import 'package:devlopers_app/Widgets/animation/clipping.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNaviBarDesign extends StatefulWidget {
  const BottomNaviBarDesign({Key? key}) : super(key: key);

  @override
  State<BottomNaviBarDesign> createState() => _BottomNaviBarDesignState();
}

class _BottomNaviBarDesignState extends State<BottomNaviBarDesign> {
List<Widget> taps = [
  HomePage(),
  MissionScreen(),
  HomePage(),
  MissionScreen(),
];
// TabBarView buildWidget(){
//   return TabBarView(
//     children: [
//       HomePage(),
//       MissionScreen(),
//       HomePage(),
//       MissionScreen(),
//     ],
//   );
// }

  int index =0;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<HomeCubit, HomeState>(
  builder: (context, state) {
    var cubit = HomeCubit.get(context);
    return CustomPaint(
      size: Size(double.infinity,100),
      painter: RPSCustomPainter(),
      child: Container(
        // color: Colors.white.withOpacity(0),
        // alignment: Alignment.bottomCenter,
        height: 100,
        padding: const EdgeInsets.only(top: 15.0),
        child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                  cubit.toggleTabs(home:  true);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage() ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home,color: cubit.tapHomeSelected? primaryColor : iconGrey ,),
                  Text("الرئيسية",style: TextStyle(
                    color:cubit.tapHomeSelected? primaryColor : iconGrey ,
                  ),)
                ],
              )
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MissionScreen() ));

                  cubit.toggleTabs(mission:  true);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(Icons.today_outlined,color: cubit.tapMissionSelected? primaryColor : iconGrey ,),
                    Text("مهماتي",style: TextStyle(
                      color:cubit.tapMissionSelected?primaryColor : iconGrey ,
                    ),)
                  ],
                )
            ),
            SizedBox(
              width: 40.0,
            ),
            InkWell(
                onTap: () {

                  cubit.toggleTabs(talabat:  true);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(Icons.map,color: cubit.tapTalabatSelected? primaryColor : iconGrey ,),
                    Text("طلباتي",style: TextStyle(
                      color:cubit.tapTalabatSelected? primaryColor : iconGrey ,
                    ),)
                  ],
                )
            ),
            InkWell(
                onTap: () {
                  setState(() {

                  });
                  cubit.toggleTabs(account:  true);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(Icons.person,color: cubit.tapAccountSelected? primaryColor : iconGrey ,),
                    Text("حسابي",style: TextStyle(
                      color:cubit.tapAccountSelected? primaryColor : iconGrey ,
                    ),)
                  ],
                )
            ),
          ],
        ),
      ),
    );
  },
);
  }
}


class LinePainter extends CustomPainter{

  Color arrowColor;
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()..style=PaintingStyle.fill
      ..color=arrowColor
      ..strokeWidth=5;
    final path=Path();
    path.moveTo(size.width*1, size.height*0);
    path.lineTo(size.width*1/3, size.height*1/2);
    path.lineTo(size.width*1, size.height*1);
    path.lineTo(size.width*1, size.height*0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>false;

  LinePainter(this.arrowColor);
}
class HolidayWidget extends StatelessWidget {
  const HolidayWidget({
    Key? key,
    required this.heightMedia,
    required this.widthMedia
  }) : super(key: key);

  final double heightMedia;
  final double widthMedia;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SizedBox(
              height: heightMedia*.038,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.edit,color: Colors.blue,),
                RichText(
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    text: 'دفتر ',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: '\n الاجازات',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),

                    ],
                  ),
                )

              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('تمت الموافقه',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text('اجازه مرضيه',
                                  style: TextStyle(
                                    color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('تمت الرفض',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text('اجازه مرضيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('تمت الموافقه',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text('اجازه مرضيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('تمت الرفض',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text('اجازه مرضيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('تمت الموافقه',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text('اجازه مرضيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('تمت الرفض',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text('اجازه مرضيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('تمت الموافقه',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text('اجازه مرضيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('تمت الرفض',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text('اجازه مرضيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class HrWidget extends StatelessWidget {
  const HrWidget({
    Key? key,
    required this.heightMedia,
    required this.widthMedia
  }) : super(key: key);

  final double heightMedia;
  final double widthMedia;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SizedBox(
              height: heightMedia*.038,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.edit,color: Colors.blue,),
                RichText(
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    text: 'خدمات',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: '\n الموارد البشريه',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),

                    ],
                  ),
                )
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   children: [
                //     Text('دفتر',
                //       style: TextStyle(
                //           fontSize: 14,
                //           color: Colors.grey,
                //           fontWeight: FontWeight.normal
                //       ),
                //     ),
                //     Text('الاجازات',
                //     style: TextStyle(
                //       fontSize: 25,
                //       color: Colors.black,
                //       fontWeight: FontWeight.bold
                //     ),
                //     ),
                //   ],
                // )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('جاهز للاستلام',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(' طلب تعريف راتب',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('جاري التجهيز',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(' طلب تعريف راتب',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('جاهز للاستلام',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(' طلب تعريف راتب',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('جاري التجهيز',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(' طلب تعريف راتب',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('جاهز للاستلام',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(' طلب تعريف راتب',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('جاري التجهيز',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(' طلب تعريف راتب',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('جاهز للاستلام',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(' طلب تعريف راتب',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_vert,color: Colors.grey,),

                                Stack(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 50,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/messi.jpg')
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage('assets/images/ronaldinho.jpg')
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 20,
                                    width: 80,

                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right:Radius.circular(20) )
                                    ),
                                    child: Center(
                                      child: Text('جاري التجهيز',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(' طلب تعريف راتب',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class OtherWidget extends StatelessWidget {
  const OtherWidget({
    Key? key,
    required this.heightMedia,
    required this.widthMedia
  }) : super(key: key);

  final double heightMedia;
  final double widthMedia;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SizedBox(
              height: heightMedia*.038,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.edit,color: Colors.blue,),
                RichText(
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    text: 'خدمات',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: '\n الموارد البشريه',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),

                    ],
                  ),
                )
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   children: [
                //     Text('دفتر',
                //       style: TextStyle(
                //           fontSize: 14,
                //           color: Colors.grey,
                //           fontWeight: FontWeight.normal
                //       ),
                //     ),
                //     Text('الاجازات',
                //     style: TextStyle(
                //       fontSize: 25,
                //       color: Colors.black,
                //       fontWeight: FontWeight.bold
                //     ),
                //     ),
                //   ],
                // )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left:5.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.green,
                                              width: 2,
                                              style: BorderStyle.solid)
                                      ),
                                      child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.transparent,
                                          child: Icon(Icons.check,color: Colors.green,))),
                                ),



                                Text(' طلب علاوه وترقيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left:5.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.green,
                                              width: 2,
                                              style: BorderStyle.solid)
                                      ),
                                      child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.transparent,
                                          child: Icon(Icons.check,color: Colors.green,))),
                                ),



                                Text(' طلب علاوه وترقيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left:5.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.green,
                                              width: 2,
                                              style: BorderStyle.solid)
                                      ),
                                      child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.transparent,
                                          child: Icon(Icons.check,color: Colors.green,))),
                                ),



                                Text('طلب علاوه وترقيه',
                                  style: TextStyle(
                                    color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left:5.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.green,
                                              width: 2,
                                              style: BorderStyle.solid)
                                      ),
                                      child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.transparent,
                                          child: Icon(Icons.check,color: Colors.green,))),
                                ),



                                Text('طلب علاوه وترقيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left:5.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.green,
                                              width: 2,
                                              style: BorderStyle.solid)
                                      ),
                                      child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.transparent,
                                          child: Icon(Icons.check,color: Colors.green,))),
                                ),



                                Text('طلب علاوه وترقيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left:5.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.green,
                                              width: 2,
                                              style: BorderStyle.solid)
                                      ),
                                      child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.transparent,
                                          child: Icon(Icons.check,color: Colors.green,))),
                                ),



                                Text('طلب علاوه وترقيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left:5.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.green,
                                              width: 2,
                                              style: BorderStyle.solid)
                                      ),
                                      child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.transparent,
                                          child: Icon(Icons.check,color: Colors.green,))),
                                ),



                                Text('طلب علاوه وترقيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left:5.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.green,
                                              width: 2,
                                              style: BorderStyle.solid)
                                      ),
                                      child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.transparent,
                                          child: Icon(Icons.check,color: Colors.green,))),
                                ),



                                Text('طلب علاوه وترقيه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    // fontSize: (widthMedia-widthMedia*.19)<320?10:15
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text('${DateTime.now().hour}:${DateTime.now().minute}',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

import 'package:devlopers_app/Screens/MissionScreen/UI/BodyContent/body_content.dart';
import 'package:devlopers_app/Widgets/common_Widgets/Common_components.dart';
import 'package:devlopers_app/Widgets/common_Widgets/main_widgets.dart';
import 'package:flutter/material.dart';

class MissionScreen extends StatelessWidget {
  const MissionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: Colors.white,
                    width: 5.0
                )
            ),
            child: FloatingActionButton(
              child: Container(
                width: 60,
                height: 60,
                child: Icon(
                  Icons.add,
                  size: 40,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [Colors.white.withOpacity(.5),Color(0xff3B35DC),Color(0xff3B35DC)])
                ),
              ),
              onPressed: () {},
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNaviBarDesign(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("مهـــام مسندة لك ",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black,
                      ),),
                      Text("عدد المهام حتي الأن : 15",style: Theme.of(context).textTheme.bodyText1,),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  profileImage(),
                ],
              ),
            ),
          ),
        ),
        body: BodyContent(),
      ),
    );
  }
}

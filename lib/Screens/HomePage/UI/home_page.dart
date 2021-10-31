import 'package:devlopers_app/Constants/color_const.dart';
import 'package:devlopers_app/Screens/HomePage/UI/side_screens.dart';
import 'package:devlopers_app/Widgets/animation/animation.dart';
import 'package:devlopers_app/Widgets/animation/clipping.dart';
import 'package:devlopers_app/Widgets/common_Widgets/Common_components.dart';
import 'package:devlopers_app/Widgets/common_Widgets/main_widgets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'BodyContent/body_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Color(0xffEDEDF2),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.search,color:iconGrey,)),
                    Spacer(),
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("احمد مجدي ",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black,
                      ),),
                      Text("مطور تطبيقات الأندرويد",style: Theme.of(context).textTheme.bodyText1,),
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
          bottomNavigationBar: BottomNaviBarDesign(),
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AppContainer(),));
                },
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        ),
      ),
    );
  }

}

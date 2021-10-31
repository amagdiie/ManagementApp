import 'package:cached_network_image/cached_network_image.dart';
import 'package:devlopers_app/Constants/color_const.dart';
import 'package:devlopers_app/Constants/utils.dart';
import 'package:devlopers_app/Widgets/animation/animation.dart';
import 'package:flutter/material.dart';

Widget profileImage({double radius = 30.0}) {
  return CachedNetworkImage(
      imageUrl: "https://thumbs.dreamstime.com/b/profile-picture-vector-perfect-social-media-other-web-use-125320637.jpg",
      placeholder: (context, url) => buildProfileShimmer(context,radius: radius),
      errorWidget: (context, url, error) => Icon(Icons.error),
      imageBuilder: (context,imageProvider){
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: primaryColor)
          ),
          child: CircleAvatar(
            backgroundImage: imageProvider,
            radius: radius,
          ),
        );
      }

  );
}


Widget modelBoard({required BuildContext context,Color color = Colors.orangeAccent}) {
  return Expanded(
    child: Container(
      height: 400,
      width: 200,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          Text("2021/01/01",style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Colors.white
          ),),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      child: profileImage(radius: 15)),
                  Positioned(
                      left: 5,
                      child: profileImage(radius: 15)),
                  Positioned(
                      right: 5,
                      child: profileImage(radius: 15)),

                ],
              ),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Text("تفاصيــل الأجـتمـــاع",style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: textColor,
          ),),
          SizedBox(
            height: 5.0,
          ),
          Text("• مناقشات عامة"),
          Text("• مناقشات الموزانة"),
          Text("• مناقشات الأجازات"),
          SizedBox(
            height: 5.0,
          ),
          Text("إجتمـــاع سنوي",style: Theme.of(context).textTheme.headline6!.copyWith(
            color: Colors.white,
          ),),
          Text("مكان الأجتماع : قاعة الأجتماعات الساعة التاسعة صباحا",style: Theme.of(context).textTheme.caption,)

        ],
      ),
    ),
  );
}

Container driverDialoge(BuildContext context, {
  required String text ,
  Color color = Colors.red,
}) {
  return Container(
    height: 250,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0)
    ),
    // width: double.infinity,
    child: Column(
      children: [
        Expanded(child: Container(
          // width: double.infinity,
          width: 200,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(25.0)
            ),
            color: color ,
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 15.0,
                  left: 10.0,
                  child: Container(
                    width: 75,
                    height:40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Text("100%",style: TextStyle(
                        color: textColor
                    ),),
                  )),
              Positioned(
                right: 15.0,
                top: 15.0,
                  child: Container(
                child: IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_rounded,color: Colors.white,)),
              ))
            ],
          ),
        )),
        Expanded(child: Container(
          // width: double.infinity,
          width: 200,
          // height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  // spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0,5)
              )
            ],
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25.0)
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                  right: 10.0,
                  top: 10.0,
                  child: Text("تعديلات تطبيق السائق",style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: textColor
                  ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ) ),
              Positioned(
                  left: 15.0,
                  bottom: 20.0,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.insert_drive_file,color: iconGrey,size: 15,),
                          Text("انتهت",style: TextStyle(
                              color: iconGrey,
                              fontSize: 8
                          ),)
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        children: [
                          Icon(Icons.message,color: iconGrey,size: 15,),
                          Text("إبلاغ عن مشكلة",style: TextStyle(
                              color: iconGrey,
                              fontSize: 8
                          ),)
                        ],
                      ),

                    ],
                  ))

            ],
          ),
        )),
      ],
    ),
  );
}

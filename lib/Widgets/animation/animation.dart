import 'package:devlopers_app/Constants/color_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget buildProfileShimmer(BuildContext context,{double radius = 30}) {
  return
    Container(
      child: Shimmer.fromColors(
          child: Row(
            children: [
              CircleAvatar(
                radius: radius,
                backgroundColor: spacesGrey,
              ),

            ],
          ),

          baseColor: Color(0xffCCCCCC),
          highlightColor: Colors.white),
    );
}

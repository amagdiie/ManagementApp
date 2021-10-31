import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Constants/color_const.dart';
import 'Logic/Cubit/home_cubit.dart';
import 'Screens/HomePage/UI/home_page.dart';
import 'Widgets/animation/pieChart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider(create: (context)=> HomeCubit())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xffEDEDF2),
          textTheme: const TextTheme(
            headline6: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            bodyText1: TextStyle(
             color: iconGrey,
            ),
            bodyText2: TextStyle(
             color: Colors.white,
            ),
            caption: TextStyle(
             color: Colors.white,
              fontSize: 8.0
            ),
          )
        ),
        home: HomePage(),
      ),
    );
  }
}
